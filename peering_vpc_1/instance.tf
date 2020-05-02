
resource "aws_instance" "bastion" {
  ami           = "ami-01e36b7901e884a10"
  instance_type = "t2.micro"
  associate_public_ip_address = "true"
  subnet_id = "${aws_subnet.public1.id}"
  security_groups = ["${aws_security_group.bastion.id}"]
  key_name = "${aws_key_pair.local.key_name}"


  tags = {
    Name = "Bastion"
    Team = "admins"
  }
}
resource "aws_instance" "web" {
    instance_type = "t2.micro"
    ami           = "ami-0f7919c33c90f5b58"
    user_data     =  "${file("user_data1.sh")}"
    associate_public_ip_address = "true"
    subnet_id = "${aws_subnet.public2.id}"
    security_groups = ["${aws_security_group.web.id}"]
    
    tags = {
    Name = "web Server"
    }
    tags = {
    Team = "Devops"    
    }
}


resource "aws_instance" "DB" {
  ami           = "ami-0db8e77c005d79e33"
  instance_type = "t2.micro"
  subnet_id = "${aws_subnet.private1.id}"
  security_groups = [
    "${aws_security_group.db.id}"
  ]
  user_data     =  "${file("user_data2.sh")}"


  tags = {
    Name = "DB"
    Team = "DB"
  }
}
