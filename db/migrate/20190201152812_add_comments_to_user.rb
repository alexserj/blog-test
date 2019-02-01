class AddCommentsToUsers < ActiveRecord::Migration[5.2]
  def change
    add_reference :comments, :users, foreign_key: true, index: true
  end
end
