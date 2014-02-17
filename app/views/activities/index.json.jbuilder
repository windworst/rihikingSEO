json.array!(@activities) do |activity|
  json.extract! activity, :id, :name, :category_id, :link, :status
  json.url activity_url(activity, format: :json)
end
