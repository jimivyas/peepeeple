class AddRatingToQuoteunquoteyelps < ActiveRecord::Migration
  def change
    add_column :quoteunquoteyelps, :rating, :integer
  end
end
