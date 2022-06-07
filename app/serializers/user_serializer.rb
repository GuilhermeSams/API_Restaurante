class UserSerializer < ActiveModel::Serializer
  attributes :id, :email, :name, :is_admin, :authentication_token
end
