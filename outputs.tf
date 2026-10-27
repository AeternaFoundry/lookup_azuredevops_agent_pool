output "agent_pool_lookup_id" {
  description = "Map of id values across all agent_pool_lookup, keyed the same as var.agent_pool_lookup"
  value       = { for k, v in data.azuredevops_agent_pool.agent_pool_lookup : k => v.id }
}
output "agent_pool_lookup_auto_provision" {
  description = "Map of auto_provision values across all agent_pool_lookup, keyed the same as var.agent_pool_lookup"
  value       = { for k, v in data.azuredevops_agent_pool.agent_pool_lookup : k => v.auto_provision }
}
output "agent_pool_lookup_auto_update" {
  description = "Map of auto_update values across all agent_pool_lookup, keyed the same as var.agent_pool_lookup"
  value       = { for k, v in data.azuredevops_agent_pool.agent_pool_lookup : k => v.auto_update }
}
output "agent_pool_lookup_name" {
  description = "Map of name values across all agent_pool_lookup, keyed the same as var.agent_pool_lookup"
  value       = { for k, v in data.azuredevops_agent_pool.agent_pool_lookup : k => v.name }
}
output "agent_pool_lookup_pool_type" {
  description = "Map of pool_type values across all agent_pool_lookup, keyed the same as var.agent_pool_lookup"
  value       = { for k, v in data.azuredevops_agent_pool.agent_pool_lookup : k => v.pool_type }
}

