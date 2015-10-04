class CreateQuoteunquoteyelps < ActiveRecord::Migration
  def change
    create_table :quoteunquoteyelps do |t|
      t.string :name
      t.text :description
      t.integer :year

      t.timestamps
    end
  end
end
