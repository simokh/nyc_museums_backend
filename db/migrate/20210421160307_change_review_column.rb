class ChangeReviewColumn < ActiveRecord::Migration[6.0]
  def change
    rename_column :reviews, :review, :review_post
  end
end
