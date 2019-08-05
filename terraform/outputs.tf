output "ip" {
  value = "${aws_instance.instance.public_ip}"
}
output "ec2instance" {
  value = "${aws_instance.instance.id}"
}