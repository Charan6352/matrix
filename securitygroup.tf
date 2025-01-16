resource "aws_security_group" "main" { 
vpc_id = aws_vpc.dev_vpc.id

tags = { 
    Name = "main_security_group" 
} 
}

resource "aws_security_group_rule" "allow_all_traffic_ipv4" {
security_group_id = aws_security_group.main.id
type = "ingress"
from_port = 0
to_port = 0
protocol = "-1"
cidr_blocks   = ["0.0.0.0/0"]

}

resource "aws_security_group_rule" "allow_all_outbound" {
  security_group_id = aws_security_group.main.id
  type             = "egress"
  from_port        = 0
  to_port          = 0
  protocol         = "-1"
  cidr_blocks      = ["0.0.0.0/0"]
}