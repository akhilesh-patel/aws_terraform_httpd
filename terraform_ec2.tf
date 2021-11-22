#step2
resource "aws_instance"   "os2" {
   ami             =  "ami-0d5eff06f840b45e9"
   instance_type   =   "t2.micro"
   security_groups  =  ["terraform-security"] #static 
   key_name         =  "teraaform-day4" #static
  tags = { 
      Name  = " my first "
}
}