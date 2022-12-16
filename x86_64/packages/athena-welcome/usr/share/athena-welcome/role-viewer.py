import gi

gi.require_version("Gtk", "3.0")
from gi.repository import Gtk

# list of tuples for each variable, containing the environment variable name, its path, and the security category
variable_list = [
("Black Hat Omniscient", "blackarch", "All the hacking weapons in your machine."),
("Bug Bounty Hunter", "nmap", "Utility for network discovery and security auditing."),
("Bug Bounty Hunter", "sublist3r", "A Fast subdomains enumeration tool for penetration testers."),
("Bug Bounty Hunter", "amass", "In-depth subdomain enumeration written in Go."),
("Bug Bounty Hunter", "massdns", "A high-performance DNS stub resolver in C."),
("Bug Bounty Hunter", "findomain", "The fastest and cross-platform subdomain enumerator, do not waste your time."),
("Bug Bounty Hunter", "theharvester", "Python tool for gathering e-mail accounts and subdomain names from different public sources."),
("Bug Bounty Hunter", "chaos-client", "Go client to communicate with Chaos dataset API."),
("Bug Bounty Hunter", "domained", "Multi Tool Subdomain Enumeration."),
("Bug Bounty Hunter", "shuffledns", "A wrapper around massdns written in GO."),
("Bug Bounty Hunter", "altdns", "Generates permutations, alterations and mutations of subdomains and then resolves them."),
("Bug Bounty Hunter", "dns-parallel-prober", "PoC for an adaptive parallelised DNS prober."),
("Bug Bounty Hunter", "dnscan", "A python wordlist-based DNS subdomain scanner."),
("Bug Bounty Hunter", "knock", "Subdomain scanner."),
("Bug Bounty Hunter", "hakrevdns", "Small, fast tool for performing reverse DNS lookups en masse."),
("Bug Bounty Hunter", "dnsx", "Fast and multi-purpose DNS toolkit allow to run multiple DNS queries of your choice with a list of user-supplied resolvers."),
("Bug Bounty Hunter", "subfinder", "Modular subdomain discovery tool that can discover massive amounts of valid subdomains for any target."),
("Bug Bounty Hunter", "assetfinder", "Find domains and subdomains potentially related to a given domain."),
("Bug Bounty Hunter", "vhostscan", "A virtual host scanner that can be used with pivot tools, detect catch-all scenarios, aliases and dynamic default pages."),
("Bug Bounty Hunter", "masscan", "TCP port scanner, spews SYN packets asynchronously, scanning entire Internet in under 5 minutes."),
("Bug Bounty Hunter", "rustscan", "A modern port scanner."),
("Bug Bounty Hunter", "naabu", "A fast port scanner written in go with focus on reliability and simplicity."),
("Bug Bounty Hunter", "sandmap", "Simple CLI with the ability to run pure Nmap engine, 31 modules with 459 scan profiles."),
("Bug Bounty Hunter", "eyewitness", "Designed to take screenshots of websites, provide some server header info, and identify default credentials if possible."),
("Bug Bounty Hunter", "eyeballer", "Convolutional neural network for analyzing pentest screenshots."),
("Bug Bounty Hunter", "scrying", "Collect RDP, web, and VNC screenshots smartly."),
("Bug Bounty Hunter", "depix", "A tool for recovering passwords from pixelized screenshots."),
("Bug Bounty Hunter", "httpscreenshot", "A tool for grabbing screenshots and HTML of large numbers of websites."),
("Bug Bounty Hunter", "aquatone", "A Tool for Domain Flyovers."),
("Bug Bounty Hunter", "gowitness", "A golang, web screenshot utility using Chrome Headless."),
("Bug Bounty Hunter", "webanalyze", "Port of Wappalyzer (uncovers technologies used on websites) in go to automate scanning."),
("Bug Bounty Hunter", "whatweb", "Next generation web scanner that identifies what websites are running."),
("Bug Bounty Hunter", "httpx", "A fast and multi-purpose HTTP toolkit allow to run multiple probers using retryablehttp library."),
("Bug Bounty Hunter", "feroxbuster", "A fast, simple, recursive content discovery tool written in Rust."),
("Bug Bounty Hunter", "dirsearch", "HTTP(S) directory/file brute forcer."),
("Bug Bounty Hunter", "filebuster", "An extremely fast and flexible web fuzzer."),
("Bug Bounty Hunter", "dirstalk", "Modern alternative to dirbuster/dirb."),
("Bug Bounty Hunter", "dirbuster-ng", "C CLI implementation of the Java dirbuster tool."),
("Bug Bounty Hunter", "gospider", "Fast web spider written in Go."),
("Bug Bounty Hunter", "hakrawler", "Simple, fast web crawler designed for easy, quick discovery of endpoints and assets within a web application."),
("Bug Bounty Hunter", "linkfinder", "Discovers endpoint and their parameters in JavaScript files."),
("Bug Bounty Hunter", "waybackurls", "Fetch all the URLs that the Wayback Machine knows about for a domain."),
("Bug Bounty Hunter", "gau", "Fetch known URLs from AlienVault's Open Threat Exchange, the Wayback Machine, and Common Crawl."),
("Bug Bounty Hunter", "parameth", "This tool can be used to brute discover GET and POST parameters."),
("Bug Bounty Hunter", "parampampam", "This tool for brute discover GET and POST parameters."),
("Bug Bounty Hunter", "arjun", "HTTP parameter discovery suite."),
("Bug Bounty Hunter", "commix", "Automated All-in-One OS Command Injection and Exploitation Tool."),
("Bug Bounty Hunter", "corsy", "CORS Misconfiguration Scanner."),
("Bug Bounty Hunter", "corstest", "A simple CORS misconfigurations checker."),
("Bug Bounty Hunter", "crlfuzz", "A fast tool to scan CRLF vulnerability written in Go."),
("Bug Bounty Hunter", "injectus", "CRLF and open redirect fuzzer."),
("Bug Bounty Hunter", "xsrfprobe", "The Prime Cross Site Request Forgery Audit and Exploitation Toolkit."),
("Bug Bounty Hunter", "dotdotpwn", "The Transversal Directory Fuzzer."),
("Bug Bounty Hunter", "fdsploit", "A File Inclusion & Directory Traversal fuzzing, enumeration & exploitation tool."),
("Bug Bounty Hunter", "liffy", "A Local File Inclusion Exploitation tool."),
("Bug Bounty Hunter", "lfisuite", "Totally Automatic LFI Exploiter (+ Reverse Shell) and Scanner."),
("Bug Bounty Hunter", "graphqlmap", "Scripting engine to interact with a graphql endpoint for pentesting purposes."),
("Bug Bounty Hunter", "ysoserial", "A proof-of-concept tool for generating payloads that exploit unsafe Java object deserialization."),
("Bug Bounty Hunter", "phpggc", "A library of PHP unserialize() payloads along with a tool to generate them, from command line or programmatically."),
("Bug Bounty Hunter", "smuggler", "An HTTP Request Smuggling / Desync testing tool written in Python 3."),
("Bug Bounty Hunter", "h2csmuggler", "HTTP Request Smuggling over HTTP/2 Cleartext (h2c)."),
("Bug Bounty Hunter", "ssrfmap", "Automatic SSRF fuzzer and exploitation tool."),
("Bug Bounty Hunter", "gopherus", "Tool generates gopher link for exploiting SSRF and gaining RCE in various servers."),
("Bug Bounty Hunter", "ssrf-sheriff", "A simple SSRF-testing sheriff written in Go."),
("Bug Bounty Hunter", "extended-ssrf-search", "Smart ssrf scanner using different methods like parameter brute forcing in post and get."),
("Bug Bounty Hunter", "lorsrf", "Find the parameters that can be used to find SSRF or Out-of-band resource load."),
("Bug Bounty Hunter", "rbndr", "Simple DNS Rebinding Service."),
("Bug Bounty Hunter", "nosqli", "NoSQL scanner and injector."),
("Bug Bounty Hunter", "xsstrike", "An advanced XSS detection and exploitation suite."),
("Bug Bounty Hunter", "xsscrapy", "XSS spider - 66/66 wavsep XSS detected."),
("Bug Bounty Hunter", "dalfox", "Parameter Analysis and XSS Scanning tool."),
("Bug Bounty Hunter", "xsser", "A penetration testing tool for detecting and exploiting XSS vulnerabilites."),
("Bug Bounty Hunter", "xspear", "Powerful XSS Scanning and Parameter analysis tool&gem."),
("Bug Bounty Hunter", "docem", "Uility to embed XXE and XSS payloads in docx,odt,pptx,etc (OXML_XEE on steroids)."),
("Bug Bounty Hunter", "brutexss", "Cross-Site Scripting Bruteforcer."),
("Bug Bounty Hunter", "xsscon", "Simple XSS Scanner tool."),
("Bug Bounty Hunter", "xxeserv", "A mini webserver with FTP support for XXE payloads."),
("Bug Bounty Hunter", "xxexploiter", "It generates the XML payloads, and automatically starts a server to serve the needed DTD's or to do data exfiltration."),
("Bug Bounty Hunter", "xxeinjector", "Tool for automatic exploitation of XXE vulnerability using direct and different out of band methods."),
("Bug Bounty Hunter", "changeme", "A default credential scanner."),
("Bug Bounty Hunter", "brutex", "Automatically brute force all services running on a target."),
("Bug Bounty Hunter", "patator", "A multi-purpose bruteforcer."),
("Bug Bounty Hunter", "gitleaks", "Audit Git repos for secrets and keys."),
("Bug Bounty Hunter", "trufflehog", "Searches through git repositories for high entropy strings, digging deep into commit history."),
("Bug Bounty Hunter", "gitgraber", "Monitor GitHub to search and find sensitive data in real time for different online services."),
("Bug Bounty Hunter", "gitrob", "Reconnaissance tool for GitHub organizations."),
("Bug Bounty Hunter", "gitminer", "Tool for advanced mining for content on Github."),
("Bug Bounty Hunter", "shhgit", "Find committed secrets and sensitive files across GitHub, Gists, GitLab and BitBucket or your local repositories in real time."),
("Bug Bounty Hunter", "detect-secrets", "An enterprise friendly way of detecting and preventing secrets in code."),
("Bug Bounty Hunter", "whispers", "Identify hardcoded secrets in static structured text."),
("Bug Bounty Hunter", "gittools", "A repository with 3 tools for pwn'ing websites with .git repositories available'."),
("Bug Bounty Hunter", "git-dumper", "A tool to dump a git repository from a website."),
("Bug Bounty Hunter", "dvcs-ripper", "Rip web accessible (distributed) version control systems: SVN/GIT/BZR/CVS/HG."),
("Bug Bounty Hunter", "s3scanner", "Scan for open S3 buckets and dump the contents."),
("Bug Bounty Hunter", "awsbucketdump", "A tool to quickly enumerate AWS S3 buckets to look for loot."),
("Bug Bounty Hunter", "cmsmap", "A python open source Content Management System scanner that automates the process of detecting security flaws of the most popular CMSs."),
("Bug Bounty Hunter", "joomscan", "Detects file inclusion, sql injection, command execution vulnerabilities of a target Joomla! web site."),
("Bug Bounty Hunter", "pyfiscan", "Free web-application vulnerability and version scanner."),
("Bug Bounty Hunter", "jwt-hack", "A tool for hacking / security testing to JWT."),
("Bug Bounty Hunter", "jwt-cracker", "JWT brute force cracker written in C."),
("Bug Bounty Hunter", "wafw00f", "Identify and fingerprint Web Application Firewall (WAF) products protecting a website."),
("Bug Bounty Hunter", "nikto", "A web server scanner which performs comprehensive tests against web servers for multiple items"),
("Bug Bounty Hunter", "wpscan", "Black box WordPress vulnerability scanner."),
("Bug Bounty Hunter", "burpsuite", "An integrated platform for attacking web applications (community edition) + SHELLING plugin."),
("Bug Bounty Hunter", "dirb", "A web content scanner, brute forceing for hidden files."),
("Bug Bounty Hunter", "ffuf", "Fast web fuzzer written in Go."),
("Bug Bounty Hunter", "wfuzz", "Utility to bruteforce web applications to find their not linked resources."),
("Bug Bounty Hunter", "sqlmap", "Automatic SQL injection and database takeover tool."),
("Bug Bounty Hunter", "nosqlmap", "Automated Mongo database and NoSQL web application exploitation tool"),
("Bug Bounty Hunter", "sleuthql", "Python3 Burp History parsing tool to discover potential SQL injection points. To be used in tandem with SQLmap."),
("Bug Bounty Hunter", "subjack", "Subdomain Takeover tool written in Go."),
("Bug Bounty Hunter", "subover", "A Powerful Subdomain Takeover Tool."),
("Bug Bounty Hunter", "second-order", "Second-order subdomain takeover scanner."),
("Bug Bounty Hunter", "takeover", "Sub-Domain TakeOver Vulnerability Scanner."),
("Bug Bounty Hunter", "nuclei", "A fast tool for configurable targeted scanning based on templates offering massive extensibility and ease of use."),
("Bug Bounty Hunter", "sn1per", "Automated Pentest Recon Scanner."),
("Bug Bounty Hunter", "arachni", "A feature-full, modular, high-performance Ruby framework aimed towards helping penetration testers and administrators evaluate the security of web applications."),
("Bug Bounty Hunter", "jaeles", "The Swiss Army knife for automated Web Application Testing."),
("Bug Bounty Hunter", "getsploit", "Command line utility for searching and downloading exploits."),
("Bug Bounty Hunter", "findsploit", "Find exploits in local and online databases instantly."),
("Bug Bounty Hunter", "jsonbee", "A ready to use JSONP endpoints/payloads to help bypass content security policy (CSP)."),
("Bug Bounty Hunter", "hydra", "Very fast network logon cracker which support many different services."),
("Bug Bounty Hunter", "cewl", "A custom word list generator."),
("Bug Bounty Hunter", "crunch", "A wordlist generator for all combinations/permutations of a given character set."),
("Bug Bounty Hunter", "exploitdb", "Offensive Security’s Exploit Database Archive."),
("Bug Bounty Hunter", "metasploit", "Advanced open-source platform for developing, testing, and using exploit code."),
("Bug Bounty Hunter", "netcat", "Command-line utility which reads and writes data across network connections, using the TCP or UDP protocols."),
("Bug Bounty Hunter", "gobuster", "Directory/file & DNS busting tool written in Go."),
("Bug Bounty Hunter", "commentor", "Extract all comments from the specified URL resource."),
("Bug Bounty Hunter", "osert", "Markdown Templates for Offensive Security exam reports."),
("Bug Bounty Hunter", "wordlister", "A simple wordlist generator and mangler written in python."),
("Bug Bounty Hunter", "pwncat-cs", "A fancy reverse and bind shell handler."),
("Cracker Specialist", "blackarch-cracker", "Packages used for cracking cryptography functions. Details: https://blackarch.org/cracker.html"),
("Cracker Specialist", "blackarch-crypto", "Packages related to the cryptography. Details: https://blackarch.org/crypto.html"),
("Enthusiast Student", "legion", "Automatic Enumeration Tool based in Open Source tools."),
("Enthusiast Student", "dmitry", "Deepmagic Information Gathering Tool."),
("Enthusiast Student", "nmap", "Utility for network discovery and security auditing."),
("Enthusiast Student", "spiderfoot", "The Open Source Footprinting Tool."),
("Enthusiast Student", "theharvester", "Python tool for gathering e-mail accounts and subdomain names from different public sources."),
("Enthusiast Student", "enum4linux", "A tool for enumerating information from Windows and Samba systems."),
("Enthusiast Student", "wafw00f", "Identify and fingerprint Web Application Firewall (WAF) products protecting a website."),
("Enthusiast Student", "fierce", "A DNS reconnaissance tool for locating non-contiguous IP space."),
("Enthusiast Student", "nikto", "A web server scanner which performs comprehensive tests against web servers for multiple items"),
("Enthusiast Student", "unix-privesc-check", "Tries to find misconfigurations that could allow local unprivilged users to escalate privileges to other users or to access local apps."),
("Enthusiast Student", "wpscan", "Black box WordPress vulnerability scanner."),
("Enthusiast Student", "burpsuite", "An integrated platform for attacking web applications (community edition) + SHELLING plugin."),
("Enthusiast Student", "dirb", "A web content scanner, brute forceing for hidden files."),
("Enthusiast Student", "dirbuster", "An application designed to brute force directories and files names on web/application servers"),
("Enthusiast Student", "ffuf", "Fast web fuzzer written in Go."),
("Enthusiast Student", "wfuzz", "Utility to bruteforce web applications to find their not linked resources."),
("Enthusiast Student", "sqlmap", "Automatic SQL injection and database takeover tool."),
("Enthusiast Student", "john", "John the Ripper password cracker"),
("Enthusiast Student", "hashcat", "Multithreaded advanced password recovery utility"),
("Enthusiast Student", "hydra", "Very fast network logon cracker which support many different services."),
("Enthusiast Student", "cewl", "A custom word list generator."),
("Enthusiast Student", "crunch", "A wordlist generator for all combinations/permutations of a given character set."),
("Enthusiast Student", "rsmangler", "Wordlist mangler."),
("Enthusiast Student", "medusa", "Speedy, massively parallel and modular login brute-forcer for network."),
("Enthusiast Student", "mitmproxy", "SSL-capable man-in-the-middle HTTP proxy."),
("Enthusiast Student", "responder", "A LLMNR and NBT-NS poisoner, with built-in HTTP/SMB/MSSQL/FTP/LDAP rogue authentication server supporting NTLMv1/NTLMv2/LMv2 (multirelay version)."),
("Enthusiast Student", "wireshark-qt", "Network traffic and protocol analyzer/sniffer - Qt GUI."),
("Enthusiast Student", "kismet", "802.11 layer2 wireless network detector, sniffer, and intrusion detection system."),
("Enthusiast Student", "reaver", "Brute force attack against Wifi Protected Setup."),
("Enthusiast Student", "wifite", "Tool to attack multiple WEP and WPA encrypted networks at the same time."),
("Enthusiast Student", "fern-wifi-cracker", "WEP, WPA wifi cracker for wireless penetration testing."),
("Enthusiast Student", "aircrack-ng", "Key cracker for the 802.11 WEP and WPA-PSK protocols."),
("Enthusiast Student", "spooftooph", "Designed to automate spoofing or cloning Bluetooth device Name, Class, and Address. Cloning this information effectively allows Bluetooth device to hide in plain sight."),
("Enthusiast Student", "nasm", "Netwide Assembler."),
("Enthusiast Student", "radare2", "Open-source tools to disasm, debug, analyze and manipulate binary files."),
("Enthusiast Student", "ghidra", "Software reverse engineering framework."),
("Enthusiast Student", "edb", "A cross platform AArch32/x86/x86 debugger."),
("Enthusiast Student", "exploitdb", "Offensive Security’s Exploit Database Archive."),
("Enthusiast Student", "metasploit", "Advanced open-source platform for developing, testing, and using exploit code."),
("Enthusiast Student", "set", "Social-engineer toolkit. Aimed at penetration testing around Social-Engineering."),
("Enthusiast Student", "powersploit", "A PowerShell Post-Exploitation Framework."),
("Enthusiast Student", "mimikatz", "A little tool to play with Windows security."),
("Enthusiast Student", "evil-winrm", "The ultimate WinRM shell for hacking/pentesting."),
("Enthusiast Student", "proxychains-ng", "A hook preloader that allows to redirect TCP traffic of existing dynamically linked programs through one or more SOCKS or HTTP proxies"),
("Enthusiast Student", "weevely", "Weaponized web shell."),
("Enthusiast Student", "netcat", "Command-line utility which reads and writes data across network connections, using the TCP or UDP protocols."),
("Enthusiast Student", "gobuster", "Directory/file & DNS busting tool written in Go."),
("Enthusiast Student", "hashid", "Software to identify the different types of hashes used to encrypt data."),
("Enthusiast Student", "commentor", "Extract all comments from the specified URL resource."),
("Enthusiast Student", "osert", "Markdown Templates for Offensive Security exam reports."),
("Enthusiast Student", "wordlister", "A simple wordlist generator and mangler written in python."),
("Enthusiast Student", "binwalk", "A tool for searching binary images for embedded files and executable code."),
("Enthusiast Student", "pwncat-cs", "A fancy reverse and bind shell handler."),
("Forensic Analyst", "blackarch-forensic", "Packages for retrieving data on physical disks or embedded memories. Details: https://blackarch.org/forensic.html"),
("Malware Analyst", "blackarch-binary", "Packages that operate on binary. Details: https://blackarch.org/binary.html"),
("Malware Analyst", "blackarch-debugger", "Debugger packages. Details: https://blackarch.org/debugger.html"),
("Malware Analyst", "blackarch-decompiler", "Packages that attempt to reverse a compiled program into source code. Details: https://blackarch.org/decompiler.html"),
("Malware Analyst", "blackarch-disassembler", "Disassembler packages. Details: https://blackarch.org/disassembler.html"),
("Malware Analyst", "blackarch-malware", "Packages that count as any type of malicious software or malware detection. Details: https://blackarch.org/malware.html"),
("Malware Analyst", "blackarch-reversing", "Decompiler, disassembler or any similar program. Details: https://blackarch.org/reversing.html"),
("Malware Analyst", "nasm", "Netwide Assembler."),
("Mobile Analyst", "blackarch-mobile", "Packages that manipulate mobile platforms. Details: https://blackarch.org/mobile.html"),
("Mobile Analyst", "blackarch-reversing", "Decompiler, disassembler or any similar program. Details: https://blackarch.org/reversing.html"),
("Network Analyst", "blackarch-ids", "Packages working on IDS. Details: https://blackarch.org/ids.html"),
("Network Analyst", "blackarch-networking", "Packages that scan systems for vulnerabilities or information about networks. Details: https://blackarch.org/networking.html"),
("Network Analyst", "blackarch-proxy", "Packages that act as a proxy. Details: https://blackarch.org/proxy.html"),
("Network Analyst", "blackarch-radio", "Packages that operate on radio frequency. Details: https://blackarch.org/radio.html"),
("Network Analyst", "blackarch-sniffer", "Packages for analyzing network traffic. Details: https://blackarch.org/sniffer.html"),
("Network Analyst", "blackarch-spoof", "Packages that attempt to spoof the attacker. Details: https://blackarch.org/spoof.html"),
("Network Analyst", "blackarch-tunnel", "Packages that are used to tunnel network traffic on a given network. Details: https://blackarch.org/tunnel.html"),
("Network Analyst", "blackarch-wireless", "Packages that operate on wireless network at any level. Details: https://blackarch.org/wireless.html"),
("Red Teamer", "blackarch-cracker", "Packages used for cracking cryptography functions. Details: https://blackarch.org/cracker.html"),
("Red Teamer", "blackarch-database", "Packages for database exploitation at any level. Details: https://blackarch.org/database.html"),
("Red Teamer", "blackarch-debugger", "Debugger packages. Details: https://blackarch.org/debugger.html"),
("Red Teamer", "blackarch-decompiler", "Packages that attempt to reverse a compiled program into source code. Details: https://blackarch.org/decompiler.html"),
("Red Teamer", "blackarch-exploitation", "Packages that take advantage of exploits in other programs or services. Details: https://blackarch.org/exploitation.html"),
("Red Teamer", "blackarch-fuzzer", "Fuzzers. Details: https://blackarch.org/fuzzer.html"),
("Red Teamer", "blackarch-networking", "Packages that scan systems for vulnerabilities or information about networks. Details: https://blackarch.org/networking.html"),
("Red Teamer", "blackarch-recon", "Packages that actively seeks vulnerable exploits in the wild. Details: https://blackarch.org/recon.html"),
("Red Teamer", "blackarch-scanner", "Packages that scan selected systems for vulnerabilities or information about the network. Details: https://blackarch.org/scanner.html"),
("Red Teamer", "blackarch-sniffer", "Packages for analyzing network traffic. Details: https://blackarch.org/sniffer.html"),
("Red Teamer", "blackarch-spoof", "Packages that attempt to spoof the attacker. Details: https://blackarch.org/spoof.html"),
("Red Teamer", "blackarch-webapp", "Packages that target web applications. Details: https://blackarch.org/webapp.html"),
("Red Teamer", "blackarch-windows", "Native Windows packages. Details: https://blackarch.org/windows.html"),
("Red Teamer", "ratinject", "An Executable to gain Undetectable Persistence in Windows via 4 Registry Keys."),
("Red Teamer", "ians", "A Python-based hacking toolset."),
("Web Pentester", "blackarch-webapp", "Packages that target web applications. Details: https://blackarch.org/webapp.html")
]


