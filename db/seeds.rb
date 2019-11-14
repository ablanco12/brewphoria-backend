# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)



# BREWERIES
freetail = Brewery.create(name: 'Freetail Brewing Co.', location: 'San Antonio, TX', image_url: 'http://www.sporcle.com/blog/wp-content/uploads/2018/10/1-44.jpg')

independence = Brewery.create(name: 'Independence Brewing Co.', location: 'Austin, TX', image_url: 'https://media-cdn.tripadvisor.com/media/photo-s/05/43/5b/fb/independence-brewing.jpg')

karbach = Brewery.create(name: 'Karbach Brewing Co.', location: 'Houston, TX', image_url: 'https://daily.sevenfifty.com/app/uploads/2019/01/SFD_ABInBev_Karbach_2_-1.jpg')

deepellum = Brewery.create(name: 'Deep Ellum Brewing Co.', location: 'Dallas, TX', image_url: 'https://i.pinimg.com/736x/15/4a/d4/154ad41678869b127f19830611710aaa.jpg')


# BEERS

100.times do

    Beer.create(name: Faker::Beer.name, style: Faker::Beer.style, abv: Faker::Beer.alcohol, description: Faker::Beer.ibu, image_url: "https://www.freetailbrewing.com/wp-content/uploads/FreetailOriginal_Can.png", brewery_id: rand(1...50))
    
    
end

50.times do

    Brewery.create(name: Faker::Beer.brand, location: Faker::Beer.blg, image_url: 'http://www.sporcle.com/blog/wp-content/uploads/2018/10/1-44.jpg')
    Brewery.create(name: Faker::Beer.brand, location: Faker::Beer.blg, image_url: 'https://media-cdn.tripadvisor.com/media/photo-s/05/43/5b/fb/independence-brewing.jpg')
    Brewery.create(name: Faker::Beer.brand, location: Faker::Beer.blg, image_url: 'https://daily.sevenfifty.com/app/uploads/2019/01/SFD_ABInBev_Karbach_2_-1.jpg')
    Brewery.create(name: Faker::Beer.brand, location: Faker::Beer.blg, image_url: 'https://i.pinimg.com/736x/15/4a/d4/154ad41678869b127f19830611710aaa.jpg')
        
end

# user1 = User.create(username: 'ablanco', password: 'ablanco', password_confirmation: 'ablanco')

freetailbeer1 = Beer.create(name: 'Original', style: 'Amber Ale', abv: '6.1', description: Faker::Beer.ibu, image_url: 'https://www.freetailbrewing.com/wp-content/uploads/FreetailOriginal_Can.png', brewery_id: '1')
freetailbeer2 = Beer.create(name: 'Bat Outta Helles', style: 'Bavarian Helles Lager', abv: '4.8', description: Faker::Beer.ibu, image_url: 'https://www.freetailbrewing.com/wp-content/uploads/helles-can.png', brewery_id: '1')
freetailbeer3 = Beer.create(name: 'RYE-WIT', style: 'Belgian Style Wheat', abv: '4.9', description: Faker::Beer.ibu, image_url: 'https://www.freetailbrewing.com/wp-content/uploads/RyeWit_Can-1.png', brewery_id: '1')
freetailbeer4 = Beer.create(name: 'Soul Doubt', style: 'India Pale Ale', abv: '6.8', description: Faker::Beer.ibu, image_url: 'https://www.freetailbrewing.com/wp-content/uploads/SoulDoubt_Can-1.png', brewery_id: '1')
freetailbeer5 = Beer.create(name: 'San Antonio Pale Ale', style: 'Pale Ale', abv: '5.9', description: Faker::Beer.ibu, image_url: 'https://www.freetailbrewing.com/wp-content/uploads/SAPaleAle_Can.png', brewery_id: '1')
freetailbeer6 = Beer.create(name: 'Slo Flo Session IPA', style: 'Session IPA', abv: '4.0', description: Faker::Beer.ibu, image_url: 'https://www.freetailbrewing.com/wp-content/themes/freetail-2019/dist/img/sloflo3.png', brewery_id: '1')
freetailbeer7 = Beer.create(name: 'Conserveza', style: 'American Blonde Ale', abv: '4.9', description: Faker::Beer.ibu, image_url: 'https://www.freetailbrewing.com/wp-content/themes/freetail-2019/dist/img/conserveza2.png', brewery_id: '1')

