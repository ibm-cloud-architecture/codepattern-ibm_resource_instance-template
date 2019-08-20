###################################################
# this file contains the variables and default values
###################################################

variable ibmcloud_api_key {
  description = "api key obtained from ibm cloud iam service"
  default = ""
}

variable classic_username {
  description = "classic infrastructure username"
  default = ""
}

variable classic_apikey {
  description = "classic infrastructure api key obtained from ibm cloud iam service"
  default = ""
}

variable region {
  description = "ibm cloud region to deploy resources"
  default = "us-south"
}

variable resource_name {
  description = "name of theibm cloud resource instance to be deployed"
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

variable resource_group_id {
  description = "the ID of the resource group to use for deploying the resource instance"
  default = ""
}

variable access_group_name {
  description = "name of the access group used to assign IAM access policy for the resource instance"
  default = "accessgroup"
}

variable access_roles {
  description = "name of the access group to assign access policy for the resouece instance"
  default = ["Manager"]
}

variable end_points {
  description = "name of the access group to assign access policy for the resouece instance"
  default = "private"
}

