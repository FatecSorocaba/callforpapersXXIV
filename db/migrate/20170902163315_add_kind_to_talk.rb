class AddKindToTalk < ActiveRecord::Migration[5.1]
  def change
    add_column :talks, :kind, :integer
  end
end
