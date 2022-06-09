## Automated ELK Stack Deployment

The files in this repository were used to configure the network depicted below.

README/Images/Network_Diagram.png

These files have been tested and used to generate a live ELK deployment on Azure. They can be used to either recreate the entire deployment pictured above. Alternatively, select portions of the playbook file may be used to install only certain pieces of it, such as Filebeat.

  - /Ansible/ansible.cfg

This document contains the following details:
- Description of the Topologu
- Access Policies
- ELK Configuration
  - Beats in Use
  - Machines Being Monitored
- How to Use the Ansible Build


### Description of the Topology

The main purpose of this network is to expose a load-balanced and monitored instance of DVWA, the D*mn Vulnerable Web Application.

Load balancing ensures that the application will be highly protected, in addition to restricting overload to the network.
- What aspect of security do load balancers protect? Availability. What is the advantage of a jump box? This machine operates as highly secured entry point to the network. It limits it's use to network admin work which limits attackers abilities to compromise the machine. 

Integrating an ELK server allows users to easily monitor the vulnerable VMs for changes to the metrics and system logs.
- What does Filebeat watch for? logs
- What does Metricbeat record? CPU information

The configuration details of each machine may be found below.
_Note: Use the [Markdown Table Generator](http://www.tablesgenerator.com/markdown_tables) to add/remove values from the table_.

| Name     | Function | IP Address | Operating System |
|----------|----------|------------|------------------|
| Jump Box | Gateway  | 10.0.0.4   | Linux            |
| Web-1    | Web Serv | 10.0.0.5   | Linux            |
| Web-2    | Web Serv | 10.0.0.6   | Linux            |
| Elk      | Elk Stk  | 10.1.0.4   | Linux            |

### Access Policies

The machines on the internal network are not exposed to the public Internet. 

Only the Jumpbox machine can accept connections from the Internet. Access to this machine is only allowed from the following IP addresses:
- My Home Public IP (I am not sharing that here)

Machines within the network can only be accessed by Jump Box.
- Which machine did you allow to access your ELK VM? What was its IP address? Jump Box 10.0.0.4

A summary of the access policies in place can be found in the table below.

| Name     | Publicly Accessible | Allowed IP Addresses |
|----------|---------------------|----------------------|
| Jump Box | Yes                 | Home Public IP       |
| Web-1+2  | No (ssh) yes (http) | Home Public IP       |
| Elk      | No (ssh) yes (tcp)  | Home Public IP       |

### Elk Configuration

Ansible was used to automate configuration of the ELK machine. No configuration was performed manually, which is advantageous because...
- What is the main advantage of automating configuration with Ansible? It is efficient. You can install and configure multiple files with one command.

The playbook implements the following tasks:
- In 3-5 bullets, explain the steps of the ELK installation play. E.g., install Docker; download image; etc._
- install docker; install python3-pip, install docker module, increase virtual memory, download and install elk docker container.

The following screenshot displays the result of running `docker ps` after successfully configuring the ELK instance.

Images/docker_ps_output.png

### Target Machines & Beats
This ELK server is configured to monitor the following machines:
- List the IP addresses of the machines you are monitoring_
10.0.0.5
10.0.0.6

We have installed the following Beats on these machines:
- Specify which Beats you successfully installed_
filebeat
metricbeat

These Beats allow us to collect the following information from each machine:
- In 1-2 sentences, explain what kind of data each beat collects, and provide 1 example of what you expect to see. E.g., `Winlogbeat` collects Windows logs, which we use to track user logon events, etc._

filebeat collects system log data which is used to track information such as login attempts, user information, and network traffic.
metricbeat collects cpu data which is used to track things such as cpu and memory usage.

### Using the Playbook
In order to use the playbook, you will need to have an Ansible control node already configured. Assuming you have such a control node provisioned: 

SSH into the control node and follow the steps below:
- Copy the install-elk.yml file to /etc/ansible.
- Update the hosts file to include...[elk]. Adding this name in brackets and add the ip underneath with this format [ex. 10.1.0.4 ansible_python_interpreter=/usr/bin/python3].Then you can reference this in your yml file.
- Run the playbook, and navigate to [elk-machine-public-IP:5601] to check that the installation worked as expected.

_ Answer the following questions to fill in the blanks:_
- _Which file is the playbook? Where do you copy it?_
- _Which file do you update to make Ansible run the playbook on a specific machine? How do I specify which machine to install the ELK server on versus which to install Filebeat on?_
- _Which URL do you navigate to in order to check that the ELK server is running?

_As a **Bonus**, provide the specific commands the user will need to run to download the playbook, update the files, etc._

ansible-playbook [filepath]
