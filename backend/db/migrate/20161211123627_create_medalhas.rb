class CreateMedalhas < ActiveRecord::Migration[5.0]
  def change
    create_table :medalhas do |t|
      t.string :titulo

      t.timestamps
    end
  end
end
