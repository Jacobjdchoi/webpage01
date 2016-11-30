# Admin ids
Admin.create(email: ENV['ADMIN_EMAIL'], password: ENV['ADMIN_PASSWORD'], password_confirmation: ENV['ADMIN_PASSWORD'])
# Brands (1-5)
@moog = Brand.create(id: 1, name: 'MOOG')
@axon = Brand.create(id: 2, name: 'Axon')
@airborn = Brand.create(id: 3, name: 'AirBorn')
@odu = Brand.create(id: 4, name: 'ODU')
@stocko = Brand.create(id: 5, name: 'STOCKO')
# Product Types
  # Moog (1-5)
  @moogSlipRing = @moog.product_types.create(name_en: 'Slip Rings', name_ko: '슬립링')
  @moogMotor = @moog.product_types.create(name_en: 'Motors & Servo Motors', name_ko: '모터 및 서보모터')
  @moogActuator = @moog.product_types.create(name_en: 'Actuators', name_ko: '액츄에이터')
  @moogRotaryJoint = @moog.product_types.create(name_en: 'Rotary Joints', name_ko: '로터리조인트')
  @moogOther = @moog.product_types.create(name_en: 'Other Moog Components', name_ko: '이외 Moog 제품')
  # Axon' (6-10)
  @axonCoaxial = @axon.product_types.create(name_en: "Coaxial Cables", name_ko: "코엑시얼케이블")
  @axonFlat = @axon.product_types.create(name_en: "Flat Cables", name_ko: "납작케이블")
  @axonWires = @axon.product_types.create(name_en: "Wires", name_ko: "와이어")
  @axonComposite = @axon.product_types.create(name_en: "Composite Cables", name_ko: "콤포짓케이블")
  @axonOther = @axon.product_types.create(name_en: "Other Axon' Components", name_ko: "이외 Axon' 제품")
  # Airborn (11-15)
  @airborn.product_types.create(name_en: 'Airborn1', name_ko: '에어본1')
  @airborn.product_types.create(name_en: 'Airborn2', name_ko: '에어본2')
  @airborn.product_types.create(name_en: 'Airborn3', name_ko: '에어본3')
  @airborn.product_types.create(name_en: 'Airborn4', name_ko: '에어본3')
  @airborn.product_types.create(name_en: 'Other Airborn Components', name_ko: '이외 Airborn 제품')
  # Odu (16-20)
  @odu.product_types.create(name_en: 'ODU1', name_ko: '오듀1')
  @odu.product_types.create(name_en: 'ODU2', name_ko: '오듀2')
  @odu.product_types.create(name_en: 'ODU3', name_ko: '오듀3')
  @odu.product_types.create(name_en: 'ODU4', name_ko: '오듀4')
  @odu.product_types.create(name_en: 'Other ODU Components', name_ko: '이외 ODU 제품')
  # Stocko (21-25)
  @stocko.product_types.create(name_en: 'Stocko1', name_ko: '스토코1')
  @stocko.product_types.create(name_en: 'Stocko2', name_ko: '스토코2')
  @stocko.product_types.create(name_en: 'Stocko3', name_ko: '스토코3')
  @stocko.product_types.create(name_en: 'Stocko4', name_ko: '스토코4')
  @stocko.product_types.create(name_en: 'Other Stock Components', name_ko: '이외 Stocko 제품')
