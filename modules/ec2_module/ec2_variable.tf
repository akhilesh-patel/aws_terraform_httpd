variable "my_region"{
         default="us-east-2"
}
variable "my_ami"{
          default="ami-0dd0ccab7e2801812"
}

variable "my_type"{
          default="t2.micro"
}
output "myotput"{
        value="${var.my_type}"
}