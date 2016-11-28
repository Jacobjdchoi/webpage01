# Admin ids
Admin.create(email: ENV['ADMIN_EMAIL'], password: ENV['ADMIN_PASSWORD'], password_confirmation: ENV['ADMIN_PASSWORD'])
# Brands (1-5)
Brand.create(name: 'MOOG', summary_en: 'change this', summary_ko: '수정 하십시오')
Brand.create(name: 'Axon', summary_en: 'change this', summary_ko: '수정 하십시오')
Brand.create(name: 'AirBorn', summary_en: 'change this', summary_ko: '수정 하십시오')
Brand.create(name: 'ODU', summary_en: 'change this', summary_ko: '수정 하십시오')
Brand.create(name: 'STOCKO', summary_en: 'change this', summary_ko: '수정 하십시오')
# Moog (1-5)
ProductType.create(name_en: 'Slipring', name_ko: '슬립링')
ProductType.create(name_en: 'Motor', name_ko: '모터')
ProductType.create(name_en: 'Actuator', name_ko: '액츄에이터')
ProductType.create(name_en: 'Rotary Joint', name_ko: '로터리조인트')
ProductType.create(name_en: 'Other Moog Components', name_ko: '이외 Moog 제품')
# Axon' (6-10)
ProductType.create(name_en: "Axon'1", name_ko: "악쏜'1")
ProductType.create(name_en: "Axon'2", name_ko: "악쏜'2")
ProductType.create(name_en: "Axon'3", name_ko: "악쏜'3")
ProductType.create(name_en: "Axon'4", name_ko: "악쏜'4")
ProductType.create(name_en: "Other Axon' Components", name_ko: "이외 Axon' 제품")
# Airborn (11-15)
ProductType.create(name_en: 'Airborn1', name_ko: '에어본1')
ProductType.create(name_en: 'Airborn2', name_ko: '에어본2')
ProductType.create(name_en: 'Airborn3', name_ko: '에어본3')
ProductType.create(name_en: 'Airborn4', name_ko: '에어본3')
ProductType.create(name_en: 'Other Airborn Components', name_ko: '이외 Airborn 제품')
# Odu (16-20)
ProductType.create(name_en: 'ODU1', name_ko: '오듀1')
ProductType.create(name_en: 'ODU2', name_ko: '오듀2')
ProductType.create(name_en: 'ODU3', name_ko: '오듀3')
ProductType.create(name_en: 'ODU4', name_ko: '오듀4')
ProductType.create(name_en: 'Other ODU Components', name_ko: '이외 ODU 제품')
# Stocko (21-25)
ProductType.create(name_en: 'Stocko1', name_ko: '스토코1')
ProductType.create(name_en: 'Stocko2', name_ko: '스토코2')
ProductType.create(name_en: 'Stocko3', name_ko: '스토코3')
ProductType.create(name_en: 'Stocko4', name_ko: '스토코4')
ProductType.create(name_en: 'Other Stock Components', name_ko: '이외 Stocko 제품')
# Brands to ProductTypes associations (1-5)[Moog]
BrandProductType.create(brand_id: 1, product_type_id: 1)
BrandProductType.create(brand_id: 1, product_type_id: 2)
BrandProductType.create(brand_id: 1, product_type_id: 3)
BrandProductType.create(brand_id: 1, product_type_id: 4)
BrandProductType.create(brand_id: 1, product_type_id: 5)
# Brands to ProductTypes associations (6-10)[Axon']
BrandProductType.create(brand_id: 2, product_type_id: 6)
BrandProductType.create(brand_id: 2, product_type_id: 7)
BrandProductType.create(brand_id: 2, product_type_id: 8)
BrandProductType.create(brand_id: 2, product_type_id: 9)
BrandProductType.create(brand_id: 2, product_type_id: 10)
# Brands to ProductTypes associations (11-15)[Airborn]
BrandProductType.create(brand_id: 3, product_type_id: 11)
BrandProductType.create(brand_id: 3, product_type_id: 12)
BrandProductType.create(brand_id: 3, product_type_id: 13)
BrandProductType.create(brand_id: 3, product_type_id: 14)
BrandProductType.create(brand_id: 3, product_type_id: 15)
# Brands to ProductTypes associations (16-20)[ODU]
BrandProductType.create(brand_id: 4, product_type_id: 16)
BrandProductType.create(brand_id: 4, product_type_id: 17)
BrandProductType.create(brand_id: 4, product_type_id: 18)
BrandProductType.create(brand_id: 4, product_type_id: 19)
BrandProductType.create(brand_id: 4, product_type_id: 20)
# Brands to ProductTypes associations (21-25)[Stocko]
BrandProductType.create(brand_id: 5, product_type_id: 21)
BrandProductType.create(brand_id: 5, product_type_id: 22)
BrandProductType.create(brand_id: 5, product_type_id: 23)
BrandProductType.create(brand_id: 5, product_type_id: 24)
BrandProductType.create(brand_id: 5, product_type_id: 25)
# Product [MOOG][ProductType1] (1-5)
Product.create(name: 'test', url: 'http://www.google.com', product_type_id: 1)
Product.create(name: 'test', url: 'http://www.google.com', product_type_id: 1)
Product.create(name: 'test', url: 'http://www.google.com', product_type_id: 1)
Product.create(name: 'test', url: 'http://www.google.com', product_type_id: 1)
Product.create(name: 'test', url: 'http://www.google.com', product_type_id: 1)
# Product [MOOG][ProductType2] (6-10)
Product.create(name: 'test', url: 'http://www.google.com', product_type_id: 2)
Product.create(name: 'test', url: 'http://www.google.com', product_type_id: 2)
Product.create(name: 'test', url: 'http://www.google.com', product_type_id: 2)
Product.create(name: 'test', url: 'http://www.google.com', product_type_id: 2)
Product.create(name: 'test', url: 'http://www.google.com', product_type_id: 2)
# Product [MOOG][ProductType3] (11-15)
Product.create(name: 'test', url: 'http://www.google.com', product_type_id: 3)
Product.create(name: 'test', url: 'http://www.google.com', product_type_id: 3)
Product.create(name: 'test', url: 'http://www.google.com', product_type_id: 3)
Product.create(name: 'test', url: 'http://www.google.com', product_type_id: 3)
Product.create(name: 'test', url: 'http://www.google.com', product_type_id: 3)
# Product [MOOG][ProductType4] (16-20)
Product.create(name: 'test', url: 'http://www.google.com', product_type_id: 4)
Product.create(name: 'test', url: 'http://www.google.com', product_type_id: 4)
Product.create(name: 'test', url: 'http://www.google.com', product_type_id: 4)
Product.create(name: 'test', url: 'http://www.google.com', product_type_id: 4)
Product.create(name: 'test', url: 'http://www.google.com', product_type_id: 4)
# Product [MOOG][ProductType5] (21-25)
Product.create(name: 'test', url: 'http://www.google.com', product_type_id: 5)
Product.create(name: 'test', url: 'http://www.google.com', product_type_id: 5)
Product.create(name: 'test', url: 'http://www.google.com', product_type_id: 5)
Product.create(name: 'test', url: 'http://www.google.com', product_type_id: 5)
Product.create(name: 'test', url: 'http://www.google.com', product_type_id: 5)
# Product [AXON'][ProductType6] (26-30)
Product.create(name: 'test', url: 'http://www.google.com', product_type_id: 6)
Product.create(name: 'test', url: 'http://www.google.com', product_type_id: 6)
Product.create(name: 'test', url: 'http://www.google.com', product_type_id: 6)
Product.create(name: 'test', url: 'http://www.google.com', product_type_id: 6)
Product.create(name: 'test', url: 'http://www.google.com', product_type_id: 6)
# Product [Axon'][ProductType7] (31-35)
Product.create(name: 'test', url: 'http://www.google.com', product_type_id: 7)
Product.create(name: 'test', url: 'http://www.google.com', product_type_id: 7)
Product.create(name: 'test', url: 'http://www.google.com', product_type_id: 7)
Product.create(name: 'test', url: 'http://www.google.com', product_type_id: 7)
Product.create(name: 'test', url: 'http://www.google.com', product_type_id: 7)
# Product [Axon'][ProductType8] (36-40)
Product.create(name: 'test', url: 'http://www.google.com', product_type_id: 8)
Product.create(name: 'test', url: 'http://www.google.com', product_type_id: 8)
Product.create(name: 'test', url: 'http://www.google.com', product_type_id: 8)
Product.create(name: 'test', url: 'http://www.google.com', product_type_id: 8)
Product.create(name: 'test', url: 'http://www.google.com', product_type_id: 8)
# Product [Axon'][ProductType9] (41-45)
Product.create(name: 'test', url: 'http://www.google.com', product_type_id: 9)
Product.create(name: 'test', url: 'http://www.google.com', product_type_id: 9)
Product.create(name: 'test', url: 'http://www.google.com', product_type_id: 9)
Product.create(name: 'test', url: 'http://www.google.com', product_type_id: 9)
Product.create(name: 'test', url: 'http://www.google.com', product_type_id: 9)
# Product [Axon'][ProductType10] (46-50)
Product.create(name: 'test', url: 'http://www.google.com', product_type_id: 10)
Product.create(name: 'test', url: 'http://www.google.com', product_type_id: 10)
Product.create(name: 'test', url: 'http://www.google.com', product_type_id: 10)
Product.create(name: 'test', url: 'http://www.google.com', product_type_id: 10)
Product.create(name: 'test', url: 'http://www.google.com', product_type_id: 10)

