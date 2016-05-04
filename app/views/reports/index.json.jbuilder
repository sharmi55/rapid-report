json.array!(@reports) do |report|
  json.extract! report, :id, :first_name, :last_name, :summary
  json.url report_url(report, format: :json)
end
