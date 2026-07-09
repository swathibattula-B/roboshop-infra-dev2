resource "aws_ssm_parameter" "mysql_root_password" {
  name  = "/${var.project}/${var.environment}/mysql_root_password"
  type  = "SecureString"
  value = random_password.mysql_root.result
}