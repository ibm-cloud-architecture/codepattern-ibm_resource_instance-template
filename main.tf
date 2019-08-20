#################################################
#said  This file runs a series of module blocks to 
# deploy one or more resource instances
#################################################

# ibm cloud provider data 

provider "ibm" {
}
variable resource_name {
  description = "name to be applied to the deployed resource instance"
  default = "resources_instance"
}

variable service_crn {
  description = "crn of the ibm cloud resource instance to be deployed - see ibm marketplace using cli"
  default = "appid"
}

variable service_plan {
  description = "service plan for the ibm cloud resource instance to be deployed - see ibm marketplace using cli"
  default = "lite"
}

variable tags {
  description = "tags to be applied to the ibm cloud resource instance to be deployed"
  default = ["mytags"]
}

# module to deploy instance, related services, configurations 
# and integrations using the module scripts

module "ibm-resource-instance" {
  source = "./module"
  resource_name = "${var.resource_name}"
  service_crn = "${var.service_crn}"
  service_plan = "${var.service_plan}"
  tags = "${var.tags}"
}
