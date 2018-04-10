json.extract! paymen_method, :id, :card_number, :bank, :cardholder_name, :created_at, :updated_at
json.url paymen_method_url(paymen_method, format: :json)
