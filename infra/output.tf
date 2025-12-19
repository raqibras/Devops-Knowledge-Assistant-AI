output "static_web_app_url" {
  value = module.static_web_app1.static_web_app_url
}

output "swa_deployment_token" {
  value     = module.static_web_app1.swa_deployment_token
  sensitive = true
}