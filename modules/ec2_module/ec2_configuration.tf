provider "aws"{
     region="${var.my_region}"
     profile="default"
}

resource "aws_instance" "os1" {
      ami           = "${var.my_ami}"
      instance_type = "${var.my_type}"
  
}


      