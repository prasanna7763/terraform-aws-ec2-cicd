resource "aws_instance" "machine" {
  ami = data.aws_ami.latest-ubuntu.id
  instance_type = var.instance_type
  iam_instance_profile = aws_iam_instance_profile.machine.id
  //key_name = aws_key_pair.developer.key_name
  key_name = var.key_name
  associate_public_ip_address = true
  subnet_id = var.subnet_id

  root_block_device {
    volume_size = var.root_block_device_volume_size
    volume_type = var.root_block_device_volume_type
  }

  tags = {
    Name = var.server_name
  }

  vpc_security_group_ids = var.sg_ids
  user_data_base64 = var.user_data_base64
}

