module "compartment" {
  count = var.compartment_is_deployed ? 1 : 0
  source = "./modules/compartment"
  # configuration
  compartment_description = var.compartment_description
  compartment_name = local.compartment_name
  parent_compartment_id = local.parent_compartment_id
  enable_delete = var.enable_delete
  compartment_group_is_deployed = var.compartment_group_is_deployed
  compartment_group_name = local.compartment_group_name
  compartment_group_description = var.compartment_group_description
  compartment_policy_is_deployed = var.compartment_policy_is_deployed
  compartment_policy_name = local.compartment_policy_name
  compartment_policy_description = var.compartment_policy_description
  compartment_policy_statement_substring = local.compartment_policy_statement_substring
  tenancy_ocid = var.tenancy_ocid
}
