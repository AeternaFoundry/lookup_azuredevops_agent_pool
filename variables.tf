variable "agent_pool_lookup" {
  description = <<EOT
Map of agent_pool_lookup, attributes below
Required:
    - name
Optional:
    - timeouts (block):
        - read (optional)
EOT

  type = map(object({
    name = string
    timeouts = optional(object({
      read = optional(string)
    }))
  }))
  validation {
    condition = alltrue([
      for k, v in var.agent_pool_lookup : (
        length(trimspace(v.name)) > 0
      )
    ])
    error_message = "must not be empty or only whitespace"
  }
}

