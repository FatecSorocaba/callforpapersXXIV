class AddEmailToSpeaker < ActiveRecord::Migration[5.1]
  def change
    add_column :speakers, :email, :string
  end
end
