
# This file can be used by a development team requesting to deploy an instance of a specific
# service. But the team can be limited to only use submit this file with the corresponding set of 
# variable values instead of learning, managing terraform. In this docuemnt we limit the scope
# of ths tvars to only including service type (crn), service plan, resource instance name and tags. 
#
# To operationalize this model, a developer or cloud engineer could deliver this file to source control
# similar to application code. Then the pipeline uses this file, with the associated terraform,
# files - main.tf and variables.tf with the values for other variables with a devops toolchain to deploy
# resource instances and environments before deploying application code.
#
# The variables align with the variables passed to the module in main.tf used to futher abstract
# the actual code and cenrtally managed variables used to provision the services.


# TFVARs file formatted variable and values 
  resource_name =  "datawh003"
  service_crn = "databases-for-mongodb"
  service_plan = "standard"
  tags = ["data:datawarehouse", "team:myteam"]
