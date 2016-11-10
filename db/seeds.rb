# This file should contain all the record creation needed to seed the database
# with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db
# with db:setup).
#
# Examples:
#
#   cities = City.create([ {name: 'Chicago' }, {} name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)
Admin.create(id: 1, email: ENV['ADMIN_EMAIL'], password: ENV['ADMIN_PASSWORD'], password_confirmation: ENV['ADMIN_PASSWORD'])
ProductType.create(id: 1, name_en: 'Cables', name_ko: '케이블')
ProductType.create(id: 2, name_en: 'Connectors', name_ko: '커넥터')
ProductType.create(id: 3, name_en: 'Terminals', name_ko: '터미널')
ProductType.create(id: 4, name_en: 'Motion Control Components', name_ko: '모션컨트롤제품')
Brand.create(id: 1, name: 'Axon', summary: 'what we do~~~')
Brand.create(id: 2, name: 'ODU', summary: 'arrogant f*cks')
Brand.create(id: 3, name: 'Stocko', summary: 'same arrogant german c*nts')
Brand.create(id: 4, name: 'MOOG', summary: 'our friend')
# brands 2 product types associations
BrandProductType.create(id: 1, brand_id: 1, product_type_id: 1)
BrandProductType.create(id: 2, brand_id: 2, product_type_id: 1)
BrandProductType.create(id: 3, brand_id: 3, product_type_id: 1)
BrandProductType.create(id: 4, brand_id: 4, product_type_id: 1)
Customer.create(id: 1, name_en: 'LG Electronics', name_ko: 'LG전자')
Customer.create(id: 2, name_en: 'Korea Aerospace Industries Ltd.', name_ko: '한국항공우주산업(주)')
Customer.create(id: 3, name_en: 'HYUNDAI Motors', name_ko: '현대자동차')
Customer.create(id: 4, name_en: 'Stark Industries Inc.', name_ko: '스타크산업(주)')