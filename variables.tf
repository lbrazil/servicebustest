variable "app" {
  type = string
}

variable "env" {
  type = string
}

variable "region" {
  type = object({
    name     = string
    nickname = string
  })
}

variable "resource_group_name" {
  type = string
}

variable "tags" {
  type    = map(any)
  default = {}
}

variable "tenant" {
  type = string
}

variable "enable_partitioning" {
  type = bool
  default = false
}
variable "sku" {
  type = string
  default = "standard"
}