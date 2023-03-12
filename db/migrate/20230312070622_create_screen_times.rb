class CreateScreenTimes < ActiveRecord::Migration[7.0]
  def change
    create_table :screen_times do |t|
      t.integer :duration
      t.string :screen_type
      t.string :app_name

      t.timestamps
    end
  end
end
