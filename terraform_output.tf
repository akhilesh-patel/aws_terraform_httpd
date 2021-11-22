#step 6 show me ip address
output "myip" {
  value = aws_instance.os2.public_ip
}