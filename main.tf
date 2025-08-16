# ---- root/main.tf

module "vpc" {
  source           = "./modules/vpc"
  vpc_cidr        = "10.0.0.0/16"
  ext_ip          = "0.0.0.0/0"
  availability_zones       = ["us-east-1a", "us-east-1b"]
  pb_cidrs = [ "10.0.1.0/24", "10.0.2.0/24" ]
  region = "us-east-1"
   
  
  
}

module "ec2" {
  source      = "./modules/ec2"
  web_sg      = module.vpc.web_sg
  pub_subnets = module.vpc.pub_subnets
  key         = "petclinic"
  #pt_sg  = module.vpc.pt_sg
  #pt_sn  = module.vpc.pt_sn
  #alb_tg = module.lb.alb_tg
}