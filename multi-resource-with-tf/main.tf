resource "aws_instance" "example" {
  ami           = "ami-070e5bd3ff10324f8"
  instance_type = "t3.micro"
  
    count = 5

  tags = {
    Name = "HelloWorld"
  }
}

output "instance_id" {
    value = aws_instance.example[0].id
  
}