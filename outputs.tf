output "glue_registry_lookup_arn" {
  description = "Map of arn values across all glue_registry_lookup, keyed the same as var.glue_registry_lookup"
  value       = { for k, v in data.aws_glue_registry.glue_registry_lookup : k => v.arn if v.arn != null && length(v.arn) > 0 }
}
output "glue_registry_lookup_description" {
  description = "Map of description values across all glue_registry_lookup, keyed the same as var.glue_registry_lookup"
  value       = { for k, v in data.aws_glue_registry.glue_registry_lookup : k => v.description if v.description != null && length(v.description) > 0 }
}
output "glue_registry_lookup_name" {
  description = "Map of name values across all glue_registry_lookup, keyed the same as var.glue_registry_lookup"
  value       = { for k, v in data.aws_glue_registry.glue_registry_lookup : k => v.name if v.name != null && length(v.name) > 0 }
}
output "glue_registry_lookup_region" {
  description = "Map of region values across all glue_registry_lookup, keyed the same as var.glue_registry_lookup"
  value       = { for k, v in data.aws_glue_registry.glue_registry_lookup : k => v.region if v.region != null && length(v.region) > 0 }
}

