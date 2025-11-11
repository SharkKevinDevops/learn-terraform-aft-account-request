module "sandbox" {
  source = "./modules/aft-account-request"

  control_tower_parameters = {
    AccountEmail              = "kevintranaws86+sanbox1@gmail.com"
    AccountName               = "sandbox-aft-dev"
    ManagedOrganizationalUnit = "AFT-Dev"
    SSOUserEmail              = "kevintranaws86@gmail.com"
    SSOUserFirstName          = "kevin"
    SSOUserLastName           = "tran"
  }

  account_tags = {
    "Learn Tutorial" = "AFT-Dev"
  }

  change_management_parameters = {
    change_requested_by = "HashiCorp Learn"
    change_reason       = "Learn AWS Control Tower Account Factory for Terraform"
  }

  custom_fields = {
    group = "non-prod"
  }

  account_customizations_name = "sandbox-aft-dev"
}
