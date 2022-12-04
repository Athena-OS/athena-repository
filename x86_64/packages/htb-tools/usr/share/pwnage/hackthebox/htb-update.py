import json
import subprocess
import re
import requests # to get image from the web
import shutil # to save it locally
import os
import base64, zlib
import argparse

class ParseDataArgs(argparse.Action):
    def __call__(self, parser, namespace, values, option_string=None):
        setattr(namespace, self.dest, dict())
        d = dict(x.split("=") for x in values.split("&"))
        for key, value in d.items():
            getattr(namespace, self.dest)[key] = value

def print_banner():
    #cat banner.txt | gzip | base64
    # In Python, the Base64 encoded string must come from an echo -ne. Without -e argument, the color patterns are not expanded.
    encoded_data = "H4sIAAAAAAAAA+1ayw4CIQy8+wteuGgMIWC8GT/Fb9j/v7ruJgor1aLAToVeHBOj05lueVil8saG97Ht9Xg5n4bD+DpwsPPf5OFhUjnUxL/lRyrXGjbfSYhAncJ2DLjSdUkaWwTKIX3rBQIj0n2OxnCPvLGRwKO5FNcXFoEfB6uY1I/Aaxw2IjcCMbJGPsbdAegUQrkh2t1nVZ+hEQjjSZicAUdrBKLtWZPTSriOL8dyh93GfWzmZSdYhhB4peIyHadMeRhZLdI744gpDT3zzXZQKFoIMHsTDha0MHg9TU4hiGoNNfFimRLmqEW8tvCxjmwB5Wlc7Okhdspdoa5QV6gr1BVqU6HVDkSxLCX/Trryu7VocHB1axTescyZ0LAp4PbAup5LCOlS2J93ePlbGPpyQpX2DvrSazmnEh9NQWBKYVumvCzemJbbR6yhZ4ngWuU/YU2p/n78r2lPYiNETN2mQMgheB7J4bOEpNhVYZhfdgPFVDw7WCsAAA=="
    banner = zlib.decompress(base64.b64decode(encoded_data), 16 + zlib.MAX_WBITS).decode('utf-8')
    print(f"{banner}")

def help():
   # Display Help
   print_banner()
   print("HTB Update helps you to connect your machine to the Hack The Box platform.\n")

   print("List of arguments:\n")
   
   print("-d, --delete          delete the Hack The Box API Token from the keyring")
   print("-h, --help            show this help message and exit")
   print("-r, --reset           reset the Hack The Box API Token")

def arg_parse():
    parser = argparse.ArgumentParser(add_help=False)
    parser.add_argument("-d", "--delete", action='store_true', help="delete the Hack The Box API Token from the key vault")
    parser.add_argument("-h", "--help", action='store_true', help="show this help message and exit")
    parser.add_argument("-r", "--reset", action='store_true', help="reset the Hack The Box API Token")

    args = parser.parse_args()
    return args

args = arg_parse()

if args.help:
    help()
    exit()

if args.delete:
    print("Deleting the stored Hack The Box API Key...")
    subprocess.call("secret-tool clear htb-api user-htb-api",shell=True)
    print("Hack The Box API Key successfully deleted.")
    exit()

#### VARIABLE SETTING ####
input_config = os.path.expandvars("$HOME/.fly.txt")
output_config = os.path.expandvars("$HOME/.flyout.txt")
machine_config = os.path.expandvars("$HOME/.machine.json")
appkey = subprocess.getoutput("secret-tool lookup htb-api user-htb-api")
fly_new = ""

if args.reset:
    print("Resetting the Hack The Box API Key...")
    subprocess.call("secret-tool clear htb-api user-htb-api",shell=True)
    print("Please, insert your App Token after the 'Password' label, it will be stored in a secure keyring.")
    subprocess.call("secret-tool store --label='HTB API key' htb-api user-htb-api",shell=True)
    appkey = subprocess.getoutput("secret-tool lookup htb-api user-htb-api")

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
