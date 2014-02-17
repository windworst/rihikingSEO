json.array!(@targets) do |target|
  json.extract! target, :id, :name, :url, :status, :selector, :linkreg, :namereg, :scancount, :scantime, :updatetime
  json.url target_url(target, format: :json)
end
