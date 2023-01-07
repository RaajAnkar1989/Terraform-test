module "EC2" {
    source  = "./Ec2"
    sg = "module.sg.sg_id"
}

module "sg" {
    source  = "./sg"
}
