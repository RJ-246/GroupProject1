#!/bin/bash
sudo yum update
sudo yum install -y python3 python3-dev python3-pip python3-venv
pip install --user --upgrade virtualenv
# kill any servers that may be running in the background 
sudo pkill -f runserver

# kill frontend servers if you are deploying any frontend
# sudo pkill -f tailwind
# sudo pkill -f node

cd /home/ec2-user/groupproject1

# activate virtual environment
#python3 -m venv venv
#source venv/bin/activate

#install requirements.txt
pip install -r /home/ec2-user/groupproject1/requirements.txt

#refresh service daemon for django daemon
systemctl daemon-reload
systemctl enable django.service
