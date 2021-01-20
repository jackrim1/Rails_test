class AddFieldToTweet < ActiveRecord::Migration[6.1]
  def change
    add_column :tweets, :footnote, :string
  end
end