# Products
  # Mooog
    # Slip Ring
    @moogSlipRing.products.create(name_ko: '항공우주 및 군수용 슬립링',name_en: 'Aerospace - Military Slip Rings', url: 'http://www.moog.com/products/slip-rings/aerospace-military-slip-rings.html')
    @moogSlipRing.products.create(name_ko: '커머셜 및 공업용 슬립링',name_en: 'Commercial - Industrial Slip Rings', url: 'http://www.moog.com/products/slip-rings/commercial-industrial-slip-rings.html')
    @moogSlipRing.products.create(name_ko: '해상용 슬립링',name_en: 'Marine Slip Rings', url: 'http://www.moog.com/products/slip-rings/marine-slip-rings.html')
    @moogSlipRing.products.create(name_ko: '오일 및 다운홀 슬립링',name_en: 'Oilfield - Downhole Slip Rings', url: 'http://www.moog.com/products/slip-rings/oilfield-downhole-slip-rings.html')
    @moogSlipRing.products.create(name_ko: '풍력 발전용 슬립링',name_en: 'Wind Turbine Slip Rings', url: 'http://www.moog.com/products/slip-rings/wind-turbine-slip-rings.html')
    # Motor
    @moogMotor.products.create(name_ko: '브러시 모터',name_en: 'Brush Motors', url: 'http://www.moog.com/products/motors-servomotors/brush-motors.html')
    @moogMotor.products.create(name_ko: '무브러시 모터',name_en: 'Brushless Motors', url: 'http://www.moog.com/products/motors-servomotors/brushless-motors.html')
    @moogMotor.products.create(name_ko: '무브러시 서보 모터',name_en: 'Brushless Servo Motors', url: 'http://www.moog.com/products/motors-servomotors/servo-motors.html')
    @moogMotor.products.create(name_ko: '리니어 모터',name_en: 'Linear Motors', url: 'http://www.moog.com/products/motors-servomotors/linear-motors.html')
    # Actuator
    @moogActuator.products.create(name_ko: '다목적 엑츄에이터',name_en: 'Multi-Purpose', url: 'http://www.moog.com/products/actuators-servoactuators/multi-purpose.html')
    @moogActuator.products.create(name_ko: '항공기용 엑츄에이터',name_en: 'Aircraft', url: 'http://www.moog.com/products/actuators-servoactuators/aircraft.html')
    @moogActuator.products.create(name_ko: '군수용 엑츄에이터',name_en: 'Defense', url: 'http://www.moog.com/products/actuators-servoactuators/defense.html')
    @moogActuator.products.create(name_ko: '공업용 엑츄에이터',name_en: 'Industrial', url: 'http://www.moog.com/products/actuators-servoactuators/industrial.html')
    @moogActuator.products.create(name_ko: '우주용 엑츄에이터',name_en: 'Space', url: 'http://www.moog.com/products/actuators-servoactuators/space.html')
    # Rotary Joint
    @moogRotaryJoint.products.create(name_ko: '실글 채널',name_en: 'Single Channel', url: 'http://www.moog.com/products/fiber-optic-devices/fiber-optic-rotary-joints/single-channel-forj.html')
    @moogRotaryJoint.products.create(name_ko: '멀티 채널',name_en: 'Multi-Channel', url: 'http://www.moog.com/products/fiber-optic-devices/fiber-optic-rotary-joints/multi-channel-forj.html')
    @moogRotaryJoint.products.create(name_ko: '하이브리드',name_en: 'Hybrid', url: 'http://www.moog.com/products/fiber-optic-devices/fiber-optic-rotary-joints/hybrid-forj.html')
    @moogRotaryJoint.products.create(name_ko: 'Complete Rotary Interfaces',name_en: 'Complete Rotary Interfaces', url: 'http://www.moog.com/products/fiber-optic-devices/fiber-optic-rotary-joints/complete-rotary-interfaces.html')
    # Other
    @moogOther.products.create(name_ko: '이외 Moog 제품',name_en: 'test', url: 'http://www.google.com')
    @moogOther.products.create(name_ko: '이외 Moog 제품',name_en: 'test', url: 'http://www.google.com')
    @moogOther.products.create(name_ko: '이외 Moog 제품',name_en: 'test', url: 'http://www.google.com')
    @moogOther.products.create(name_ko: '이외 Moog 제품',name_en: 'test', url: 'http://www.google.com')
    @moogOther.products.create(name_ko: '이외 Moog 제품',name_en: 'test', url: 'http://www.google.com')
  # Axon'
    # Composite
    @axonComposite.products.create(name_ko: '고정밀 절연체',name_en: 'High Precision Conductors', url: 'http://www.axon-cable.com/en/02_products/02_composite-cables/00/index.aspx' )
    @axonComposite.products.create(name_ko: '고성능 절연 케이블',name_en: 'High Performance Insulated Cables', url: 'http://www.axon-cable.com/en/02_products/02_composite-cables/00/index.aspx' )
    # Coaxial
    @axonCoaxial.products.create(name_ko: '스텐다드 타입',name_en: 'Standard', url: 'http://www.axon-cable.com/en/02_products/06_coaxial-cables/01/index.aspx' )
    @axonCoaxial.products.create(name_ko: '소형 타입',name_en: 'Miniature', url: 'http://www.axon-cable.com/en/02_products/06_coaxial-cables/02/index.aspx' )
    @axonCoaxial.products.create(name_ko: '경량 타입',name_en: 'Light Weight', url: 'http://www.axon-cable.com/en/02_products/06_coaxial-cables/03/index.aspx' )
    @axonCoaxial.products.create(name_ko: '핸드 포머블 타입',name_en: 'Hand Formable', url: 'http://www.axon-cable.com/en/02_products/06_coaxial-cables/04/index.aspx' )
    @axonCoaxial.products.create(name_ko: '마이크로파',name_en: 'Microwave', url: 'http://www.axon-cable.com/en/03_assemblies/04_microwave/00/index.aspx' )
    # Flat
    @axonFlat.products.create(name_ko: '플렛 플렉서블 케이블',name_en: 'Flat Flexible Cables', url: 'http://www.google.com' )
    @axonFlat.products.create(name: 'FDC-Flat Display Connections', url: 'http://www.google.com' )
    @axonFlat.products.create(name: 'High Speed Flat Flex Cables', url: 'http://www.google.com' )
    @axonFlat.products.create(name: 'Flat Cables with Round Pins', url: 'http://www.google.com' )
    @axonFlat.products.create(name: 'Bulk Flat Flexible Cables', url: 'http://www.google.com' )
    @axonFlat.products.create(name: 'Low Width Flat Flexible Cables', url: 'http://www.google.com' )
    @axonFlat.products.create(name: 'Flat Cables with Round Conductors', url: 'http://www.google.com' )
    @axonFlat.products.create(name: 'Hybrid Flat Cables', url: 'http://www.google.com' )
    # Wires
    @axonWires.products.create(name: 'Equipment Wires for High Temperatures', url: 'http://www.google.com' )
    @axonWires.products.create(name: 'ESA Wires and Cables', url: 'http://www.google.com' )
    @axonWires.products.create(name: 'Aluminium Wires', url: 'http://www.google.com' )
    @axonWires.products.create(name: 'High Voltage Wires', url: 'http://www.google.com' )
    @axonWires.products.create(name: 'Halogen Free Wires and Cables', url: 'http://www.google.com' )
    @axonWires.products.create(name: 'Radiation Resistant Wires and Cables', url: 'http://www.google.com' )
    @axonWires.products.create(name: 'Wires for Extreme Temperatures', url: 'http://www.google.com' )
    # Others
    @axonOther.products.create(name: 'test', url: 'http://www.google.com' )






















