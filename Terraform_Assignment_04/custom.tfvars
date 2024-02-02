###THIS IS FOR EC2 INSTANCE
P-Ec2-INST-NAME = "Reso-Name"
P-Ec2-INST-AMI  = "ami-0d63de463e6604d0a"
P-Ec2-INST-TYPE = "t2.micro"


###THIS IS FOR SECURITY GROUP
P-SG-NAME    = "Reso-SG"
P-SG-DESC    = "Security group for a random service"
P-SG-PORT    = [22, 80, 443]
P-SG-PROTO   = "tcp"
P-CIDR-BLOCK = ["0.0.0.0/0"]

###THIS IS FOR SSH KEY PAIR
P-SSH-KEY = "API-KEY"
P-SSH-PUB = ("/root/.ssh/id_rsa.pub")
