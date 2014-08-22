json.array!(@comps) do |comp|
  json.extract! comp, :id, :address, :street, :cross_street_1, :cross_street_2, :frontage, :ground, :basement, :mezz, :second, :third, :annual_rent, :agent_landlord_company, :contact, :telephone, :email, :term, :history, :date, :updated_date, :comments
  json.url comp_url(comp, format: :json)
end
