module "docdb" {
    source = "./vendor/modules/docdb"   # path created after running terrfile -f command 
    ENV = var.ENV
    # DOCDB variables
    DOCDB_INSTANCE_COUNT = var.DOCDB_INSTANCE_COUNT
    DOCDB_INSTANCE_TYPE = var.DOCDB_INSTANCE_TYPE
}

module "redis" {
    source = "./vendor/modules/redis"   # path created after running terrfile -f command 
    ENV = var.ENV
}

module "mysql" {
    source = "./vendor/modules/mysql"   # path created after running terrfile -f command 
    ENV = var.ENV
    MYSQL_STORAGE = var.MYSQL_STORAGE
    MYSQL_ENGINE_VERSION = var.MYSQL_ENGINE_VERSION
    MYSQL_INSTANCE_TYPE = var.MYSQL_INSTANCE_TYPE
}
