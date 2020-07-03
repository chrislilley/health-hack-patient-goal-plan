json.extract! schedule_item, :id, :scheduledDate, :scheduledTime, :title, :subtitle, :attended, :created_at, :updated_at
json.url schedule_item_url(schedule_item, format: :json)
