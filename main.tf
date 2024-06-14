resource "azurerm_servicebus_namespace" "sb_namespace" {
  name                = "servicebus-ns-${local.name}"
  location            = var.region.name
  resource_group_name = data.azurerm_resource_group.this.name
  sku                 = var.sku

  tags = {
    source = "terraform"
  }
}

resource "azurerm_servicebus_queue" "sb_queue" {
  name                = "servicebus-queue-${local.name}"
  namespace_id        = azurerm_servicebus_namespace.sb_namespace.id

  enable_partitioning = var.enable_partitioning
}

locals {
  name   = "${var.app}-${var.env}${local.tenant}-${var.region.nickname}"
}
