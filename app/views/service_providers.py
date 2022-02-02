from quart import Blueprint

service_providers = Blueprint("service_providers", __name__)

@service_providers.route("/services-api/providers/")
def index():
    return {
        "desc" : "Should return best fit service providers",
        "input" : "Expects location to find best fit"
    }