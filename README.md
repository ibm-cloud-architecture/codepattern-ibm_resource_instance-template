# codepattern-ibm_resource_instance-template

---

### General information

This repository contains the terraform/scripts to deploy an ibm_resource_instance. This block covers a resource instance of an IBM service such as an instance of an ICD, ICOS, Watson services, etc. Those services that can be provisioned using the "ibm_resource_instance" block. 

The scripts also deploy a set of services you would expect to use with the service including: target resource group, resource key, access group and access policy. Additionall, this pattern includes two additional features.

 - uses a module to allow for running the scripts multiple times using different moduel blocks

 - uses a terraform.tfvars file that enables users who are requesting the dpeloyment to use a small parameter file to define the critical variable values


---

### Deploying resource instance 


Suggested steps to reusing this parttern: 

1.  get familiar with terraform in general and the IBM cloud provider by completely [this tutorial](https://www.ibm.com/cloud/garage/tutorials/public-cloud-infrastructure)

2.  clone this repository to the location you want to run the terraform
 
3. use the terraform.tfvars to enter the values for your service and run using terraform apply -var-file="terraform.tfvars"
  
4. review the modile block and the variable.tf file to collect the necessary values in preparation for running the terraform.

5. you will need IAM permissions sufficient to deploy and assign access such as platform administrator for the service you elect to provision. Here are some services you can practice deploying

| Service name | Serivce crn  | Service Plan|
|:-----------------------:|:---------------------------:|:----------:|
| PostgresSQl database|databases-for-postgresql-group |standard|
| Object Storage |object-storage |free|
|Natural Language Understanding|natural-language-understanding|free|
|Certificate Manager|cloudcerts|free|

---




#### Enjoy!
