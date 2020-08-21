class CreateBooks < ActiveRecord::Migration[6.0]
  def change
    create_table :books do |t|
      t.string :title
      t.string :author
      t.text :body
      t.text :spine_image
      t.text :main_image

      t.timestamps
    end
  end
end
