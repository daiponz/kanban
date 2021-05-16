class AddTitleToList < ActiveRecord::Migration[6.1]
  def change
    add_column :lists, :title, :string, null: false
    add_reference :lists, :user, null: false , foreign_key: true
  end
end
