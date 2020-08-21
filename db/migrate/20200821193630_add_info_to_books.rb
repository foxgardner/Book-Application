class AddInfoToBooks < ActiveRecord::Migration[6.0]
  def change
    add_column :books, :color, :string
    add_column :books, :width, :string
    add_column :books, :height, :string
  end
end
