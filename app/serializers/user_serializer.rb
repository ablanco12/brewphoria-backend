class UserSerializer < ActiveModel::Serializer
  include Rails.application.routes.url_helpers

  attributes :id, :username, :password_digest, :avatar, :reviews

  def avatar
    Rails.application.routes.url_helpers.rails_blob_path(object.avatar, only_path:true)
  end
end
