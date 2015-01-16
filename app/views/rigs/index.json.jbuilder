json.array!(@rigs) do |rig|
  json.extract! rig, :id, :company_id, :number
  json.url rig_url(rig, format: :json)
end
