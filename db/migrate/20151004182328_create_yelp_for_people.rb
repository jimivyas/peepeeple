class CreateYelpForPeople < ActiveRecord::Migration
  def change
    create_table :yelp_for_people do |t|
      t.string :name
      t.text :description
      t.integer :year

      t.timestamps
    end
  end
end
