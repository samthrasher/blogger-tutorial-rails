class CreateTaggings < ActiveRecord::Migration
  def change
    create_table :taggings do |t|
      t.string :name
      t.references :tag, index: true, foreign_key: true
      t.references :article, index: true, foreign_key: true

      t.timestamps null: false
    end
  end
end