class TreeViewFilterWindow(Gtk.Window):
    def __init__(self):
        super().__init__(title="Hacking Role Tools View")
        self.set_border_width(10)

        # Setting up the self.grid in which the elements are to be positioned
        self.grid = Gtk.Grid()
        self.grid.set_column_homogeneous(True)
        self.grid.set_row_homogeneous(True)
        self.add(self.grid)

        # Creating the ListStore model
        self.variable_liststore = Gtk.ListStore(str, str, str)
        for variable_ref in variable_list:
            self.variable_liststore.append(list(variable_ref))
        self.current_filter_category = None

        # Creating the filter, feeding it with the liststore model
        self.category_filter = self.variable_liststore.filter_new()
        # setting the filter function, note that we're not using the
        self.category_filter.set_visible_func(self.category_filter_func)

        # creating the treeview, making it use the filter as a model, and adding the columns
        self.treeview = Gtk.TreeView(model=self.category_filter)
        for i, column_title in enumerate(
            ["Role", "Tool", "Description"]
        ):
            renderer = Gtk.CellRendererText()
            column = Gtk.TreeViewColumn(column_title, renderer, text=i)
            self.treeview.append_column(column)

        # creating buttons to filter by Category, and setting up their events
        self.buttons = list()
        for var_category in ["Black Hat Omniscient", "Bug Bounty Hunter", "Cracker Specialist", "Enthusiast Student", "Forensic Analyst"]:
            button = Gtk.Button(label=var_category)
            self.buttons.append(button)
            button.connect("clicked", self.on_selection_button_clicked)

        self.buttons_bottom = list()
        for var_category in ["Malware Analyst", "Mobile Analyst", "Network Analyst", "Red Teamer", "Web Pentester"]:
            button_bottom = Gtk.Button(label=var_category)
            self.buttons_bottom.append(button_bottom)
            button_bottom.connect("clicked", self.on_selection_button_clicked)

        self.buttons_deeper = list()
        for var_category in ["None"]:
            button_deeper = Gtk.Button(label=var_category)
            self.buttons_deeper.append(button_deeper)
            button_deeper.connect("clicked", self.on_selection_button_clicked)

        ############ LAYOUT #############
        
        # setting up the layout, putting the treeview in a scrollwindow, and the buttons in a row
        self.scrollable_treelist = Gtk.ScrolledWindow()
        self.scrollable_treelist.set_vexpand(True)
        self.grid.attach(self.scrollable_treelist, 0, 0, 5, 10)
        self.grid.attach_next_to(
            self.buttons[0], self.scrollable_treelist, Gtk.PositionType.BOTTOM, 1, 1
        )
        for i, button in enumerate(self.buttons[1:]):
            self.grid.attach_next_to(
                button, self.buttons[i], Gtk.PositionType.RIGHT, 1, 1
            )
        self.scrollable_treelist.add(self.treeview)
        ##################################################################
        self.scrollable_bottom = Gtk.ScrolledWindow()
        self.scrollable_bottom.set_vexpand(True)
        self.grid.attach(self.scrollable_bottom, 0, 0, 5, 11)
        self.grid.attach_next_to(
            self.buttons_bottom[0], self.scrollable_bottom, Gtk.PositionType.BOTTOM, 1, 1
        )
        for i, button_bottom in enumerate(self.buttons_bottom[1:]):
            self.grid.attach_next_to(
                button_bottom, self.buttons_bottom[i], Gtk.PositionType.RIGHT, 1, 1
            )
        self.scrollable_treelist.add(self.treeview)
        ##################################################################
        self.scrollable_deeper = Gtk.ScrolledWindow()
        self.scrollable_deeper.set_vexpand(True)
        self.grid.attach(self.scrollable_deeper, 2, 0, 3, 12)
        self.grid.attach_next_to(
            self.buttons_deeper[0], self.scrollable_deeper, Gtk.PositionType.BOTTOM, 1, 1
        )
        for i, button_deeper in enumerate(self.buttons_deeper[1:]):
            self.grid.attach_next_to(
                button_deeper, self.buttons_deeper[i], Gtk.PositionType.RIGHT, 1, 1
            )
        self.scrollable_treelist.add(self.treeview)
        ###################################################

        self.show_all()

    def category_filter_func(self, model, iter, data):
        """Tests if the Category in the row is the one in the filter"""
        if (
            self.current_filter_category is None
            or self.current_filter_category == "None"
        ):
            return True
        else:
            # [0] defines the index of columns that must be filtered
            return model[iter][0] == self.current_filter_category

    def on_selection_button_clicked(self, widget):
        """Called on any of the button clicks"""
        # we set the current category filter to the button's label
        self.current_filter_category = widget.get_label()
        print("%s category selected!" % self.current_filter_category)
        # we update the filter, which updates in turn the view
        self.category_filter.refilter()


win = TreeViewFilterWindow()
win.connect("destroy", Gtk.main_quit)
win.show_all()
Gtk.main()
