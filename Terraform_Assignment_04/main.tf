
###THIS IS FOR EC2 INSTANCE
module "MY-EC2-INST" {
  source            = "./Modules/Ec2-Instance"
  M-Ec2-INST-NAME   = var.P-Ec2-INST-NAME
  M-Ec2-INST-AMI    = var.P-Ec2-INST-AMI
  M-Ec2-INST-TYPE   = var.P-Ec2-INST-TYPE
  M-SECURITY-GROUPS = [module.MY-SECURE-GRP.SEC-GRP]
  M-KEY-NAME        = module.MY-SSH-KEY.SSH-KEY
}

###THIS IS FOR SECURITY GROUP
module "MY-SECURE-GRP" {
  source       = "./Modules/SECURITY-GRP"
  M-SG-NAME    = var.P-SG-NAME
  M-SG-DESC    = var.P-SG-DESC
  M-SG-PORT    = var.P-SG-PORT
  M-SG-PROTO   = var.P-SG-PROTO
  M-CIDR-BLOCK = var.P-CIDR-BLOCK
}

###THIS IS FOR SSH KEY PAIR
module "MY-SSH-KEY" {
  source    = "./Modules/SSH-KEY"
  M-SSH-KEY = var.P-SSH-KEY
  M-SSH-PUB = file(var.P-SSH-PUB)
}


