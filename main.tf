module "storage" {
  source = "./Storage"
}

module "network" {
  source= "./Network"
  
}

module "compute" {
  source = "./Compute"
}

module "folder" {
  source = "./Folder"
}