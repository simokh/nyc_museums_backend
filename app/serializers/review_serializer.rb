class ReviewSerializer
  include FastJsonapi::ObjectSerializer
  attributes :review_post, :rating, :museum_id, :museum
  belongs_to :museum 
end
