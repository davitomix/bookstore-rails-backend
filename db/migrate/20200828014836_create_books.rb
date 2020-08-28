class CreateBooks < ActiveRecord::Migration[5.2]
  def change
    create_table :books do |t|
      t.string :title
      t.string :author
      t.string :category
      t.string :pages
      t.string :progress

      t.timestamps
    end
  end
end
