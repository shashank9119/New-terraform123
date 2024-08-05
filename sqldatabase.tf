resource "azurerm_mysql_flexible_server" "mysqlserver91" {
  name                   = "mysqlserver9"
  resource_group_name    = azurerm_resource_group.example.name
  location               = azurerm_resource_group.example.location
  version                = "8.0.21"
  sku_name               = "B_Standard_B1ms"
  administrator_login    = "shashank91"
  administrator_password = "Login@123#456"

}

resource "azurerm_mysql_flexible_database" "mydata9115" {
  name                = "mydata9115"
  resource_group_name = azurerm_resource_group.example.name
  server_name         = azurerm_mysql_flexible_server.mysqlserver91.name
  charset             = "utf8"
  collation           = "utf8_unicode_ci"

}