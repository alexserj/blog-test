class AddArticlesToUsers < ActiveRecord::Migration[5.2]
  def change
    add_reference :articles, :users, foreign_key: true, index: true
  end
end
