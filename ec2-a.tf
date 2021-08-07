resource "aws_instance" "terraform_tests-a" {
    ami = "${var.image_id}"
    instance_type = "t2.micro"
    vpc_security_group_ids =  [ "${aws_security_group.open-sg.id}" ]
    availability_zone = "${var.aza_name}"
    key_name               = "green-blue"
    count         = 1
    associate_public_ip_address = true
    tags = {
      Name              = "terraform_tests-a"
      Environment       = "Tests"
      Project           = "TERRAFORM-TESTS"
    }
}
