class CreateScheduleItems < ActiveRecord::Migration[6.0]
  def change
    create_table :schedule_items do |t|
      t.date :scheduledDate
      t.time :scheduledTime
      t.string :title
      t.string :subtitle
      t.boolean :attended

      t.timestamps
    end
  end
end
