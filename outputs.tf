# Application Load Balancer Demo
# Author: awss3.com

output "lb_dns_name" {
  value = aws_lb.app.dns_name
}
