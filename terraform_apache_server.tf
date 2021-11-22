#step 5 apache server

resource "null_resource"  "nullre4" { 
depends_on =  [
    aws_volume_attachment.ebs_att
   ]

  connection { 
       type    = "ssh"
       user    =  "ec2-user"
       private_key = file("C:/Users/AKHIL/Downloads/teraaform-day4.pem")
       host  = aws_instance.os2.public_ip
       }

  provisioner "remote-exec" {
       inline = [
        "sudo yum install httpd -y",
        "sudo yum install php -y ",
        "sudo systemctl start httpd",
       "sudo systemctl enable httpd ",
        "sudo mkfs.ext4  /dev/xvdc",
        "sudo mount /dev/xvdc   /var/www/html",
        "sudo yum install git -y",
        "sudo git clone  https://github.com/akhilesh-patel/jenkins_testing.git   /var/www/html/web2/"
        
      ] 
}
}

resource "null_resource"  "nullre3" {
provisioner  "local-exec" {
command = "chrome http://54.221.104.85/web2/index.html"

}
}

