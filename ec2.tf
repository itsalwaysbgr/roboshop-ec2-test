module "ec2" {
    source = "../terraform-aws-instance"
    sg_ids = ["sg-0ea00949004c34cc3"]
    tags = {
        Name = "roboshop-cart"
    }
}