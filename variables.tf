variable "elasticsearch_ingest_processor_convert_lookup" {
  description = <<EOT
Map of elasticsearch_ingest_processor_convert_lookup, attributes below
Required:
    - field
    - type
Optional:
    - description
    - if
    - ignore_failure
    - ignore_missing
    - on_failure
    - tag
    - target_field
EOT

  type = map(object({
    field          = string
    type           = string
    description    = optional(string)
    if             = optional(string)
    ignore_failure = optional(bool)
    ignore_missing = optional(bool)
    on_failure     = optional(list(string))
    tag            = optional(string)
    target_field   = optional(string)
  }))
}

