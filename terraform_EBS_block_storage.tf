#create a volume step3
resource "aws_ebs_volume"  "example" {
  availability_zone  = aws_instance.os2.availability_zone
  size               = 1
  tags = {
     Name = "web server HD bY TF"
    }
}
  
