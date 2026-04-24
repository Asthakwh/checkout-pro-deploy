resource "prod-vpc" "aws_vpc" {
  cidr_block = ""
  
}
resource "aws_key_pair" "my_key" {
    key_name = "final-key-pair"
    public_key = file("final-key-pair.pub")
  
}

resource "aws_security_group" "my_security_group" {
    name = "my-security-group"
    description = "Allow SSH inbound traffic"
    vpc_id = prod-vpc.aws_vpc.id
    
}