# customers (1-5)
Customer.create(id: 1, name_en: 'LG Electronics', name_ko: 'LG전자')
Customer.create(id: 2, name_en: 'HYUNDAI Motor', name_ko: '현대자동차')
Customer.create(id: 3, name_en: 'SAMSUNG Electronics', name_ko: '삼성전자')
Customer.create(id: 4, name_en: 'HYUNDAI Rotem', name_ko: '현대로템')
Customer.create(id: 5, name_en: 'SK Innovation', name_ko: 'SK 이노베이션')
# customers (6-10)
Customer.create(id: 6, name_en: 'HYUNDAI Heavy Industries', name_ko: '현대중공업')
Customer.create(id: 7, name_en: 'Hanwha System', name_ko: '한화시스템')
Customer.create(id: 8, name_en: 'HYUNDAI STEEL', name_ko: '현대철강')
Customer.create(id: 9, name_en: 'Agency for Defense Department', name_ko: '국방과학연구소')
Customer.create(id: 10, name_en: 'Korea Aerospace Industries Ltd.', name_ko: '한국항공우주산업(주)')
# customers (11-15)
Customer.create(id: 11, name_en: 'KARI', name_ko: '한국항공연구소')
Customer.create(id: 12, name_en: 'LIG NEX1', name_ko: 'LIG  넥스원')
Customer.create(id: 13, name_en: 'FIRSTEC CO. LTD.', name_ko: '퍼스텍')
Customer.create(id: 14, name_en: 'YURA Tech', name_ko: '유라테크')
Customer.create(id: 15, name_en: 'SEMIKRON', name_ko: '세미크론')
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







