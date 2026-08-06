resource "aws_instance" "bastion" {
    ami = local.ami_id
    instance_type = "t3.micro"
    vpc_security_group_ids = [local.bastion_sg_id] 
    subnet_id = local.public_subnet_id

     user_data = file("bastion.sh") #aws will create instace and file is function it read bastio.sh fil and send the command to aws

    tags = merge (
        local.common_tags,
        {
            Name = "${var.project_name}-${var.environment}-bastion"
        }
    )
}

 