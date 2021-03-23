json.array!(@parts) do |part|	
  json.name part.name
  json.description part.description
  json.mfr_number part.mfr_number
  json.vendor_id part.vendors.first.id
end