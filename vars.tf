# Authentication
variable "tenancy_ocid" { default = "" }
variable "user_ocid" { default = "" }
variable "fingerprint" { default = "" }
variable "private_key_path" { default = "" }
variable "region" { default = "" }
variable "current_user_ocid" { default = "" }

# current_user_ocid can be left unused for Terraform deployment. It is only used during Resource Manager deployment.
# Compartment
variable "compartment_is_deployed" { default = true }
variable "compartment_description" { default = "Compartment for Lakehouse Pipeline" }
variable "compartment_name" { default = "Lakehouse" }
variable "compartment_id" { default = "DEFAULT_TENANCY" }
variable "parent_compartment_id" { default = "DEFAULT_TENANCY" } # if compartment_is_deployed == true, then parent_compartment_id is used in the place of compartment_id
variable "enable_delete" { default = false }
variable "compartment_group_is_deployed" { default = false }
variable "compartment_group_name" { default = "CompartmentGroup" }
variable "compartment_group_description" { default = "Group for users who manage Compartment-related operations." }
variable "compartment_policy_is_deployed" { default = false }
variable "compartment_policy_name" { default = "CompartmentPolicy" }
variable "compartment_policy_description" { default = "Collection of policy statements that grant permissions for user groups, dynamic groups, and services." }
