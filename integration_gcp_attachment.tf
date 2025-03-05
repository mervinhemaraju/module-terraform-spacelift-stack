resource "spacelift_gcp_service_account" "this" {
  count    = var.create_gcp_integration == null ? 0 : 1
  stack_id = spacelift_stack.this.id

  token_scopes = [
    "https://www.googleapis.com/auth/compute",
    "https://www.googleapis.com/auth/cloud-platform",
    "https://www.googleapis.com/auth/ndev.clouddns.readwrite",
    "https://www.googleapis.com/auth/devstorage.full_control",
    "https://www.googleapis.com/auth/userinfo.email",
  ]
}