independencebeer1 = Beer.create(name: 'Austin Amber', style: 'Amber Ale', abv: '6', description: Faker::Beer.ibu, image_url: 'http://independencebrewing.com/images/amber_can_web_lo-res-01.png', brewery_id: '2')
independencebeer2 = Beer.create(name: 'Stash IPA', style: 'India Pale Ale', abv: '7.5', description: Faker::Beer.ibu, image_url: 'http://independencebrewing.com/images/stash_can_web_lo-res-01.png', brewery_id: '2')
independencebeer3 = Beer.create(name: 'Native Texan', style: 'Pilsner', abv: '5.2', description: Faker::Beer.ibu, image_url: 'http://independencebrewing.com/images/native_can_web_lo-res-02.png', brewery_id: '2')
independencebeer4 = Beer.create(name: 'Power & Light', style: 'Session IPA', abv: '5.3', description: Faker::Beer.ibu, image_url: 'http://independencebrewing.com/images/powerandlight_can_web_lo-res-01-01.png', brewery_id: '2')
independencebeer5 = Beer.create(name: 'RedBud', style: 'Berliner Weisse', abv: '4.9', description: Faker::Beer.ibu, image_url: 'http://independencebrewing.com/images/redbud_can_web_lo-res-01.png', brewery_id: '2')
independencebeer6 = Beer.create(name: 'Convict Hill', style: 'Oatmeal Stout', abv: '8', description: Faker::Beer.ibu, image_url: 'http://independencebrewing.com/images/convict_can_web_lo-res-01.png', brewery_id: '2')

karbachbeer1 = Beer.create(name: 'Love Street', style: 'Kolsch Blonde', abv: '4.9', description: Faker::Beer.ibu, image_url: 'https://www.karbachbrewing.com/wp-content/uploads/2018/09/love-street-kolsch-345x540.png', brewery_id: '3')
karbachbeer2 = Beer.create(name: 'Hopadillo IPA', style: 'India Pale Ale', abv: '6.6', description: Faker::Beer.ibu, image_url: 'https://www.karbachbrewing.com/wp-content/uploads/2018/09/hopadillo-ipa-345x540.png', brewery_id: '3')
karbachbeer3 = Beer.create(name: 'Crawford Bock', style: 'Ballpark Beer', abv: '4.5', description: Faker::Beer.ibu, image_url: 'https://www.karbachbrewing.com/wp-content/uploads/2019/01/Bock-345x540.png', brewery_id: '3')
karbachbeer4 = Beer.create(name: 'Hop Tongue IPA', style: 'West Coast IPA', abv: '7.5', description: Faker::Beer.ibu, image_url: 'https://www.karbachbrewing.com/wp-content/uploads/2019/08/hoptongues-e1565213690883-345x540.png', brewery_id: '3')
karbachbeer5 = Beer.create(name: 'Blood Orange Radler', style: 'Blood Orange Golden', abv: '3.5', description: Faker::Beer.ibu, image_url: 'https://www.karbachbrewing.com/wp-content/uploads/2018/09/blood-orange-radler-345x540.png', brewery_id: '3')
karbachbeer6 = Beer.create(name: 'Cherry Limeade Radler', style: 'Cherry & Lime', abv: '3.5', description: Faker::Beer.ibu, image_url: 'https://www.karbachbrewing.com/wp-content/uploads/2019/02/cherrylimeade-e1551208413968-345x540.png', brewery_id: '3')
karbachbeer7 = Beer.create(name: 'Game Changer', style: 'Sea Salt, Turmuric, Acai', abv: '2.8', description: Faker::Beer.ibu, image_url: 'https://www.karbachbrewing.com/wp-content/uploads/2019/06/KBC-Web-BeerTemplate-345x540.png', brewery_id: '3')
karbachbeer8 = Beer.create(name: 'DayMaker', style: 'Sparkling Rose', abv: '6', description: Faker::Beer.ibu, image_url: 'https://www.karbachbrewing.com/wp-content/uploads/2018/09/newdaymaker-345x540.png', brewery_id: '3')
karbachbeer9 = Beer.create(name: 'Hella Chela', style: 'Spicy Cerveza', abv: '5', description: Faker::Beer.ibu, image_url: 'https://www.karbachbrewing.com/wp-content/uploads/2019/03/hellachelacan12oz-345x540.png', brewery_id: '3')
karbachbeer10 = Beer.create(name: 'Light Circus', style: 'Hazy IPA', abv: '6', description: Faker::Beer.ibu, image_url: 'https://www.karbachbrewing.com/wp-content/uploads/2019/03/Karbach-LightCircus-Rendering-1-e1552668290438-345x540.png', brewery_id: '3')
karbachbeer11 = Beer.create(name: 'Weekend Warrior', style: 'Citrus Bitterness', abv: '5.5', description: Faker::Beer.ibu, image_url: 'https://www.karbachbrewing.com/wp-content/uploads/2018/09/weekend-warrior-pale-ale-345x540.png', brewery_id: '3')
karbachbeer12 = Beer.create(name: 'Lemon & Ginger Radler', style: 'Lemony Ginger Radler', abv: '3.5', description: Faker::Beer.ibu, image_url: 'https://www.karbachbrewing.com/wp-content/uploads/2018/09/lemon-ginger-radler-345x540.png', brewery_id: '3')
karbachbeer13 = Beer.create(name: 'Rodeo Clown Double IPA', style: 'Gritty Intense IPA', abv: '9.5', description: Faker::Beer.ibu, image_url: 'https://www.karbachbrewing.com/wp-content/uploads/2018/09/rodeo-clown-double-ipa-345x540.png', brewery_id: '3')

