class FavoriteSerializer < ActiveModel::Serializer
  attributes :id, :user_favorite_product, :user_id, :product_id, :photos_url

  def photos_url
    if object.photos.attached?
      array = []
      object.photos.each do |photo|
        array.append Rails.application.routes.url_helpers.rails_blob_path(photo, only_path: true)
      end
    end
    array
  end
end
