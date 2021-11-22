#attach volume step 4

resource    "aws_volume_attachment"   "ebs_att"  {
  device_name = "/dev/sdc"
  volume_id   = aws_ebs_volume.example.id
  instance_id  = aws_instance.os2.id
  force_detach  = true
  }
