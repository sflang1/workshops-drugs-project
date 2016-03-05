json.array!(@available_drugs) do |available_drug|
  json.extract! available_drug, :id, :name, :code, :units
  json.url available_drug_url(available_drug, format: :json)
end
