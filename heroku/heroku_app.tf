resource "heroku_app" "api_gateway_app" {
    name = "api-gateway-web"
    region = "us"
    stack = "container"
    config_vars = {
        CORS_ORIGINS = "*"
        DEPLOYMENT_PLATFORM = "platform"
        PROCESS_TYPE = "web"
        WEB_ENV = "production"
        EMAIL_MICROSERVICE_URL = "https://email-service-web.herokuapp.com"
    }
}

# resource "heroku_app" "email_service_app" {
#     name = "email-service-web"
#     region = "us"
#     stack = "container"
#     config_vars = {}
#     sensitive_config_vars = {}
# }

# resource "heroku_app" "user_management_service_app" {
#     name = "user-management-service-web"
#     region = "us"
#     stack = "container"
#     config_vars = {}
#     sensitive_config_vars = {}
# }
