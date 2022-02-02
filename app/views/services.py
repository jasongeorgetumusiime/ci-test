from quart import Blueprint

services = Blueprint("services", __name__)

@services.route("/services-api/")
def index():
    return {"message" : "Kanika services api"}

@services.route("/services-api/", methods=['POST']) 
def create():
    return {"message" : "Expects a JSON body for the new resource"}