# customers (1-5)
Customer.create(name_en: 'LG Electronics', name_ko: 'LG전자')
Customer.create(name_en: 'HYUNDAI Motor', name_ko: '현대자동차')
Customer.create(name_en: 'SAMSUNG Electronics', name_ko: '삼성전자')
Customer.create(name_en: 'HYUNDAI Rotem', name_ko: '현대로템')
Customer.create(name_en: 'SK Innovation', name_ko: 'SK 이노베이션')
# customers (6-10)
Customer.create(name_en: 'HYUNDAI Heavy Industries', name_ko: '현대중공업')
Customer.create(name_en: 'Hanwha System', name_ko: '한화시스템')
Customer.create(name_en: 'HYUNDAI STEEL', name_ko: '현대철강')
Customer.create(name_en: 'Agency for Defense Department', name_ko: '국방과학연구소')
Customer.create(name_en: 'Korea Aerospace Industries Ltd.', name_ko: '한국항공우주산업(주)')
# customers (11-15)
Customer.create(name_en: 'KARI', name_ko: '한국항공연구소')
Customer.create(name_en: 'LIG NEX1', name_ko: 'LIG  넥스원')
Customer.create(name_en: 'FIRSTEC CO. LTD.', name_ko: '퍼스텍')
Customer.create(name_en: 'YURA', name_ko: '유라')
Customer.create(name_en: 'SEMIKRON', name_ko: '세미크론')
# Photos [Customer] (1-5)
Photo.create(pics: File.open(File.join(Rails.root, 'public/customers_logo/lg_electronics.png')), images_id: 1, images_type: 'Customer')
Photo.create(pics: File.open(File.join(Rails.root, 'public/customers_logo/hyundai_motor.png')), images_id: 2, images_type: 'Customer')
Photo.create(pics: File.open(File.join(Rails.root, 'public/customers_logo/samsung_electronics.png')), images_id: 3, images_type: 'Customer')
Photo.create(pics: File.open(File.join(Rails.root, 'public/customers_logo/hyundai_rotem.png')), images_id: 4, images_type: 'Customer')
Photo.create(pics: File.open(File.join(Rails.root, 'public/customers_logo/sk_innovation.png')), images_id: 5, images_type: 'Customer')
# Photos [Customer] (6-10)
Photo.create(pics: File.open(File.join(Rails.root, 'public/customers_logo/hyundai_heavy_industries.png')), images_id: 6, images_type: 'Customer')
Photo.create(pics: File.open(File.join(Rails.root, 'public/customers_logo/hanwha_system.png')), images_id: 7, images_type: 'Customer')
Photo.create(pics: File.open(File.join(Rails.root, 'public/customers_logo/hyundai_steel.png')), images_id: 8, images_type: 'Customer')
Photo.create(pics: File.open(File.join(Rails.root, 'public/customers_logo/add.png')), images_id: 9, images_type: 'Customer')
Photo.create(pics: File.open(File.join(Rails.root, 'public/customers_logo/kai.png')), images_id: 10, images_type: 'Customer')
# Photos [Customer] (11-15)
Photo.create(pics: File.open(File.join(Rails.root, 'public/customers_logo/kari.png')), images_id: 11, images_type: 'Customer')
Photo.create(pics: File.open(File.join(Rails.root, 'public/customers_logo/lig_nex1.png')), images_id: 12, images_type: 'Customer')
Photo.create(pics: File.open(File.join(Rails.root, 'public/customers_logo/firstec.png')), images_id: 13, images_type: 'Customer')
Photo.create(pics: File.open(File.join(Rails.root, 'public/customers_logo/yura_tech.png')), images_id: 14, images_type: 'Customer')
Photo.create(pics: File.open(File.join(Rails.root, 'public/customers_logo/semikron.png')), images_id: 15, images_type: 'Customer')
# Photos [Brand] (1-5)
Photo.create(pics: File.open(File.join(Rails.root, 'public/suppliers_logo/moog.png')), images_id: 1, images_type: 'Brand')
Photo.create(pics: File.open(File.join(Rails.root, 'public/suppliers_logo/axon.png')), images_id: 2, images_type: 'Brand')
Photo.create(pics: File.open(File.join(Rails.root, 'public/suppliers_logo/airborn.png')), images_id: 3, images_type: 'Brand')
Photo.create(pics: File.open(File.join(Rails.root, 'public/suppliers_logo/odu.png')), images_id: 4, images_type: 'Brand')
Photo.create(pics: File.open(File.join(Rails.root, 'public/suppliers_logo/stocko.png')), images_id: 5, images_type: 'Brand')









