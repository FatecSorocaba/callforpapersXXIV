class AddUuidToSpeaker < ActiveRecord::Migration[5.1]
  def change
    add_column :speakers, :uuid, :string
  end
end
