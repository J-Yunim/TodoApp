from flask import Blueprint
from flask_restful import Api
from resources.user import User
from resources.category import CategoryResource
from resources.comment import CommentResource

api_bp = Blueprint('api', __name__)
api = Api(api_bp)

# Route
api.add_resource(User, '/user')
api.add_resource(CategoryResource, '/category')
api.add_resource(CommentResource, '/comment')