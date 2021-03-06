json.array!(@properties) do |property|
  json.extract! property, :id, :address, :work_outstanding, :landlord, :tenant, :work_outstanding_type, :latitude, :longitude
  json.url property_url(property, format: :json)
end
