class StyleSerializer < ActiveModel::Serializer
  attributes :id, :top_front_url, :top_back_url, :bottom_front_url, :bottom_back_url, :shoe_url, :likes
  has_many :comments
end
