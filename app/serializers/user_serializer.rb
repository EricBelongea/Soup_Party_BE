class UserSerializer
  include JSONAPI::Serializer
  attributes :first_name, :last_name, :email
  # Not includig the password for safety reasons.
end