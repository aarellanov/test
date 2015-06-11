Instructions
1.) When server is booted run the following commands as root.

sudo apt-get update

sudo apt-get install ruby2.0 awscli -y


cd /home/ubuntu

2.) Here you will setup your AWS access, secret, and region.

aws configure

aws s3 cp s3://aws-codedeploy-us-east-1/latest/install . --region us-east-1

chmod +x ./install

3.) This is simply a quick hack to get the agent running faster.

sed -i "s/sleep(.*)/sleep(10)/" install

./install auto

4.) Verify it is running.

service codedeploy-agent status
