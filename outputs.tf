output "agent_pool_lookup_id" {
  description = "Map of id values across all agent_pool_lookup, keyed the same as var.agent_pool_lookup except keys with no id are omitted"
  value       = { for k, v in data.azuredevops_agent_pool.agent_pool_lookup : k => v.id if v.id != null && length(v.id) > 0 }
}
output "agent_pool_lookup_auto_provision" {
  description = "Map of auto_provision values across all agent_pool_lookup, keyed the same as var.agent_pool_lookup except keys with no auto_provision are omitted"
  value       = { for k, v in data.azuredevops_agent_pool.agent_pool_lookup : k => v.auto_provision if v.auto_provision != null }
}
output "agent_pool_lookup_auto_update" {
  description = "Map of auto_update values across all agent_pool_lookup, keyed the same as var.agent_pool_lookup except keys with no auto_update are omitted"
  value       = { for k, v in data.azuredevops_agent_pool.agent_pool_lookup : k => v.auto_update if v.auto_update != null }
}
output "agent_pool_lookup_name" {
  description = "Map of name values across all agent_pool_lookup, keyed the same as var.agent_pool_lookup except keys with no name are omitted"
  value       = { for k, v in data.azuredevops_agent_pool.agent_pool_lookup : k => v.name if v.name != null && length(v.name) > 0 }
}
output "agent_pool_lookup_pool_type" {
  description = "Map of pool_type values across all agent_pool_lookup, keyed the same as var.agent_pool_lookup except keys with no pool_type are omitted"
  value       = { for k, v in data.azuredevops_agent_pool.agent_pool_lookup : k => v.pool_type if v.pool_type != null && length(v.pool_type) > 0 }
}

