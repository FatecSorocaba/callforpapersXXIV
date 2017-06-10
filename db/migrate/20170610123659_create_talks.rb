class CreateTalks < ActiveRecord::Migration[5.1]
  def change
    create_table :talks do |t|
      t.string :title
      t.text :description
      t.integer :theme
      t.integer :required_knowledge
      t.integer :speaker_id

      t.timestamps
    end
  end
end
