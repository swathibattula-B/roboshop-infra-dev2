module "sg" {
    count = length(var.sg_names)
    source = "git::https://github.com/swathibattula-B/terraform_aws_sg1.git?ref=main"
    project = var.project
    environment = var.environment
    vpc_id = local.vpc_id
    sg_name = replace(var.sg_names[count.index], "_", "-")
}