class AddPhotourlToQuoteunquoteyelps < ActiveRecord::Migration
  def change
    add_column :quoteunquoteyelps, :photourl, :string
  end
end
