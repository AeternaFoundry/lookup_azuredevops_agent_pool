data "azuredevops_agent_pool" "agent_pool_lookup" {
  for_each = var.agent_pool_lookup

  name = each.value.name

  dynamic "timeouts" {
    for_each = each.value.timeouts != null ? [each.value.timeouts] : []
    content {
      read = timeouts.value.read
    }
  }
}

