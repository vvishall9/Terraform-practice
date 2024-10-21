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

module "project" {
  source = "./Project"
}

module "HA_VPN" {
  source = "./HA_VPN_GCP_TO_GCP"
}