json.array!(@deductions) do |deduction|
  json.extract! deduction, :id, :title, :value
  json.url deduction_url(deduction, format: :json)
end
