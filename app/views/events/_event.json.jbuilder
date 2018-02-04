json.extract! event, :id, :ename, :estart, :efinish, :level, :edesc, :member, :eplace, :publ, :created_at, :updated_at
json.url event_url(event, format: :json)
