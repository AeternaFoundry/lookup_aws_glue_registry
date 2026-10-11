data "aws_glue_registry" "glue_registry_lookup" {
  for_each = var.glue_registry_lookup

  name   = each.value.name
  region = each.value.region
}

