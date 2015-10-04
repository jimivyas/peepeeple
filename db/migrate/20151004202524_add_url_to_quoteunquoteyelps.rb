class AddUrlToQuoteunquoteyelps < ActiveRecord::Migration
  def change
    add_column :quoteunquoteyelps, :url, :string
  end
end
