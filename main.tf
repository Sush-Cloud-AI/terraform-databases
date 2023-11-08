module "docdb" {
    source = "./vendor/modules/docdb"   # path created after running terrfile -f command 
    ENV = var.ENV
}

module "redis" {
    source = "./vendor/modules/redis"   # path created after running terrfile -f command 
    ENV = var.ENV
}