deepellumbeer1 = Beer.create(name: 'Blind Lemon', style: 'Hard Seltzer', abv: '5.5', image_url: 'https://www.deepellumbrewing.com/wp-content/uploads/2019/06/Blind-Lemon-Rendering-v7.png')
deepellumbeer2 = Beer.create(name: 'Dallas Blonde', style: 'American Blonde Ale', abv: '5.2', image_url: 'https://www.deepellumbrewing.com/wp-content/uploads/2018/12/can-dallas-blonde-featim.png')
deepellumbeer3 = Beer.create(name: 'Deep Ellum IPA', style: 'India Pale Ale', abv: '7.0', image_url: 'https://www.deepellumbrewing.com/wp-content/uploads/2018/12/can-deep-ellum-ipa-featim.png')
# deepellumbeer4 = Beer.create(name: 'Blind Lemon', style: 'Hard Seltzer', abv: '5.5', image_url: 'https://www.deepellumbrewing.com/wp-content/uploads/2019/06/Blind-Lemon-Rendering-v7.png')
# deepellumbeer5 = Beer.create(name: 'Blind Lemon', style: 'Hard Seltzer', abv: '5.5', image_url: 'https://www.deepellumbrewing.com/wp-content/uploads/2019/06/Blind-Lemon-Rendering-v7.png')
# deepellumbeer6 = Beer.create(name: 'Blind Lemon', style: 'Hard Seltzer', abv: '5.5', image_url: 'https://www.deepellumbrewing.com/wp-content/uploads/2019/06/Blind-Lemon-Rendering-v7.png')
# deepellumbeer7 = Beer.create(name: 'Blind Lemon', style: 'Hard Seltzer', abv: '5.5', image_url: 'https://www.deepellumbrewing.com/wp-content/uploads/2019/06/Blind-Lemon-Rendering-v7.png')
# deepellumbeer8 = Beer.create(name: 'Blind Lemon', style: 'Hard Seltzer', abv: '5.5', image_url: 'https://www.deepellumbrewing.com/wp-content/uploads/2019/06/Blind-Lemon-Rendering-v7.png')
# deepellumbeer9 = Beer.create(name: 'Blind Lemon', style: 'Hard Seltzer', abv: '5.5', image_url: 'https://www.deepellumbrewing.com/wp-content/uploads/2019/06/Blind-Lemon-Rendering-v7.png')

canon = Camera.create(name: 'Canon EOS 5D Mark IV', description: '', image_url: '')
canon = Camera.create(name: 'Canon EOS Rebel T7i', description: '', image_url: '')
nikon = Camera.create(name: 'Nikon D850', description: '', image_url: '')
fuji = Camera.create(name: 'Fujifilm GFX 50S', description: '', image_url: '')
sony = Camera.create(name: 'Sony A7R III', description: '', image_url: '')
hasselblad = Camera.create(name: 'Hasselblad X1D-50c', description: '', image_url: '')
pentax = Camera.create(name: 'Pentax 645D', description: '', image_url: '')
leica = Camera.create(name: 'Leica M10', description: '', image_url: '')
