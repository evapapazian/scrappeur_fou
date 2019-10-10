require 'nokogiri'
require 'open-uri'
require 'rubygems'


def get_townhall_email(townhall_url) #première def qui récupère l'email d'une mairie à partir de sa page URL


page = Nokogiri::HTML(open(townhall_url))

email_townhall = page.xpath('/html/body/div/main/section[2]/div/table/tbody/tr[4]/td[2]').text()
puts email_townhall

return 

end 
get_townhall_email("http://annuaire-des-mairies.com/95/ableiges.html")





def get_townhall_name 

page = Nokogiri::HTML(open("http://annuaire-des-mairies.com/val-d-oise.html"))
townhall_name = page.xpath("//a[@class = 'lientxt']")						#le a// ça permet de prendre tt ce qu'il y a en dessous 


puts townhall_name
return townhall_name
end


get_townhall_name





def get_townhall_urls  #récupère l'adresse url qui mène à chaque ville


end 

	#applique le email_townhall à tous les liens qui mènent vers les pages des villes 





	#http://annuaire-des-mairies.com/val-d-oise.html : page des mairies du val d'oise 

	#/html/body/table/tbody/tr[3]/td/table/tbody/tr/td[2]/p[2]/object/table/tbody/tr[2]/td/table/tbody/tr/td[1]/p/a[1]
	#/html/body/table/tbody/tr[3]/td/table/tbody/tr/td[2]/p[2]/object/table/tbody/tr[2]/td/table/tbody/tr/td[1]/p/a[62]
	#/html/body/table/tbody/tr[3]/td/table/tbody/tr/td[2]/p[2]/object/table/tbody/tr[2]/td/table/tbody/tr/td[3]/p/a[61]
	#c'est le xpath qui mène à une ville, va de [1] à [62] pour la colonne 1 (td [1]); de [1] à [62] pour la colonne 2 (td [2]) ; de [1] à [61] pour la colonne 3
