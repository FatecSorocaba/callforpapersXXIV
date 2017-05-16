class AddInfoFieldsToSpeaker < ActiveRecord::Migration[5.1]
  def change
    change_table :speakers do |t|
      t.string :email, :company, :biography, :website
    end
  end
end
