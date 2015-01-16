json.array!(@rankings) do |ranking|
  json.extract! ranking, :id, :score, :user_id, :company_id, :ranking_for_day
  json.url ranking_url(ranking, format: :json)
end
