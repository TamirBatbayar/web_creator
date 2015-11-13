class CreateWebPages < ActiveRecord::Migration
  def change
    create_table :web_pages do |t|
      t.string :company_name
      t.string :url
      t.text :content

      t.timestamps null: false
    end
  end
end
