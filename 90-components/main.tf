module "component" {
    for_each = var.components
    source = "git::https://github.com/swathibattula-B/terraform-roboshop-component1.git?ref=main"
    component = each.key
    rule_priority = each.value.rule_priority
}