devises = ["Bitcoin", "Ethereum", "XRP", "Bitcoin Cash", "EOS", "Litecoin", "Cardano", "Stellar", "IOTA", "Tether", "NEO", "TRON", "Monero", "Dash", "Ethereum Classic", "NEM", "Binance Coin", "VeChain", "OmiseGO", "Qtum","Test"]
values = ["6558.07", "468.95", "0.487526", "762.84", "8.86", "85.26", "0.151268", "0.206756", "1.18", "0.998033", "39.47", "0.038865", "140.57", "241.10", "16.40", "0.184721", "14.05", "2.64", "7.96", "8.98","6804.87"]


my_hash = Hash[devises.zip(values)]


#find highest crypto
def highest_crypto_value(hash)
    hash.max_by{|k,v| v.to_f}
end
puts highest_crypto_value(my_hash)


#find lowest crypto
def lowest_crypto_value(hash)
    hash.min_by{|k,v| v.to_f}
end
puts lowest_crypto_value(my_hash)


#find crypto under value 6k
def crypto_under_6k(hash)
    hash.select {|k,v| v.to_f < 6000.0} 
end
puts crypto_under_6k(my_hash)


#find highest crypto under value 6k
def highest_crypto_under_6k(hash)
    hash.select {|k,v| v.to_f < 6000.0}.max_by{|k,v| v.to_f}
end
puts highest_crypto_under_6k(my_hash)