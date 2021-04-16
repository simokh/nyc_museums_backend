class CreateMuseums < ActiveRecord::Migration[6.0]
  def change
    create_table :museums do |t|
      t.string :name
      t.string :borough
      t.string :img_url

      t.timestamps
    end
  end
end
