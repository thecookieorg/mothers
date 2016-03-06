json.array!(@accounts) do |account|
  json.extract! account, :id, :first_name, :last_name, :company_name, :phone_number, :address, :card_number, :name_on_card, :expiry, :cvc, :billing_posta_code
  json.url account_url(account, format: :json)
end
