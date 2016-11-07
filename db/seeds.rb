# This file should contain all the record creation needed to seed the database
# with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db
# with db:setup).
#
# Examples:
#
#   cities = City.create([ {name: 'Chicago' }, {} name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)
Admin.create(id: 1, email: ENV['JACOB_EMAIL'], password: ENV['JACOB_PASSWORD'], password_confirmation: ENV['ADMIN_PASSWORD'])
ProductType.create(id: 1, name_en: 'Cables', name_ko: '케이블')
ProductType.create(id: 2, name_en: 'Connectors', name_ko: '커넥터')
ProductType.create(id: 3, name_en: 'Terminals', name_ko: '터미널')
ProductType.create(id: 4, name_en: 'Motion Control Components', name_ko: '모션컨트롤제품')
Brand.create(id: 1, name: 'Axon')
Brand.create(id: 2, name: 'ODU')
Brand.create(id: 3, name: 'Stocko')
Brand.create(id: 4, name: 'MOOG')
# products # axon
Brand.find(1).products.create(id: 1, name: 'Coaxial')
Brand.find(1).products.create(id: 2, name: 'AeroSpace')
Brand.find(1).products.create(id: 3, name: 'HeatProof')
Brand.find(1).products.create(id: 4, name: 'Magical cords')
Brand.find(1).products.create(id: 5, name: 'Neurons')
# products # odu
Brand.find(2).products.create(id: 6, name: 'ODU MAC')
# brands 2 product types associations
BrandProductType.create(id: 1, brand_id: 1, product_type_id: 1)
BrandProductType.create(id: 2, brand_id: 2, product_type_id: 1)
BrandProductType.create(id: 3, brand_id: 3, product_type_id: 1)
BrandProductType.create(id: 4, brand_id: 4, product_type_id: 1)
