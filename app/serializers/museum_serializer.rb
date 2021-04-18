class MuseumSerializer 
  include FastJsonapi::ObjectSerializer
  attributes :name, :borough, :img_url
  has_many :reviews
end
