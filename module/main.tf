#########################################################
# This file contains the scripts to add a new resource instance
#########################################################


# ibm cloud provider data - un comment if you run this file without module block
provider "ibm" {
 ibmcloud_api_key   = "${var.ibmcloud_api_key}"
 region             = "${var.region}"
 generation         = 1
 ibmcloud_timeout   = 60
}


# create resource instance
resource "ibm_resource_instance" "instance" {
  name              = "${var.resource_name}"
  service           = "${var.service_crn}"
  plan              = "${var.service_plan}"
  location          = "${var.region}"
  tags              = "${var.tags}"

  parameters = {
    service-endpoints = "${var.end_points}"
  }
  resource_group_id = "${var.resource_group_id}"
  //User can increase timeouts 

  timeouts {
    create = "15m"
    update = "15m"
    delete = "15m"
  }
}


# create resource key for instance
resource "ibm_resource_key" "resource_key" {
  name                 = "${var.resource_name}-key"
   role                = "Viewer"
  resource_instance_id = "${ibm_resource_instance.instance.id}"
  //User can increase timeouts 
  timeouts {
    create = "15m"
    delete = "15m"
  }
}

# create access group
resource "ibm_iam_access_group" "access_group" {
  name = "${var.access_group_name}"
}

# create access policy for group
resource "ibm_iam_access_group_policy" "policy" {
  access_group_id = "${ibm_iam_access_group.access_group.id}"
  roles = "${var.access_roles}"
  resources = [{
    service = "${var.service_crn}"
    resource_instance_id = "${ibm_resource_instance.instance.id}"
  }]
}


