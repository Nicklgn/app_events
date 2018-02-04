json.extract! schedule, :id, :event_id, :sname, :sstart, :sfinish, :splace, :sdesc, :created_at, :updated_at
json.url schedule_url(schedule, format: :json)
