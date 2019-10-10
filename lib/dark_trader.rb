require 'nokogiri'
require 'open-uri'
require 'rubygems'

#1- isoler les éléments html + création du hash final 

def perform

page = Nokogiri::HTML(open("https://coinmarketcap.com/all/views/all/"))


crypto_symbols = page.xpath('//td[3]')	 #On prend td (colonne) n°3 (aka celle des symboles)


crypto_price = page.xpath('//td[5]')  #crypto_symbols=colonne des symboles; crypto_price=colone des prix 

#Création du crypto_hash, qui contient les données des symboles et des prix)

crypto_hash = Hash.new  #on créée le crypto_hash (qui sera le hash final)
crypto_hash = create_temporary_hash(crypto_symbols, crypto_price) #le crypto hash est égal à la méthode create temporary hash qui dépend des crypto symbol et crypto price


print crypto_hash	
return 

end 




#2-mettre dans un hash: on veut mettre crypto_symbols et crypto_price dans un hash temporaire, retourné ensuite dans le hash final

def create_temporary_hash (crypto_symbols,crypto_price)
	temporary = Hash.new
	for a in 0..crypto_symbols.size-1 do
		temporary[crypto_symbols[a].text]=crypto_price[a].text
	end
	return temporary
end 

perform









