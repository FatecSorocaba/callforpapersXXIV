class AddWebsiteToSpeaker < ActiveRecord::Migration[5.1]
  def change
    add_column :speakers, :website, :string
  end
end
