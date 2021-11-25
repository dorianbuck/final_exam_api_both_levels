class CreateTableComment < ActiveRecord::Migration[6.0]
  def change
    create_table :table_comments do |t|
      t.string :body
      t.belongs_to :article, foreign_key: true
    end
  end
end
