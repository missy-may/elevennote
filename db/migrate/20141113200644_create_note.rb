class CreateNote < ActiveRecord::Migration
  def change
    create_table :notes do |t|
      t.string :title
      t.text :body_html
      t.string :body_text
      t.timestamps
    end
  end
end
