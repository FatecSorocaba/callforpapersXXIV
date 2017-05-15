class AddBiographyToSpeaker < ActiveRecord::Migration[5.1]
  def change
    add_column :speakers, :biography, :string
  end
end
