class ReviewSerializer
  include FastJsonapi::ObjectSerializer
  attributes :review, :rating
end
