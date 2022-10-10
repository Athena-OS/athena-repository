import json
import subprocess
import re
import requests # to get image from the web
import shutil # to save it locally
import os

#### VARIABLE SETTING ####
input_config = os.path.expandvars("$HOME/.fly.txt")
output_config = os.path.expandvars("$HOME/.flyout.txt")
machine_config = os.path.expandvars("$HOME/.machine.json")
appkey = subprocess.getoutput("secret-tool lookup htb-api user-htb-api")
fly_new = ""


if not appkey:
    print("Hack The Box API Key not set. Please, insert your App Token after the 'Password' label, it will be stored in a secure keyring.")
    subprocess.call("secret-tool store --label='HTB API key' htb-api user-htb-api",shell=True)
    appkey = subprocess.getoutput("secret-tool lookup htb-api user-htb-api")    

htb_user=subprocess.getoutput("curl -s --location --request GET https://www.hackthebox.com/api/v4/user/info -H \"Authorization: Bearer "+appkey+"\" | jq '.info.name'")
htb_user=htb_user.replace('"','')

if "parse error: Invalid numeric literal" in htb_user:
    print("Error. Maybe your API key is incorrect or expired. Renew your API key and rerun 'htb-update', or insert the new API key in the 'Password' field.")
    subprocess.call("secret-tool store --label='HTB API key' htb-api user-htb-api",shell=True)
    appkey = subprocess.getoutput("secret-tool lookup htb-api user-htb-api")

htb_user=subprocess.getoutput("curl -s --location --request GET https://www.hackthebox.com/api/v4/user/info -H \"Authorization: Bearer "+appkey+"\" | jq '.info.name'")
htb_user=htb_user.replace('"','')

if "parse error: Invalid numeric literal" in htb_user:
    print("Error. Maybe your API key is incorrect or expired. Renew your API key and rerun 'htb-update', or insert the new API key in the 'Password' field. Closing...")
    exit()

subprocess.call("mkdir -p $HOME/.local/share/icons/hackthebox/avatar",shell=True)

subprocess.call("curl -s --location --request GET https://www.hackthebox.com/api/v4/machine/list -H \"Authorization: Bearer "+appkey+"\" | jq > "+machine_config,shell=True)


with open(machine_config) as json_file:
    data = json.load(json_file)

subprocess.call("rm -rf "+machine_config,shell=True)

for machine in data["info"]:
    machine_id=str(machine["id"])
    machine_name=machine["name"]
    machine_avatar=machine["avatar"]
    machine_ip=machine["ip"]
    machine_points=str(machine["points"])

    avatar_url = "https://www.hackthebox.com"+machine_avatar
    avatar_filename = os.path.expandvars("$HOME/.local/share/icons/hackthebox/avatar/"+machine_name+".png")

    shell=os.path.expandvars('$SHELL')
    
    if "bash" in shell:
        machine_command = 'kitty /usr/bin/bash -c \\\\\\\\\\\"htb-spawn '+machine_id+' '+appkey+' '+machine_name+' '+machine_ip+' '+machine_points+' '+htb_user+';bash\\\\\\\\\\\"'
    elif "fish" in shell:
        machine_command = 'kitty /usr/bin/fish -c \\\\\\\\\\\"htb-spawn '+machine_id+' '+appkey+' '+machine_name+' '+machine_ip+' '+machine_points+' '+htb_user+';fish\\\\\\\\\\\"'
    elif "zsh" in shell:
        machine_command = 'kitty /usr/bin/zsh -c \\\\\\\\\\\"htb-spawn '+machine_id+' '+appkey+' '+machine_name+' '+machine_ip+' '+machine_points+' '+htb_user+';zsh\\\\\\\\\\\"'
    else:
        machine_command = 'kitty /usr/bin/bash -c \\\\\\\\\\\"htb-spawn '+machine_id+' '+appkey+' '+machine_name+' '+machine_ip+' '+machine_points+' '+htb_user+';bash\\\\\\\\\\\"'

    # Open the url image, set stream to True, this will return the stream content.
    r = requests.get(avatar_url, stream = True)

    # Check if the image was retrieved successfully
    if r.status_code == 200:
        # Set decode_content value to True, otherwise the downloaded image file's size will be zero.
        r.raw.decode_content = True
    
        # Open a local file with wb ( write binary ) permission.
        with open(avatar_filename,'wb') as f:
            shutil.copyfileobj(r.raw, f)

        #print('Image successfully Downloaded: ',avatar_filename)
        subprocess.call("convert "+avatar_filename+" -resize 200x "+avatar_filename,shell=True)
    else:
        print('Image Couldn\'t be retreived')


    fly_object = '{\\"name\\":\\"'+machine_name+'\\",\\"icon\\":\\"'+avatar_filename+'\\",\\"type\\":\\"Command\\",\\"data\\":{\\"command\\":\\"'+machine_command+'\\"},\\"angle\\":-1},'
    fly_new = fly_new + fly_object


fly_new = "[" + fly_new[:-1] + "]"

subprocess.call("dconf dump /org/gnome/shell/extensions/flypie/ > "+input_config,shell=True)
with open(input_config,'r') as fly_file:
    contents = fly_file.read()
subprocess.call("rm -rf "+input_config,shell=True)

#NOTE: if you change the icon of Available Machine, REMEMBER to change the path here below
fly_out = re.sub(r'(?<=\{\\"name\\":\\"Available Machines\\",\\"icon\\":\\"\/usr\/share\/icons\/pwnage\/htb-machines.png\\",\\"type\\":\\"CustomMenu\\",\\"children\\":)(.*?)(?=,\\"angle\\":-1,\\"data\\":\{\}\})', fly_new, contents)

with open(output_config, 'w') as f:
    f.write(fly_out)

subprocess.call("dconf load /org/gnome/shell/extensions/flypie/ < "+output_config,shell=True)
subprocess.call("rm -rf "+output_config,shell=True)
