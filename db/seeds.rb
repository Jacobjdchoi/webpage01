# Admin ids
Admin.create(email: ENV['ADMIN_EMAIL'], password: ENV['ADMIN_PASSWORD'], password_confirmation: ENV['ADMIN_PASSWORD'])
# Brands (1-5)
@moog = Brand.create(id: 1, name: 'MOOG', background_pic: File.open(File.join(Rails.root, 'public/suppliers_banner/moog.jpg')))
@axon = Brand.create(id: 2, name: "Axon'", background_pic: File.open(File.join(Rails.root, 'public/suppliers_banner/axon.jpg')))
@airborn = Brand.create(id: 3, name: 'AirBorn', background_pic: File.open(File.join(Rails.root, 'public/suppliers_banner/airborn.jpg')))
@odu = Brand.create(id: 4, name: 'ODU', background_pic: File.open(File.join(Rails.root, 'public/suppliers_banner/odu.jpg')))
@stocko = Brand.create(id: 5, name: 'STOCKO', background_pic: File.open(File.join(Rails.root, 'public/suppliers_banner/stocko.jpg')))
# Product Types
  # Moog (1-5)
  @moogSlipRing = @moog.product_types.create(name: 'Slip Rings')
  @moogMotor = @moog.product_types.create(name: 'Motors & Servo Motors')
  @moogActuator = @moog.product_types.create(name: 'Actuators')
  @moogRotaryJointandUnions = @moog.product_types.create(name: 'Rotary Joints & Unions')
  @moogAirMovingProducts = @moog.product_types.create(name:'Air Moving Products')
  # Moog (6-10)
  @moogAvionicInstruments = @moog.product_types.create(name:'Avionic Instruments')
  @moogSensorsandDetectors = @moog.product_types.create(name:'Sensors & Detectors')
  @moogMultiplexers = @moog.product_types.create(name:'Multiplexers')
  @moogSolenoids = @moog.product_types.create(name:'Solenoids')
  @moogOthers = @moog.product_types.create(name: 'Other Moog Products')
  # Axon' (1-5)
  @axonCoaxial = @axon.product_types.create(name: "Coaxial Cables")
  @axonFlat = @axon.product_types.create(name: "Flat Cables")
  @axonWires = @axon.product_types.create(name: "Wires")
  # @axonComposite = @axon.product_types.create(name: "Composite Cables")
  @axonConnectors = @axon.product_types.create(name: "AXON' Connectors")
  # Axon' (6-10)
  @axonTubesandTapes = @axon.product_types.create(name:'Tubes & Tapes')
  @axonADDIX = @axon.product_types.create(name:'ADDIX')
  @axonMechatronicsLOUPOT = @axon.product_types.create(name:"AXON' Mechatronics - LOUPOT")
  @axonPINTECCISAL = @axon.product_types.create(name:"AXON' PINTEC-CISAL")
  @axonOthers = @axon.product_types.create(name: "Other Axon' Products")
  # Airborn
  @airbornConnectors = @airborn.product_types.create(name:'AirBorn Connectors')
  # Odu (1-6)
  @oduPushPullCircularConnectors = @odu.product_types.create(name:'Push-Pull Circular Connectors')
  @oduODUMACModularConnectors = @odu.product_types.create(name:'ODU-MAC Modular Connectors')
  @oduDockingandRoboticSystemConnectors = @odu.product_types.create(name:'Docking and Robotic System Connectors')
  @oduPrintedCircuitBoardsConnectors = @odu.product_types.create(name:'Printed Circuit Boards Connectors')
  @oduSingleContactConnectors = @odu.product_types.create(name:'Single Contact Connectors')
  @oduOthers = @odu.product_types.create(name: 'Other ODU products')
  # Stocko (1-5)
  @stockoMultiwayconnectorsystems = @stocko.product_types.create(name:'Multi-way connector systems')
  @stockoOthers = @stocko.product_types.create(name: 'Other STOCKO Products')


# Products
  # Moog
    # Slip Ring
    @moogSlipRingAerospace = @moogSlipRing.products.create(name: 'Aerospace - Military Slip Rings', url: 'http://www.moog.com/products/slip-rings/aerospace-military-slip-rings.html')
      # @moogSlipRingAerospace.subproducts.create(name: 'Electro-Optic Systems', url:'http://www.moog.com/products/slip-rings/aerospace-military-slip-rings/electro-optic-systems/')
      # @moogSlipRingAerospace.subproducts.create(name: 'Helicopter Slip Rings', url:'http://www.moog.com/products/slip-rings/aerospace-military-slip-rings/helicopter-slip-rings/')
      # @moogSlipRingAerospace.subproducts.create(name: 'Miniature Slip Ring Capsules', url:'http://www.moog.com/products/slip-rings/aerospace-military-slip-rings/miniature-slip-ring-capsules/')
      # @moogSlipRingAerospace.subproducts.create(name: 'Propeller Slip Rings', url:'http://www.moog.com/products/slip-rings/aerospace-military-slip-rings/propeller-slip-rings/')
      # @moogSlipRingAerospace.subproducts.create(name: 'Vehicular Slip Rings', url:'http://www.moog.com/products/slip-rings/aerospace-military-slip-rings/vehicular-slip-rings/')
    @moogSlipRingCommercial = @moogSlipRing.products.create(name: 'Commercial - Industrial Slip Rings', url: 'http://www.moog.com/products/slip-rings/commercial-industrial-slip-rings.html')
      # @moogSlipRingCommercial.subproducts.create(name: 'Compact Slip Ring Capsules', url: 'http://www.moog.com/products/slip-rings/commercial-industrial-slip-rings/compact-slip-ring-capsules/')
      # @moogSlipRingCommercial.subproducts.create(name: 'Ethernet and High Definition Video Slip Rings', url: 'http://www.moog.com/products/slip-rings/commercial-industrial-slip-rings/ethernet-high-definition-video-slip-rings.html')
      # @moogSlipRingCommercial.subproducts.create(name: 'High Speed Slip Rings', url: 'http://www.moog.com/products/slip-rings/commercial-industrial-slip-rings/high-speed-slip-ring-capsules.html')
      # @moogSlipRingCommercial.subproducts.create(name: 'Large Diameter Slip Rings', url: 'http://www.moog.com/products/slip-rings/commercial-industrial-slip-rings/large-diameter-slip-rings/')
      # @moogSlipRingCommercial.subproducts.create(name: 'Separates', url: 'http://www.moog.com/products/slip-rings/commercial-industrial-slip-rings/separates/')
      # @moogSlipRingCommercial.subproducts.create(name: 'Slip Rings with Through Bores', url: 'http://www.moog.com/products/slip-rings/commercial-industrial-slip-rings/slip-rings-with-through-bores/')
      # @moogSlipRingCommercial.subproducts.create(name: 'Fiber Optic Rotary Joints', url: 'http://www.moog.com/products/fiber-optic-devices/fiber-optic-rotary-joints/')
    @moogSlipRingMarine = @moogSlipRing.products.create(name: 'Marine Slip Rings', url: 'http://www.moog.com/products/slip-rings/marine-slip-rings.html')
      # @moogSlipRingMarine.subproducts.create(name: 'FPS Swivels', url: 'http://www.moog.com/products/slip-rings/marine-slip-rings/fps-swivels.html')
      # @moogSlipRingMarine.subproducts.create(name: 'Marine Slip Rings', url: 'http://www.moog.com/products/slip-rings/marine-slip-rings/slip-rings/')
      # @moogSlipRingMarine.subproducts.create(name: 'Renewable Swivels', url: 'http://www.moog.com/products/slip-rings/marine-slip-rings/marine-renewables-swivels.html')
    @moogSlipRingOilfield = @moogSlipRing.products.create(name: 'Oilfield - Downhole Slip Rings', url: 'http://www.moog.com/products/slip-rings/oilfield-downhole-slip-rings.html')
      # @moogSlipRingOilfield.subproducts.create(name: 'Miniature Bore', url: 'http://www.moog.com/products/slip-rings/oilfield-downhole-slip-rings/model-303-miniature-bore.html')
      # @moogSlipRingOilfield.subproducts.create(name: 'Large Bore', url: 'http://www.moog.com/products/slip-rings/oilfield-downhole-slip-rings/model-303-large-bore.html')
      # @moogSlipRingOilfield.subproducts.create(name: 'High Voltage 20-Channel', url: 'http://www.moog.com/products/slip-rings/oilfield-downhole-slip-rings/model-303-high-voltage-20-channel.html')
    @moogSlipRingWindTurbine = @moogSlipRing.products.create(name: 'Wind Turbine Slip Rings', url: 'http://www.moog.com/products/slip-rings/wind-turbine-slip-rings.html')
    # Motor
    @moogMotorBrush = @moogMotor.products.create(name: 'Brush Motors', url: 'http://www.moog.com/products/motors-servomotors/brush-motors.html')
    @moogMotorBrushless = @moogMotor.products.create(name: 'Brushless Motors', url: 'http://www.moog.com/products/motors-servomotors/brushless-motors.html')
    @moogMotorBrushlessServo = @moogMotor.products.create(name: 'Brushless Servo Motors', url: 'http://www.moog.com/products/motors-servomotors/servo-motors.html')
    @moogMotorLinear = @moogMotor.products.create(name: 'Linear Motors', url: 'http://www.moog.com/products/motors-servomotors/linear-motors.html')
    # Actuator
    @moogActuatorMultiPurpose = @moogActuator.products.create(name: 'Multi-Purpose', url: 'http://www.moog.com/products/actuators-servoactuators/multi-purpose.html')
    @moogActuatorAircraft = @moogActuator.products.create(name: 'Aircraft', url: 'http://www.moog.com/products/actuators-servoactuators/aircraft.html')
    @moogActuatorDefense = @moogActuator.products.create(name: 'Defense', url: 'http://www.moog.com/products/actuators-servoactuators/defense.html')
    @moogActuatorIndustrial = @moogActuator.products.create(name: 'Industrial', url: 'http://www.moog.com/products/actuators-servoactuators/industrial.html')
    @moogActuatorSpace = @moogActuator.products.create(name: 'Space', url: 'http://www.moog.com/products/actuators-servoactuators/space.html')
    # Rotary Joint
    @moogRotaryJointandUnionsJoint = @moogRotaryJointandUnions.products.create(name: 'Fiber Optic Rotary Joints (FORJ)', url: 'http://www.moog.com/products/fiber-optic-devices/fiber-optic-rotary-joints/single-channel-forj.html')
    @moogRotaryJointandUnionsUnion = @moogRotaryJointandUnions.products.create(name: 'Fluid Rotary Unions', url: 'http://www.moog.com/products/fluid-rotary-union.html')
    # Air Moving Products
    @moogAirMovingProductsBlower = @moogAirMovingProducts.products.create(name: 'Blowers', url:'http://www.moog.com/products/air-moving-products.html')
    @moogAirMovingProductsController = @moogAirMovingProducts.products.create(name: 'Controllers', url:'http://www.moog.com/products/air-moving-products.html')
    @moogAirMovingProductsImpeller = @moogAirMovingProducts.products.create(name: 'Impellers', url:'http://www.moog.com/products/air-moving-products.html')
    #Avionic Instruments
    @moogAvionicInstrumentsLCD = @moogAvionicInstruments.products.create(name: "LCD Engine Instruments", url:"http://www.moog.com/products/avionic-instruments/indicators.html")
    @moogAvionicInstrumentsIndicator = @moogAvionicInstruments.products.create(name: "Indicators", url:"http://www.moog.com/products/avionic-instruments/lcd-engine-instruments.html")
    # Sensors
    @moogSensorsandDetectorsSensor = @moogSensorsandDetectors.products.create(name: "LifeGuard® Ultrasonic Level Sensors", url:"http://www.moog.com/products/sensors/lifeguard-ultrasonic-point-level-sensor.html")
    @moogSensorsandDetectorsDetector = @moogSensorsandDetectors.products.create(name: "LifeGuard® Ultrasonic Air Bubble Detectors", url:"http://www.moog.com/products/sensors/lifeguard-ultrasonic-air-bubble-detector.html")
    # Multiplexers
    @moogMultiplexersFOCAL = @moogMultiplexers.products.create(name: "FOCAL", url:"http://www.moog.com/products/multiplexers-media-converters/focal-multiplexer-product-line.html")
    @moogMultiplexersProtokraft = @moogMultiplexers.products.create(name: "Moog Protokraft", url:"http://www.moogprotokraft.com")
    @moogMultiplexersPRIZM = @moogMultiplexers.products.create(name: "PRIZM™", url:"http://www.moog.com/products/multiplexers-media-converters/prizm-multiplexer-product-line.html")
    # Solenoids
    @moogSolenoidsLinearElectro = @moogSolenoids.products.create(name: "Linear Electromechanical Actuators", url:"http://www.moog.com/products/solenoids/solenoid-technologies/linear-electromechanical-actuators.html")
    @moogSolenoidsLinear = @moogSolenoids.products.create(name: "Linear Solenoids", url:"http://www.moog.com/products/solenoids/solenoid-technologies/linear-solenoids.html")
    @moogSolenoidsRotary = @moogSolenoids.products.create(name: "Rotary Solenoids", url:"http://www.moog.com/products/solenoids/solenoid-technologies/rotary-solenoids.html")
    # Others
    @moogOthersSynchro = @moogOthers.products.create(name: "Synchros", url:"http://www.moog.com/products/synchros.html")
    @moogOthersAlternators = @moogOthers.products.create(name: "Alternators", url:"http://www.moog.com/products/alternators.html")
    @moogOthersFOM = @moogOthers.products.create(name: "Fiber Optic Modems", url:"http://www.moog.com/products/fiber-optic-devices/fiber-optic-modems.html")
    @moogOthersResolvers = @moogOthers.products.create(name: "Resolvers", url:"http://www.moog.com/products/resolvers.html")
    @moogOthersPCB = @moogOthers.products.create(name: "Printed Circuit Boards", url:"http://www.moog.com/products/printed-circuit-boards.html")


  # Axon'
    # Composite
    # @axonCompositePrecision = @axonComposite.products.create(name: 'High Precision Conductors', url: 'http://www.axon-cable.com/en/02_products/02_composite-cables/00/index.aspx' )
    # @axonCompositePerformance = @axonComposite.products.create(name: 'High Performance Insulated Cables', url: 'http://www.axon-cable.com/en/02_products/02_composite-cables/00/index.aspx' )
    # Coaxial
    @axonCoaxialStandard = @axonCoaxial.products.create(name: 'Standard', url: 'http://www.axon-cable.com/en/02_products/06_coaxial-cables/01/index.aspx' )
    @axonCoaxialMiniature = @axonCoaxial.products.create(name: 'Miniature', url: 'http://www.axon-cable.com/en/02_products/06_coaxial-cables/02/index.aspx' )
    @axonCoaxialLight = @axonCoaxial.products.create(name: 'Light Weight', url: 'http://www.axon-cable.com/en/02_products/06_coaxial-cables/03/index.aspx' )
    @axonCoaxialHand = @axonCoaxial.products.create(name: 'Hand Formable', url: 'http://www.axon-cable.com/en/02_products/06_coaxial-cables/04/index.aspx' )
    # Flat
    @axonFlatFlexible = @axonFlat.products.create(name: 'Flat Flexible Cables', url: 'http://www.axon-cable.com/en/02_products/07_flat-cables/01/index.aspx' )
    @axonFlatFDC = @axonFlat.products.create(name: 'FDC-Flat Display Connections', url: 'http://www.axon-cable.com/en/02_products/07_flat-cables/02/index.aspx' )
    @axonFlatSpeed = @axonFlat.products.create(name: 'High Speed Flat Flex Cables', url: 'http://www.axon-cable.com/en/02_products/07_flat-cables/03/index.aspx' )
    @axonFlatRoundPins = @axonFlat.products.create(name: 'Flat Cables with Round Pins', url: 'http://www.axon-cable.com/en/02_products/07_flat-cables/04/index.aspx' )
    @axonFlatBulk = @axonFlat.products.create(name: 'Bulk Flat Flexible Cables', url: 'http://www.axon-cable.com/en/02_products/07_flat-cables/05/index.aspx' )
    @axonFlatWidth = @axonFlat.products.create(name: 'Low Width Flat Flexible Cables', url: 'http://www.axon-cable.com/en/02_products/07_flat-cables/06/index.aspx' )
    @axonFlatRoundConductors = @axonFlat.products.create(name: 'Flat Cables with Round Conductors', url: 'http://www.axon-cable.com/en/02_products/07_flat-cables/07/index.aspx' )
    @axonFlatHybrid = @axonFlat.products.create(name: 'Hybrid Flat Cables', url: 'http://www.axon-cable.com/en/02_products/07_flat-cables/08/index.aspx' )
    # Wires
    @axonWiresHighTemp = @axonWires.products.create(name: 'Equipment Wires for High Temperatures', url: 'http://www.axon-cable.com/en/02_products/05_wires/01/index.aspx' )
    @axonWiresESA = @axonWires.products.create(name: 'ESA Wires and Cables', url: 'http://www.axon-cable.com/en/02_products/05_wires/02/index.aspx' )
    @axonWiresAluminium = @axonWires.products.create(name: 'Aluminium Wires', url: 'http://www.axon-cable.com/en/02_products/05_wires/03/index.aspx' )
    @axonWiresHighVolt = @axonWires.products.create(name: 'High Voltage Wires', url: 'http://www.axon-cable.com/en/02_products/05_wires/04/index.aspx' )
    @axonWiresHalogenFree = @axonWires.products.create(name: 'Halogen Free Low Smoke Wires and Cables', url: 'http://www.axon-cable.com/en/02_products/02_composite-cables/04/index.aspx' )
    @axonWiresRadiation = @axonWires.products.create(name: 'Radiation Resistant Wires and Cables', url: 'http://www.axon-cable.com/en/02_products/02_composite-cables/05/index.aspx' )
    @axonWiresExtremeTemp = @axonWires.products.create(name: 'Wires for Extreme Temperatures', url: 'http://www.axon-cable.com/en/02_products/02_composite-cables/03/index.aspx' )
    # Connectors
    @axonConnectorsRectMicroD = @axonConnectors.products.create(name: "Rectangular Micro-D connectors", url:"http://www.axon-cable.com/en/02_products/03_connectors/01/index.aspx")
    @axonConnectorsCustomMicroD = @axonConnectors.products.create(name: "Custom design micro-D connectors", url:"http://www.axon-cable.com/en/02_products/03_connectors/02/index.aspx")
    @axonConnectorsComboMicroD = @axonConnectors.products.create(name: "Combo Micro-D connectors", url:"http://www.axon-cable.com/en/02_products/03_connectors/03/index.aspx")
    @axonConnectorsNanoD = @axonConnectors.products.create(name: "Nano-D connectors", url:"http://www.axon-cable.com/en/02_products/03_connectors/04/index.aspx")
    @axonConnectorsSpaceMini = @axonConnectors.products.create(name: "Space Miniature connectors", url:"http://www.axon-cable.com/en/02_products/03_connectors/05/index.aspx")
    @axonConnectorsCircularMicroD = @axonConnectors.products.create(name: "Circular Micro-D connectors", url:"http://www.axon-cable.com/en/02_products/03_connectors/06/index.aspx")
    @axonConnectorsMicroDBackshell = @axonConnectors.products.create(name: "Micro-D backshells and hardware", url:"http://www.axon-cable.com/en/02_products/03_connectors/07/index.aspx")
    @axonConnectorsMILSTD = @axonConnectors.products.create(name: "MIL-STD-1553 Data Bus Connectors", url:"http://www.axon-cable.com/en/03_assemblies/01_data-transmission/07/index.aspx")
    # Tubes and Tapes
    @axonTubesandTapesPTFETape = @axonTubesandTapes.products.create(name: "PTFE Tapes, Membranes and Desiccant Bags", url:"http://www.axon-cable.com/en/02_products/09_tubes-tapes/01/index.aspx")
    @axonTubesandTapesPTFETube = @axonTubesandTapes.products.create(name: "PTFE Tubes", url:"http://www.axon-cable.com/en/02_products/09_tubes-tapes/02/index.aspx")
    # ADDIX
    @axonADDIXMoulded = @axonADDIX.products.create(name: "Moulded Shapes", url:"http://www.axon-cable.com/en/02_products/11_addix/01/index.aspx")
    @axonADDIXOvermoulded = @axonADDIX.products.create(name: "Overmoulded Parts", url:"http://www.axon-cable.com/en/02_products/11_addix/02/index.aspx")
    @axonADDIXCut = @axonADDIX.products.create(name: "Cut Parts", url:"http://www.axon-cable.com/en/02_products/11_addix/03/index.aspx")
    @axonADDIXExtruded = @axonADDIX.products.create(name: "Extruded Parts", url:"http://www.axon-cable.com/en/02_products/11_addix/04/index.aspx")
    @axonADDIXKeyboard = @axonADDIX.products.create(name: "Keyboards", url:"http://www.axon-cable.com/en/02_products/11_addix/05/index.aspx")
    @axonADDIXElastomer = @axonADDIX.products.create(name: "Elastomer Compounds", url:"http://www.axon-cable.com/en/02_products/11_addix/06/index.aspx")
    # AXON' Mechatronics - LOUPOT
    @axonMechatronicsLOUPOTPrecision = @axonMechatronicsLOUPOT.products.create(name: "Precision Stamping Parts & Terminals", url:"http://www.axon-cable.com/en/02_products/01_loupot/01/index.aspx")
    @axonMechatronicsLOUPOTMoulded = @axonMechatronicsLOUPOT.products.create(name: "Moulded & Overmoulded Components", url:"http://www.axon-cable.com/en/02_products/01_loupot/02/index.aspx")
    @axonMechatronicsLOUPOTAssembled = @axonMechatronicsLOUPOT.products.create(name: "Assembled Components", url:"http://www.axon-cable.com/en/02_products/01_loupot/03/index.aspx")
    @axonMechatronicsLOUPOTComponents = @axonMechatronicsLOUPOT.products.create(name: "Mechatronic Components", url:"http://www.axon-cable.com/en/02_products/01_loupot/04/index.aspx")
    @axonMechatronicsLOUPOTInsertion = @axonMechatronicsLOUPOT.products.create(name: "Insertion Equipment", url:"http://www.axon-cable.com/en/02_products/01_loupot/05/index.aspx")
    @axonMechatronicsLOUPOTPreforming = @axonMechatronicsLOUPOT.products.create(name: "Preforming Equipment", url:"http://www.axon-cable.com/en/02_products/01_loupot/06/index.aspx")
    @axonMechatronicsLOUPOTOther = @axonMechatronicsLOUPOT.products.create(name: "Other Equipment", url:"http://www.axon-cable.com/en/02_products/01_loupot/07/index.aspx")
    # AXON' PINTEC-CISAL
    @axonPINTECCISALPrecision = @axonPINTECCISAL.products.create(name: "Precision Wire Pins", url:"http://www.axon-cable.com/en/02_products/12_pintec/01/index.aspx")
    @axonPINTECCISALInterconnect = @axonPINTECCISAL.products.create(name: "Interconnect Pin Headers", url:"http://www.axon-cable.com/en/02_products/12_pintec/02/index.aspx")
    # AXON' Others
    @axonOthersEMI = @axonOthers.products.create(name: "EMI Protection", url:"http://www.axon-cable.com/en/02_products/08_EMI-protection/00/index.aspx")
    @axonOthersTest = @axonOthers.products.create(name: "Tests", url:"http://www.axon-cable.com/en/02_products/10_tests/00/index.aspx")

  # Airborn
    # Connectors
    @airbornConnectorsHD4 = @airbornConnectors.products.create(name: "HD4 Series", url:"http://www.airborn.com/products/connectors/hd4-series")
    @airbornConnectorsM = @airbornConnectors.products.create(name: "M Series", url:"http://www.airborn.com/products/connectors/m-series")
    @airbornConnectorsMicroQUAD = @airbornConnectors.products.create(name: "MicroQUAD Series", url:"http://www.airborn.com/products/connectors/microquad-series")
    @airbornConnectorsMicroSI = @airbornConnectors.products.create(name: "MicroSI Series", url:"http://www.airborn.com/products/connectors/microsi-series")
    @airbornConnectorsN = @airbornConnectors.products.create(name: "N Series", url:"http://www.airborn.com/products/connectors/n-series")
    @airbornConnectorsR = @airbornConnectors.products.create(name: "R Series", url:"http://www.airborn.com/products/connectors/r-series")
    @airbornConnectorsRC = @airbornConnectors.products.create(name: "RC Series", url:"http://www.airborn.com/products/connectors/rc-series")
    @airbornConnectorsRC2 = @airbornConnectors.products.create(name: "RCII Series", url:"http://www.airborn.com/products/connectors/rcii-series")
    @airbornConnectorsRZ = @airbornConnectors.products.create(name: "RZ Series", url:"http://www.airborn.com/products/connectors/rz-series")
    @airbornConnectorsveriSI = @airbornConnectors.products.create(name: "verSI Series", url:"http://www.airborn.com/products/connectors/versi-series")
    @airbornConnectorsW = @airbornConnectors.products.create(name: "W Series", url:"http://www.airborn.com/products/connectors/w-series")

  # ODU
    # Push-Pull Circular Connectors
    @oduPushPullCircularAMC = @oduPushPullCircularConnectors.products.create(name: "ODU AMC®", url:"http://www.odu-usa.com/products-solutions/push-pull-circular-connectors/odu-amc.html")
    @oduPushPullCircularAMCHD = @oduPushPullCircularConnectors.products.create(name: "ODU AMC® HIGH-DENSITY", url:"http://www.odu-usa.com/products-solutions/push-pull-circular-connectors/odu-amc/odu-amc-high-density.html")
    @oduPushPullCircularMiniMED = @oduPushPullCircularConnectors.products.create(name: "ODU MINI-MED®", url:"http://www.odu-usa.com/products-solutions/push-pull-circular-connectors/odu-mini-med.html")
    @oduPushPullCircularMediSNAP = @oduPushPullCircularConnectors.products.create(name: "ODU MEDI-SNAP®", url:"http://www.odu-usa.com/products-solutions/push-pull-circular-connectors/odu-medi-snap.html")
    @oduPushPullCircularMiniSNAP = @oduPushPullCircularConnectors.products.create(name: "ODU MINI-SNAP®", url:"http://www.odu-usa.com/products-solutions/push-pull-circular-connectors/odu-mini-snap.html")
    @oduPushPullCircularMiniSNAPPC = @oduPushPullCircularConnectors.products.create(name: "ODU MINI-SNAP® PC", url:"http://www.odu-usa.com/products-solutions/push-pull-circular-connectors/odu-mini-snap-pc.html")
    # ODU-MAC Modular Connectors
    @oduODUMAC = @oduODUMACModularConnectors.products.create(name: "ODU-MAC®", url:"http://www.odu-usa.com/products-solutions/odu-mac-modular-connectors/odu-mac.html")
    # Docking and Robotic System Connectors
    @oduDockRobDOCK = @oduDockingandRoboticSystemConnectors.products.create(name: "ODU DOCK", url:"http://www.odu-usa.com/products-solutions/docking-and-robotic-system-connectors/odu-dock.html")
    @oduDockRobROB = @oduDockingandRoboticSystemConnectors.products.create(name: "ODU ROB", url:"http://www.odu-usa.com/products-solutions/docking-and-robotic-system-connectors/odu-rob.html")
    # Printed Circuit Boards Connectors
    @oduPCBFLAKAFIX = @oduPrintedCircuitBoardsConnectors.products.create(name: "ODU FLAKAFIX", url:"http://www.odu-usa.com/products-solutions/printed-circuit-boards-connectors/odu-flakafix.html")
    @oduPCBMiniFLAKAFIX = @oduPrintedCircuitBoardsConnectors.products.create(name: "ODU MINI-FLAKAFIX®", url:"http://www.odu-usa.com/products-solutions/printed-circuit-boards-connectors/odu-mini-flakafix.html")
    @oduPCBCard = @oduPrintedCircuitBoardsConnectors.products.create(name: "ODU CARD", url:"http://www.odu-usa.com/products-solutions/printed-circuit-boards-connectors/odu-card.html")
    @oduPCBMiniCard = @oduPrintedCircuitBoardsConnectors.products.create(name: "ODU MINI-CARD®", url:"http://www.odu-usa.com/products-solutions/printed-circuit-boards-connectors/odu-mini-card.html")
    # Single Contact Connectors
    @oduSingleContactSPRINGTAC = @oduSingleContactConnectors.products.create(name: "ODU SPRINGTAC®", url:"http://www.odu-usa.com/products-solutions/single-contact-connectors/odu-springtac.html")
    @oduSingleContactLAMTAC = @oduSingleContactConnectors.products.create(name: "ODU LAMTAC®", url:"http://www.odu-usa.com/products-solutions/single-contact-connectors/odu-lamtac.html")
    @oduSingleContactFLAT = @oduSingleContactConnectors.products.create(name: "ODU SPRINGTAC® FLATSOCKET", url:"http://www.odu-usa.com/products-solutions/single-contact-connectors/odu-springtac-flatsocket.html")
    # Others
    @oduOthersHeavy = @oduOthers.products.create(name: "Heavy Duty Connectors", url:"http://www.odu-usa.com/products-solutions/heavy-duty-connectors.html")
  # STOCKO
    # Multi-way connector systems
    @stockoMultiwayconnectorsystemsPitch25 = @stockoMultiwayconnectorsystems.products.create(name: "Pitch 2.5 mm", url:"https://www.yumpu.com/xx/document/fullscreen/55565154/steckverbindersystem-raster-25-mm")
    @stockoMultiwayconnectorsystemsPitch254 = @stockoMultiwayconnectorsystems.products.create(name: "Pitch 2.54 mm", url:"https://www.yumpu.com/xx/document/fullscreen/55600572/steckverbindersystem-raster-254-mm")
    @stockoMultiwayconnectorsystemsSpecial = @stockoMultiwayconnectorsystems.products.create(name: "Special Versions / Pin Strips", url:"https://www.yumpu.com/xx/document/fullscreen/55600616/steckverbinder-sonderprogramm")
    @stockoMultiwayconnectorsystemsHighCurrent = @stockoMultiwayconnectorsystems.products.create(name: "High-Current ", url:"https://www.yumpu.com/xx/document/fullscreen/55600713/steckverbinder-leistungsbereich")
    @stockoMultiwayconnectorsystemsSFit = @stockoMultiwayconnectorsystems.products.create(name: "S-FIT 4.20", url:"https://www.yumpu.com/xx/document/fullscreen/55565235/steckverbindersystem-s-fit")
    @stockoMultiwayconnectorsystemsSLock = @stockoMultiwayconnectorsystems.products.create(name: "S-LOCK 6.35", url:"https://www.yumpu.com/xx/document/fullscreen/55601444/steckverbindersystem-s-lock")
    # Other
    @stockoOthersSolderless = @stockoOthers.products.create(name: "Solderless terminals", url:"https://www.yumpu.com/xx/document/fullscreen/55601453/loetfreie-verbindungen")
    @stockoOthersCrimp = @stockoOthers.products.create(name: "Crimp contacts", url:"https://www.yumpu.com/xx/document/fullscreen/55601476/crimpkontakte-de-en")
    @stockoOthersHVAC = @stockoOthers.products.create(name: "HVAC Industry Products", url:"https://www.yumpu.com/en/document/fullscreen/55601938/heizungsindustrie-en")
# Customers
    # [1-5]
    @customerLGElectronics = Customer.create(id: 1, name_en: 'LG Electronics', name_ko: 'LG전자')
    @customerHYUNDAIMotor = Customer.create(id: 2, name_en: 'HYUNDAI Motor', name_ko: '현대자동차')
    @customerSAMSUNGElectronics = Customer.create(id: 3, name_en: 'SAMSUNG Electronics', name_ko: '삼성전자')
    @customerHYUNDAIRotem = Customer.create(id: 4, name_en: 'HYUNDAI Rotem', name_ko: '현대로템')
    @customerSKInnovation = Customer.create(id: 5, name_en: 'SK Innovation', name_ko: 'SK 이노베이션')
    # [6-10]
    @customerHYUNDAIHeavyIndustries = Customer.create(id: 6, name_en: 'HYUNDAI Heavy Industries', name_ko: '현대중공업')
    @customerHanwhaSystem = Customer.create(id: 7, name_en: 'Hanwha System', name_ko: '한화시스템')
    @customerHYUNDAISTEEL = Customer.create(id: 8, name_en: 'HYUNDAI STEEL', name_ko: '현대철강')
    @customerAgencyforDefenseDepartment = Customer.create(id: 9, name_en: 'Agency for Defense Department', name_ko: '국방과학연구소')
    @customerKoreaAerospaceIndustriesLtd = Customer.create(id: 10, name_en: 'Korea Aerospace Industries Ltd.', name_ko: '한국항공우주산업(주)')
    # [11-15]
    @customerKARI = Customer.create(id: 11, name_en: 'KARI', name_ko: '한국항공연구소')
    @customerLIGNEX1 = Customer.create(id: 12, name_en: 'LIG NEX1', name_ko: 'LIG  넥스원')
    @customerFIRSTEC = Customer.create(id: 13, name_en: 'FIRSTEC CO. LTD.', name_ko: '퍼스텍')
    @customerYURATech = Customer.create(id: 14, name_en: 'YURA Tech', name_ko: '유라테크')
    @customerSEMIKRON = Customer.create(id: 15, name_en: 'SEMIKRON', name_ko: '세미크론')
# Markets
  @aeromilitrayMarket = Market.create(name_en: "Aerospace & Military", name_ko: "우주항공 & 군수")
  @industrialMarket = Market.create(name_en: "Industrial", name_ko: "공업 & 산업")
  @automotiveMarket = Market.create(name_en: "Automotive", name_ko: "자동차")
  @medicalMarket = Market.create(name_en: "Medical", name_ko: "의료")
# MarketApps
  5.times{@aeromilitrayMarket.marketapps.create(name_en: 'test', name_ko:'테스트')}
5.times{  @industrialMarket.marketapps.create(name_en: 'test', name_ko:'테스트')}
5.times{  @automotiveMarket.marketapps.create(name_en: 'test', name_ko:'테스트')}
5.times{  @medicalMarket.marketapps.create(name_en: 'test', name_ko:'테스트')}




# Photos
  # Customer
      # [1-5]
      @customerLGElectronics.photos.create(pics: File.open(File.join(Rails.root, 'public/customers_logo/lg_electronics.png')))
      @customerHYUNDAIMotor.photos.create(pics: File.open(File.join(Rails.root, 'public/customers_logo/hyundai_motor.png')))
      @customerSAMSUNGElectronics.photos.create(pics: File.open(File.join(Rails.root, 'public/customers_logo/samsung_electronics.png')))
      @customerHYUNDAIRotem.photos.create(pics: File.open(File.join(Rails.root, 'public/customers_logo/hyundai_rotem.png')))
      @customerSKInnovation.photos.create(pics: File.open(File.join(Rails.root, 'public/customers_logo/sk_innovation.png')))
      # [6-10]
      @customerHYUNDAIHeavyIndustries.photos.create(pics: File.open(File.join(Rails.root, 'public/customers_logo/hyundai_heavy_industries.png')))
      @customerHanwhaSystem.photos.create(pics: File.open(File.join(Rails.root, 'public/customers_logo/hanwha_system.png')))
      @customerHYUNDAISTEEL.photos.create(pics: File.open(File.join(Rails.root, 'public/customers_logo/hyundai_steel.png')))
      @customerAgencyforDefenseDepartment.photos.create(pics: File.open(File.join(Rails.root, 'public/customers_logo/add.png')))
      @customerKoreaAerospaceIndustriesLtd.photos.create(pics: File.open(File.join(Rails.root, 'public/customers_logo/kai.png')))
      # [11-15]
      @customerKARI.photos.create(pics: File.open(File.join(Rails.root, 'public/customers_logo/kari.png')))
      @customerLIGNEX1.photos.create(pics: File.open(File.join(Rails.root, 'public/customers_logo/lig_nex1.png')))
      @customerFIRSTEC.photos.create(pics: File.open(File.join(Rails.root, 'public/customers_logo/firstec.png')))
      @customerYURATech.photos.create(pics: File.open(File.join(Rails.root, 'public/customers_logo/yura_tech.png')))
      @customerSEMIKRON.photos.create(pics: File.open(File.join(Rails.root, 'public/customers_logo/semikron.png')))
  # Brand
      # [1-5]
      @moog.photos.create(pics: File.open(File.join(Rails.root, 'public/suppliers_logo/moog.png')))
      @axon.photos.create(pics: File.open(File.join(Rails.root, 'public/suppliers_logo/axon.png')))
      @airborn.photos.create(pics: File.open(File.join(Rails.root, 'public/suppliers_logo/airborn.png')))
      @odu.photos.create(pics: File.open(File.join(Rails.root, 'public/suppliers_logo/odu.png')))
      @stocko.photos.create(pics: File.open(File.join(Rails.root, 'public/suppliers_logo/stocko.png')))
  # Products
    # Moog
      # Slip Ring
      @moogSlipRingAerospace.photos.create(pics: File.open(File.join(Rails.root,'public/product_photos/moog/slipRings/aerospace.jpg')))
      @moogSlipRingCommercial.photos.create(pics: File.open(File.join(Rails.root,'public/product_photos/moog/slipRings/commercial.jpg')))
      @moogSlipRingMarine.photos.create(pics: File.open(File.join(Rails.root,'public/product_photos/moog/slipRings/marine.jpg')))
      @moogSlipRingOilfield.photos.create(pics: File.open(File.join(Rails.root,'public/product_photos/moog/slipRings/oilfield.jpeg')))
      @moogSlipRingWindTurbine.photos.create(pics: File.open(File.join(Rails.root,'public/product_photos/moog/slipRings/windturbine.jpg')))
      # Motor
      @moogMotorBrush.photos.create(pics: File.open(File.join(Rails.root,'public/product_photos/moog/motors/brush.jpg')))
      @moogMotorBrushless.photos.create(pics: File.open(File.join(Rails.root,'public/product_photos/moog/motors/brushless.jpg')))
      @moogMotorBrushlessServo.photos.create(pics: File.open(File.join(Rails.root,'public/product_photos/moog/motors/brushlessServo.jpg')))
      @moogMotorLinear.photos.create(pics: File.open(File.join(Rails.root,'public/product_photos/moog/motors/linear.jpg')))
      # Actuator
      @moogActuatorMultiPurpose.photos.create(pics: File.open(File.join(Rails.root,'public/product_photos/moog/actuators/multi-purpose.jpg')))
      @moogActuatorAircraft.photos.create(pics: File.open(File.join(Rails.root,'public/product_photos/moog/actuators/aircraft.jpg')))
      @moogActuatorDefense.photos.create(pics: File.open(File.join(Rails.root,'public/product_photos/moog/actuators/military.jpg')))
      @moogActuatorIndustrial.photos.create(pics: File.open(File.join(Rails.root,'public/product_photos/moog/actuators/industrial.jpg')))
      @moogActuatorSpace.photos.create(pics: File.open(File.join(Rails.root,'public/product_photos/moog/actuators/space.jpg')))
      # Rotary Joint
      @moogRotaryJointandUnionsJoint.photos.create(pics: File.open(File.join(Rails.root,'public/product_photos/moog/rotarys/forj.jpg')))
      @moogRotaryJointandUnionsUnion.photos.create(pics: File.open(File.join(Rails.root,'public/product_photos/moog/rotarys/fluidUnion.jpg')))
      # Air Moving Products
      @moogAirMovingProductsBlower.photos.create(pics: File.open(File.join(Rails.root,'public/product_photos/moog/airmovings/blower.jpg')))
      @moogAirMovingProductsController.photos.create(pics: File.open(File.join(Rails.root,'public/product_photos/moog/airmovings/controller.jpg')))
      @moogAirMovingProductsImpeller.photos.create(pics: File.open(File.join(Rails.root,'public/product_photos/moog/airmovings/impeller.jpg')))
      #Avionic Instruments
      @moogAvionicInstrumentsLCD.photos.create(pics: File.open(File.join(Rails.root,'public/product_photos/moog/avionics/lcd.jpg')))
      @moogAvionicInstrumentsIndicator.photos.create(pics: File.open(File.join(Rails.root,'public/product_photos/moog/avionics/indicator.jpg')))
      # Sensors
      @moogSensorsandDetectorsSensor.photos.create(pics: File.open(File.join(Rails.root,'public/product_photos/moog/sensors/sensor.jpg')))
      @moogSensorsandDetectorsDetector.photos.create(pics: File.open(File.join(Rails.root,'public/product_photos/moog/sensors/detector.jpg')))
      # Multiplexers
      @moogMultiplexersFOCAL.photos.create(pics: File.open(File.join(Rails.root,'public/product_photos/moog/multiplexers/focal.jpg')))
      @moogMultiplexersProtokraft.photos.create(pics: File.open(File.join(Rails.root,'public/product_photos/moog/multiplexers/protokraft.jpg')))
      @moogMultiplexersPRIZM.photos.create(pics: File.open(File.join(Rails.root,'public/product_photos/moog/multiplexers/prizm.jpg')))
      # Solenoids
      @moogSolenoidsLinearElectro.photos.create(pics: File.open(File.join(Rails.root,'public/product_photos/moog/solenoids/linearElectro.jpg')))
      @moogSolenoidsLinear.photos.create(pics: File.open(File.join(Rails.root,'public/product_photos/moog/solenoids/linear.jpg')))
      @moogSolenoidsRotary.photos.create(pics: File.open(File.join(Rails.root,'public/product_photos/moog/solenoids/rotary.jpg')))
      # Others
      @moogOthersSynchro.photos.create(pics: File.open(File.join(Rails.root,'public/product_photos/moog/others/synchro.jpg')))
      @moogOthersAlternators.photos.create(pics: File.open(File.join(Rails.root,'public/product_photos/moog/others/alternator.jpg')))
      @moogOthersFOM.photos.create(pics: File.open(File.join(Rails.root,'public/product_photos/moog/others/FOM.jpg')))
      @moogOthersResolvers.photos.create(pics: File.open(File.join(Rails.root,'public/product_photos/moog/others/resolver.jpg')))
      @moogOthersPCB.photos.create(pics: File.open(File.join(Rails.root,'public/product_photos/moog/others/PBC.jpg')))
    # Axon'
      # Composite
      # @axonCompositePrecision.photos.create(pics: File.open(File.join(Rails.root, 'public/product_photos/axon/composites/')))
      # @axonCompositePerformance.photos.create(pics: File.open(File.join(Rails.root, 'public/product_photos/axon/composites/')))
      # Coaxial
      @axonCoaxialStandard.photos.create(pics: File.open(File.join(Rails.root, 'public/product_photos/axon/coaxials/standard.jpg')))
      @axonCoaxialMiniature.photos.create(pics: File.open(File.join(Rails.root, 'public/product_photos/axon/coaxials/mini.jpg')))
      @axonCoaxialLight.photos.create(pics: File.open(File.join(Rails.root, 'public/product_photos/axon/coaxials/light.jpg')))
      @axonCoaxialHand.photos.create(pics: File.open(File.join(Rails.root, 'public/product_photos/axon/coaxials/hand.jpg')))
      # Flat
      @axonFlatFlexible.photos.create(pics: File.open(File.join(Rails.root, 'public/product_photos/axon/flats/flexible.jpg')))
      @axonFlatFDC.photos.create(pics: File.open(File.join(Rails.root, 'public/product_photos/axon/flats/FDC.jpg')))
      @axonFlatSpeed.photos.create(pics: File.open(File.join(Rails.root, 'public/product_photos/axon/flats/speed.jpg')))
      @axonFlatRoundPins.photos.create(pics: File.open(File.join(Rails.root, 'public/product_photos/axon/flats/roundPins.jpg')))
      @axonFlatBulk.photos.create(pics: File.open(File.join(Rails.root, 'public/product_photos/axon/flats/bulk.jpg')))
      @axonFlatWidth.photos.create(pics: File.open(File.join(Rails.root, 'public/product_photos/axon/flats/width.jpg')))
      @axonFlatRoundConductors.photos.create(pics: File.open(File.join(Rails.root, 'public/product_photos/axon/flats/roundConductors.jpg')))
      @axonFlatHybrid.photos.create(pics: File.open(File.join(Rails.root, 'public/product_photos/axon/flats/hybrid.jpg')))
      # Wires
      @axonWiresHighTemp.photos.create(pics: File.open(File.join(Rails.root, 'public/product_photos/axon/wires/highTemp.jpg')))
      @axonWiresESA.photos.create(pics: File.open(File.join(Rails.root, 'public/product_photos/axon/wires/ESA.jpg')))
      @axonWiresAluminium.photos.create(pics: File.open(File.join(Rails.root, 'public/product_photos/axon/wires/aluminium.jpg')))
      @axonWiresHighVolt.photos.create(pics: File.open(File.join(Rails.root, 'public/product_photos/axon/wires/highVolt.jpg')))
      @axonWiresHalogenFree.photos.create(pics: File.open(File.join(Rails.root, 'public/product_photos/axon/wires/halogenFree.jpg')))
      @axonWiresRadiation.photos.create(pics: File.open(File.join(Rails.root, 'public/product_photos/axon/wires/radiationFree.jpg')))
      @axonWiresExtremeTemp.photos.create(pics: File.open(File.join(Rails.root, 'public/product_photos/axon/wires/extremeTemp.jpg')))
      # Connectors
      @axonConnectorsRectMicroD.photos.create(pics: File.open(File.join(Rails.root, 'public/product_photos/axon/connectors/rectMicroD.jpg')))
      @axonConnectorsCustomMicroD.photos.create(pics: File.open(File.join(Rails.root, 'public/product_photos/axon/connectors/customMicroD.jpg')))
      @axonConnectorsComboMicroD.photos.create(pics: File.open(File.join(Rails.root,'public/product_photos/axon/connectors/comboMicroD.jpg')))
      @axonConnectorsNanoD.photos.create(pics: File.open(File.join(Rails.root,'public/product_photos/axon/connectors/nanoD.jpg')))
      @axonConnectorsSpaceMini.photos.create(pics: File.open(File.join(Rails.root,'public/product_photos/axon/connectors/mini.jpg')))
      @axonConnectorsCircularMicroD.photos.create(pics: File.open(File.join(Rails.root,'public/product_photos/axon/connectors/circular.jpg')))
      @axonConnectorsMicroDBackshell.photos.create(pics: File.open(File.join(Rails.root,'public/product_photos/axon/connectors/backshell.jpg')))
      @axonConnectorsMILSTD.photos.create(pics: File.open(File.join(Rails.root,'public/product_photos/axon/connectors/milstd.jpg')))
      # Tubes and Tapes
      @axonTubesandTapesPTFETape.photos.create(pics: File.open(File.join(Rails.root,'public/product_photos/axon/tubesandtapes/tape.jpg')))
      @axonTubesandTapesPTFETube.photos.create(pics: File.open(File.join(Rails.root,'public/product_photos/axon/tubesandtapes/tube.jpg')))
      # ADDIX
      @axonADDIXMoulded.photos.create(pics: File.open(File.join(Rails.root,'public/product_photos/axon/addixs/moulded.jpg')))
      @axonADDIXOvermoulded.photos.create(pics: File.open(File.join(Rails.root,'public/product_photos/axon/addixs/overmoulded.jpg')))
      @axonADDIXCut.photos.create(pics: File.open(File.join(Rails.root,'public/product_photos/axon/addixs/cut.jpg')))
      @axonADDIXExtruded.photos.create(pics: File.open(File.join(Rails.root,'public/product_photos/axon/addixs/extruded.jpg')))
      @axonADDIXKeyboard.photos.create(pics: File.open(File.join(Rails.root,'public/product_photos/axon/addixs/keyboard.jpg')))
      @axonADDIXElastomer.photos.create(pics: File.open(File.join(Rails.root,'public/product_photos/axon/addixs/elastomer.jpg')))
      # AXON' Mechatronics - LOUPOT
      @axonMechatronicsLOUPOTPrecision.photos.create(pics: File.open(File.join(Rails.root,'public/product_photos/axon/loupots/precision.jpg')))
      @axonMechatronicsLOUPOTMoulded.photos.create(pics: File.open(File.join(Rails.root,'public/product_photos/axon/loupots/moulded.jpg')))
      @axonMechatronicsLOUPOTAssembled.photos.create(pics: File.open(File.join(Rails.root,'public/product_photos/axon/loupots/assembled.jpg')))
      @axonMechatronicsLOUPOTComponents.photos.create(pics: File.open(File.join(Rails.root,'public/product_photos/axon/loupots/components.jpg')))
      @axonMechatronicsLOUPOTInsertion.photos.create(pics: File.open(File.join(Rails.root,'public/product_photos/axon/loupots/insertion.jpg')))
      @axonMechatronicsLOUPOTPreforming.photos.create(pics: File.open(File.join(Rails.root,'public/product_photos/axon/loupots/preforming.jpg')))
      @axonMechatronicsLOUPOTOther.photos.create(pics: File.open(File.join(Rails.root,'public/product_photos/axon/loupots/other.jpg')))
      # AXON' PINTEC-CISAL
      @axonPINTECCISALPrecision.photos.create(pics: File.open(File.join(Rails.root,'public/product_photos/axon/pintecs/precision.jpg')))
      @axonPINTECCISALInterconnect.photos.create(pics: File.open(File.join(Rails.root,'public/product_photos/axon/pintecs/interconnect.jpg')))
      # AXON' Others
      @axonOthersEMI.photos.create(pics: File.open(File.join(Rails.root,'public/product_photos/axon/others/EMI.jpg')))
      @axonOthersTest.photos.create(pics: File.open(File.join(Rails.root,'public/product_photos/axon/others/test.jpg')))
    # Airborn
      # Connectors
      @airbornConnectorsHD4.photos.create(pics: File.open(File.join(Rails.root, 'public/product_photos/airborn/connectors/hd4.jpg')))
      @airbornConnectorsM.photos.create(pics: File.open(File.join(Rails.root, 'public/product_photos/airborn/connectors/m.jpg')))
      @airbornConnectorsMicroQUAD.photos.create(pics: File.open(File.join(Rails.root, 'public/product_photos/airborn/connectors/microquad.jpg')))
      @airbornConnectorsMicroSI.photos.create(pics: File.open(File.join(Rails.root, 'public/product_photos/airborn/connectors/mmsi.jpg')))
      @airbornConnectorsN.photos.create(pics: File.open(File.join(Rails.root, 'public/product_photos/airborn/connectors/n.jpg')))
      @airbornConnectorsR.photos.create(pics: File.open(File.join(Rails.root, 'public/product_photos/airborn/connectors/r.jpg')))
      @airbornConnectorsRC.photos.create(pics: File.open(File.join(Rails.root, 'public/product_photos/airborn/connectors/rc.jpg')))
      @airbornConnectorsRC2.photos.create(pics: File.open(File.join(Rails.root, 'public/product_photos/airborn/connectors/rc2.jpg')))
      @airbornConnectorsRZ.photos.create(pics: File.open(File.join(Rails.root, 'public/product_photos/airborn/connectors/rz.jpg')))
      @airbornConnectorsveriSI.photos.create(pics: File.open(File.join(Rails.root, 'public/product_photos/airborn/connectors/vsra.jpg')))
      @airbornConnectorsW.photos.create(pics: File.open(File.join(Rails.root, 'public/product_photos/airborn/connectors/w.jpg')))
    # ODU
      # Push-Pull Circular Connectors
      @oduPushPullCircularAMC.photos.create(pics: File.open(File.join(Rails.root, 'public/product_photos/odu/PushPulls/amc.jpg')))
      @oduPushPullCircularAMCHD.photos.create(pics: File.open(File.join(Rails.root, 'public/product_photos/odu/PushPulls/amchd.jpg')))
      @oduPushPullCircularMediSNAP.photos.create(pics: File.open(File.join(Rails.root, 'public/product_photos/odu/PushPulls/medi.jpg')))
      @oduPushPullCircularMiniMED.photos.create(pics: File.open(File.join(Rails.root, 'public/product_photos/odu/PushPulls/minimed.jpg')))
      @oduPushPullCircularMiniSNAP.photos.create(pics: File.open(File.join(Rails.root, 'public/product_photos/odu/PushPulls/minisnap.jpg')))
      @oduPushPullCircularMiniSNAPPC.photos.create(pics: File.open(File.join(Rails.root, 'public/product_photos/odu/PushPulls/minisnappc.jpg')))
      # ODU-MAC Modular Connectors
      @oduODUMAC.photos.create(pics: File.open(File.join(Rails.root, 'public/product_photos/odu/MACs/mac.jpg')))
      # Docking and Robotic System Connectors
      @oduDockRobDOCK.photos.create(pics: File.open(File.join(Rails.root, 'public/product_photos/odu/DockingRobotics/dock.jpg')))
      @oduDockRobROB.photos.create(pics: File.open(File.join(Rails.root, 'public/product_photos/odu/DockingRobotics/rob.jpg')))
      # Printed Circuit Boards Connectors
      @oduPCBFLAKAFIX.photos.create(pics: File.open(File.join(Rails.root, 'public/product_photos/odu/PCBs/flakafix.jpg')))
      @oduPCBMiniFLAKAFIX.photos.create(pics: File.open(File.join(Rails.root, 'public/product_photos/odu/PCBs/miniflakafix.jpg')))
      @oduPCBCard.photos.create(pics: File.open(File.join(Rails.root, 'public/product_photos/odu/PCBs/card.jpg')))
      @oduPCBMiniCard.photos.create(pics: File.open(File.join(Rails.root, 'public/product_photos/odu/PCBs/minicard.jpg')))
      # Single Contact Connectors
      @oduSingleContactSPRINGTAC.photos.create(pics: File.open(File.join(Rails.root, 'public/product_photos/odu/SingleContacts/springtac.jpg')))
      @oduSingleContactLAMTAC.photos.create(pics: File.open(File.join(Rails.root, 'public/product_photos/odu/SingleContacts/lamtac.jpg')))
      @oduSingleContactFLAT.photos.create(pics: File.open(File.join(Rails.root, 'public/product_photos/odu/SingleContacts/flat.jpg')))
      # Others
      @oduOthersHeavy.photos.create(pics: File.open(File.join(Rails.root, 'public/product_photos/odu/others/heavyduty.jpg')))
    # STOCKO
      # Multi-way connector systems
      @stockoMultiwayconnectorsystemsPitch25.photos.create(pics: File.open(File.join(Rails.root, 'public/product_photos/stocko/multiways/pitch25.jpg')))
      @stockoMultiwayconnectorsystemsPitch254.photos.create(pics: File.open(File.join(Rails.root, 'public/product_photos/stocko/multiways/pitch254.jpg')))
      @stockoMultiwayconnectorsystemsSpecial.photos.create(pics: File.open(File.join(Rails.root, 'public/product_photos/stocko/multiways/special.jpg')))
      @stockoMultiwayconnectorsystemsHighCurrent.photos.create(pics: File.open(File.join(Rails.root, 'public/product_photos/stocko/multiways/highcurrent.jpg')))
      @stockoMultiwayconnectorsystemsSFit.photos.create(pics: File.open(File.join(Rails.root, 'public/product_photos/stocko/multiways/sfit.jpg')))
      @stockoMultiwayconnectorsystemsSLock.photos.create(pics: File.open(File.join(Rails.root, 'public/product_photos/stocko/multiways/slock.jpg')))
      # Other
      @stockoOthersSolderless.photos.create(pics: File.open(File.join(Rails.root, 'public/product_photos/stocko/others/solderless.jpg')))
      @stockoOthersCrimp.photos.create(pics: File.open(File.join(Rails.root, 'public/product_photos/stocko/others/crimp.jpg')))
      @stockoOthersHVAC.photos.create(pics: File.open(File.join(Rails.root, 'public/product_photos/stocko/others/hvac.jpg')))

# product summary
  # assignment
    @moogSlipRingAerospace.summary = "Moog's slip rings have been successfully performing in aerospace and military applications for over 50 years.  These products are developed for rugged environments and demanding requirements.  Typical applications include FLIR systems, blade de-ice, target acquisition systems, tank turrets and manned / unmanned vehicles."
    @moogSlipRingCommercial.summary = "Moog's slip ring having been successfully performing in commercial and industrial applications for over 50 years. These products are developed for high performance environments and flexible requirements. Typical applications include camera systems, robotics, packaging machines, medical equipment and a wide range of automation systems."
    @moogSlipRingMarine.summary = "Moog has delivered trusted technology products and services to the offshore petroleum, oceanographic, seismic and maritime industries for more than 20 years. Focal marine slip rings are designed to function in extreme marine environments."
    @moogSlipRingOilfield.summary = "Designs are available for harsh oilfield conditions that are configured for electrical power, signals, or both. These designs can be integrated with other products such as fiber optical rotary joints and fluid rotary unions."
    @moogSlipRingWindTurbine.summary = "Wind turbines require reliable transmission of power and data signals from the nacelle to the control system for the rotary blades. Moog’s slip rings provide the performance and quality needed in demanding environments. Costly downtime is eliminated by using fiber brushes and robust mechanical components in the slip ring design."
    @moogMotorBrush.summary = "Moog offers a comprehensive selection of high performance motors used in a wide variety of applications, including medical, office automation, packaging, industrial, aerospace and defense."
    @moogMotorBrushless.summary = "Moog offers a comprehensive selection of high performance motors used in a wide variety of applications, including medical, office automation, packaging, industrial, aerospace and defense. "
    @moogMotorBrushlessServo.summary = "Moog servo motors are electronically commutated synchronous AC motors with permanent magnet field excitation, specifically designed for highly dynamic servo industrial applications where positioning times of 30 msec or less are often the norm."
    @moogMotorLinear.summary = "Moog's linear motors offer dynamic and precise linear motion positioning for robotics, factory automation, processing, packaging and other industrial applications. As a high force, direct drive solution, Moog's linear motors extend maintenance intervals and reduce the cost of ownership of any linear motion system. Other common names for linear motors include linear servos, brushless motors, or linear servo motors."
    @moogActuatorMultiPurpose.summary = "Multi-purpose actuators and servoactuators can be used for a variety of high-performance applications and are standard building blocks used in a variety of systems."
    @moogActuatorAircraft.summary = "Moog is the world leader in flight control and utility actuation systems for civil and military aircraft. Our offering extends from fully integrated systems to discrete product solutions, with a specialization in the following applications: Flight Control, Engine Controls, Active Vibration Control, Weapons Bay Door Drive."
    @moogActuatorDefense.summary = "Moog is the premier supplier of electrohydraulic, electromechanical, electropneumatic, and electrohydrastatic actuators for the defense industry. Moog provides the broadest range of actuation solutions in the industry, from fractional horsepower actuators for tactical missiles to over 100 horsepower actuators for submarines.  "
    @moogActuatorIndustrial.summary = "Moog has vast experience developing actuators for some of the world’s most demanding applications and building high performance motion control components is one of our strengths."
    @moogActuatorSpace.summary = "Moog's actuators have dominated all aspects of the exploration of the outer planets, flying to the moon and to every NASA planetary target. Heritage, assured reliability, and technical expertise are the hallmarks of Moog products for spacecraft and launch vehicle actuation. Moog provides solutions for commercial, military and scientific applications."
    @moogRotaryJointandUnionsJoint.summary = "Fiber Optic Rotary Joints (FORJ) are to optical signals what electrical slip rings are to electrical signals, a means to pass signals across rotating interfaces, particularly when transmitting large amounts of data. FORJs maintain the intrinsic advantages of fiber end to end. Moog has been producing Fiber Optic Rotary Joints for over twenty years. "
    @moogRotaryJointandUnionsUnion.summary = "Moog's fluid rotary unions are currently used around the world to ensure reliable transmission of life support, process, power and control fluids. Currently, fluid rotary unions rated for pressures up to 15,000 PSI (1000 bar) are available. Seals are selected based on chemical compatibility, design pressure, design temperature, required service life and acceptable leakage rate. Leak collection can be supplied when required for environmental or personnel safety. Fluid rotary unions can be combined with our electrical slip rings and fiber optic rotary joints."
    @moogAirMovingProductsBlower.summary = "With our sheet metal capabilities, Moog's high performance blowers can be tailored to the application. From 1U slot blowers, high pressure multistage blowers, dual centrifugal blowers to radial wheel blowers, we have the experience to help with your specific project. Our blowers are configurable with virtually any voltage, flow sensors and finger guards. Custom mounting flanges can be fabricated to fit your exact application."
    @moogAirMovingProductsController.summary = "The ability to build electronic controls customized to the application means that the designer can select the exact combination of functions necessary to optimize the system."
    @moogAirMovingProductsImpeller.summary = "Our motorized impellers offer quiet, high pressure airflow in a compact versatile design. Designed for virtually any form factor, any bus voltage, our in-house electronic and sheet metal capabilities allow custom products to be used in cost-sensitive, extreme environment and confined space applications."
    @moogAvionicInstrumentsLCD.summary = "With over 35 years of experience in cockpit displays, avionics and instrumentation, Moog is a prime contributor to the success of numerous aerospace platforms. We offer total in-house engineering capabilities for design, manufacture and test of a full range of products. As the supplier of choice for major OEMs in the fixed wing and rotary wing communities, we serve both the military marketplace and commercial aviation."
    @moogAvionicInstrumentsIndicator.summary = "Demonstrated reliability of the engine's LCD instruments is 50,000 operating hoursLCD engine instruments assist with the safe operation and maintenance of the aircraft and its engineWhile all the instruments are microprocessor controlled, the torque, temperature and tach indicators are also programmed to detect and store over-exceedence events during ground and flight operationsExceedence events can be played back directly on the dial face of the unit"
    @moogSensorsandDetectorsSensor.summary = "The LifeGuard Point Level Sensor is designed for far wall sensing on reservoirs ranging from 0.3” to 5.0” (7.6 mm to 127.0 mm) or near wall sensing based on customer’s specific requirements. All LifeGuard level sensor electronics are integrated into the sensor housing, ready to interface with the user’s system. Moog engineers can tailor our sensors to work with your specific reservoir."
    @moogSensorsandDetectorsDetector.summary = "LifeGuard® ultrasonic air bubble detectors feature proprietary swept frequency technology, making these sensors more reliable and accuratethan those utilizing fixed frequency or pulse-type circuitry."
    @moogMultiplexersFOCAL.summary = "To exploit the full bandwidth of fiber, multiplexing combines many signals of various types — video, serial data, network data, control lines — onto one optical fiber. Multiplexers that combine a number of signals electrically are typically called time division multiplexers (TDM); discrete parts of each input signal is assigned a time slot in the outgoing data stream. Moog has a wide range of TDM options that allow multiple electrical channels to be multiplexed onto one or more optical fibers."
    @moogMultiplexersProtokraft.summary = "Moog Protokraft designs and manufacturers high-speed optoelectronic components and communication subsystems for use in harsh environment networking equipment applications. The company provides optoelectronic components and subsystems for short and intermediate reach harsh environment optical networks, including optical network switches, optical enterprise and storage area networks (SAN's) and tactical optical access networks. These active optical subsystems integrate the functions of optical transceivers into the natural structure of a passive optical connector."
    @moogMultiplexersPRIZM.summary = "The expanded Prizm™ product line now gives customers more fiber optic, video and data multiplexer solutions for harsh environments. Combined with Moog’s fiber optic rotary joints and slip rings, our technology and experience allows us to support a variety of custom and standard modems in operation around the world."
    @moogSolenoidsLinearElectro.summary = "Moog leads the way in designing and manufacturing linear electromechanical actuators for munitions racks. These devices provide over 50 pounds of linear force when activated by the internal rotary solenoids moving in a perpendicular plane to the linear motion. Because of this unique design, the linear electromechanical actuator (LEMA) can only be activated by an electronic pulse and is impervious to shock and unintentional activation. Thus, it provides a lot of force (up to 125 lbs) from a relatively small unit and is highly dependable and fault-free."
    @moogSolenoidsLinear.summary = "Moog linear solenoids include simple push / pull applications, but we are best known for adding features to enhance the value of the solenoid. For example, we can provide latching in energized or power-off applications, position indication feedback and four-position articulating motion. Linear solenoids can also be designed for proportional motion relative to power input. Our solenoids are known for providing more force from the same size than our competitors do because we have developed combinations of high-flux magnetic metals and dry lubricant films to provide more power per square inch."
    @moogSolenoidsRotary.summary = "Moog rotary solenoids are on most of today’s commercial airliners. Although the cockpits are complete with digital gauges, nothing catches the pilot’s eye like a moving red flag. Our rotary solenoids, with a red flag on the rotating shaft, are still preferred. We also make rotary solenoids for camera shutters and other industrial applications."
    @moogOthersSynchro.summary = "As a circuit element, the synchro is essentially a variable-couplingtransformer; the magnitude of the magnetic coupling between the primaryand secondary, and hence the magnitude of the output voltage, varies according to the position of the rotatable element. In function, the synchro is an electromechanical transducer. A mechanical input such as a shaft rotation is converted to a unique set of output voltages, or a set of input voltages is used to turn a synchro rotor to a desired position."
    @moogOthersAlternators.summary = "The AG Matrix™ Series brushless DC permanent alternators are used in applications that require high power density. These alternators are available in a wide range of sizes, outside diameters from 5.25 to 22 inches (133.35 mm to 558.8 mm) with multiple stack sizes and winding options for each diameter. The designs are optimized for maximum output power and maximum efficiency."
    @moogOthersFOM.summary = "The Fiber Optic Modem (FOM) provides electrical to optical conversion of electronic communication and data signals for transmission using tactical fiber optic cable assemblies. The FOM simultaneously receives incoming optical signals and converts them back to the original electronic signal allowing for full duplex transmission. Together with the tactical fiber optic cables, the FOM provides a rugged, secure, and easy deployable optical link. The FOM is available in both single and multi-channel configurations and can be mounted on the signal entry panel (SEP) of tactical shelters, in 19” racks or placed on the ground (multi-channel versions only)."
    @moogOthersResolvers.summary = "Moog brushless resolvers are economical and highly accurate. Motion feedback sensors can be used to provide velocity and position information for closed-loop electronic control, as well as brushless DC motor commutation. They contain no internal electronics or optics and are unaffected by electrical noise, heat, shock and vibration. We manufacture quality motion technology products for aerospace, military and commercial applications."
    @moogOthersPCB.summary = "Since 1995, Moog Components Group in Galax has been in the business of building reliable rigid, flex, and rigid flex PCBs. With a wide customer base consisting of world leaders in the electronics, communications, military, and education sectors, customer satisfaction is paramount.  "
    @axonCoaxialStandard.summary = "Axon’ offers different types of coaxial cables with single or double screened coaxial cables, triaxial cables, low noise and subminiature coaxial and triaxial cables. For high performance and small coaxial cables, Axon’ uses its patented Celloflon® (porous PTFE) which improves the electrical characteristics of the cable. The company also supplies RG coaxial and triaxial cables according to the American MIL-C-17standard and KX coaxial cables according to the French NF-C-93550 standard."
    @axonCoaxialMiniature.summary = "Miniaturisation and quality of image transmission are key issues for manufacturers of medical equipment including medical imaging, ultrasound or endoscopy. With outer diameter down to 0.20 mm and high performance dielectric materials, miniature coaxial cables designed by Axon’ have been developed to transmit a large number of signals with no interference. They also can be integrated into hybrid cables able to transmit power, signals and fluids."
    @axonCoaxialLight.summary = "Lightweight coaxial cables manufactured by Axon’ are 30 % lighter than the former aeronautics WN standards. Designed for the cabling of aircraft and helicopters, they exhibit excellent mechanical and electrical performances up to 6 GHz and 18 GHz for cable assemblies. The lightened WN KW (7.65 mm diameter) consists of a central aluminium conductor, a Celloflon® dielectric (Expanded PTFE patented by axon’), a reinforced aluminium braided shield and a FEP outer jacket. For a cable with such a small diameter, the attenuation values are excellent (15 dB for 100 m at 1 GHz). Moreover, the Celloflon® provides not only a low dielectric constant but also very good crush resistance (100 daN/100 mm)."
    @axonCoaxialHand.summary = "Quasiflex® is a range of coaxial cables which can be formed by hand. These hand-formable cables are designed to replace semi-rigid cables whilst retaining similar electrical performance up to 18 GHz. No need to have a specialised tool to bend the cable: the optimized tin soaked shield which protects the cable allows for an easy installation. Quasiflex® hand formable coaxial cables can be delivered with SMA connectors. They can be used in antenna systems, base stations or in satellites."
    @axonFlatFlexible.summary = "Designed for board-to-board interconnections in electronic systems, Axojump® Flat Flexible Cables (FFC) are made up of flat tin or gold plated copper conductors insulated with Polyester or Polyimide tapes. From 0.30 mm pitch for space saving to 1.25 mm, a large variety of pitches is available to suit your needs. In addition to the standard range, Axon’ has developed custom designed flat flex cables incorporating folds, shields, notches, punching, slitting, marking or special mounting methods. Flat flexible cables are compatible with ZIF and LIF connectors."
    @axonFlatFDC.summary = "Designed for board to display interconnections, FDC-Flat Display Connections consist of standard FFC-Flat Flexible Cables and connectors such as DF-9, DF-19, FI-SE, FI-X at one or both ends. Available in 0.50 mm, 1.00 mm and 1.25 mm pitches, FDC-flat cable assemblies are ready-to-plug flexible connections. They have specially been designed for small displays. Axon’ Cable has developed 2 ranges of flat cable assemblies compliant with the LVDS protocol and V-By-One® HS for HD displays and 3 D displays."
    @axonFlatSpeed.summary = "FDC100® Flat Display Connections are made with 100Ω flat flex cables terminated with connectors patented by Axon’ Cable. They are suited for high speed data transmission of video signals. High data rate flat cable assemblies are compliant with the LVDSprotocol and the ultra high data rate flat cable assemblies are compliant with the V-by-One® HS protocol. Full HD displays, larger screens with higher resolutions, 200 Hz frequency, LED and 3D displays, increase of colour depth, high speed of signal transmission, Axon’ has a solution to support all the current market trends."
    @axonFlatRoundPins.summary = "Axostrip® is a range of Round-end Flat Cables (RFC) which can be soldered or inserted to achieve board to board interconnections. These flat flexible cables with round pins are made up of tin plated copper insulated with Polyester, Polyimide or Aramide tapes. The Axostrip® round-flat-round technology allows for a high resistance to vibration and bending. Available in several pitches including 1.00 mm, 1.25 mm, 1.27mm, 1.905 mm, 2.00 mm, 2.54 mm and 5.08 mm pitches, they are easy and fast to install."
    @axonFlatBulk.summary = "Bulk flat flexible cables Flexlink® are bare copper or tin plated copper conductors insulated with polyester or polyimide tapes. They are supplied on the reel for any application where flexibility and space reduction are required. Bulk FFC can be installed in printers and computers for the consumer electronics, used for special machines or for board-to-board connection. Bulk flexible flat cables can also be used for the cabling of switch rotary connectors in airbag® modules. Available in 1.27 mm and 2.54 mm pitches, standard flat cables of the Flexlink® range are compatible with the most commonly used crimp contact. As a specialist in flat flex cables, Axon' can offer you custom designed solutions from 0.30 mm to 1.25 mm pitch."
    @axonFlatWidth.summary = "Low width flexible flat cables, Picoline® are made with flat copper conductors insulated with a polyester tape. They have been designed for airbag rotary connectors used to release the driver’s airbag housed under the steering wheel. The unique process patented by Axon’ Cable allows for reducing noise of the cable inside the airbag® system."
    @axonFlatRoundConductors.summary = "Round Conductor Flat Cables have been designed for applications requiring space saving and temperature resistance. Insulated with FEP or ETFE, these ribbon cables can be made with solid or stranded round conductors. Available in 1.27 mm and 2.54 mm pitches, these ribbon flat cables have also an excellent flex life."
    @axonFlatHybrid.summary = "Excellent flex life and robustness! These are the qualities of hybrid flat cablesmanufactured by Axon’ Cable. Ranging through from conductor to jacket, Axon’ cable selects materials able to withstand chemical products, solvents, high temperatures as well as repeated flexions. Hybrid flat cables are designed for equipment with a reduced cabling space. Tailor made, hybrid versions can be offered with twisted pairs, feeder wires, signal cables, flexible wires, PTFE or polyurethane (PU) tubes. This is an ideal solution for automation systems and robots."
    @axonWiresHighTemp.summary = "For any applications requiring resistance to high temperatures, Axon’ Cable offers a large range of equipment wires insulated with PTFE, ETFE, FEP or polyimide. Different versions of Mil-spec and commercial wires including single or multicore wires, extruded or taped, shielded and jacketed, extra flexible,wire-wrap wires and high flexible wires will meet your requirements. As a specialist in plastics technology, Axon’ Cable also offers a large range of radiation resistant wires and cables for nuclear and scientific applications, low smoke and zero halogen wires, cables which resist extreme temperatures."
    @axonWiresESA.summary = "Axon’ Cable supply a large range of wires and cables in compliance with ESCC standards for the space industry. Lightweight and highly resistant, they have been designed to meet the challenging requirements of the launchers and satellites including internal cabling of electronic boxes, LEO applications and cryogenic applications. From single core hook-up wires to coaxial cables and data bus cables, Axon’ offers a large range of ESA wires and cables."
    @axonWiresAluminium.summary = "Axon‘ Cable has developed a whole range of silver plated aluminium conductors and shielded wires brandnamed Axalu® designed for satellite data transmission and battery power distribution. They allow for 50 to 60 % weight saving regarding conductor and shielding in comparison with copper wires. Aluminium conductors have a low atomic mass which is an advantage for the manufacture of shielding with exposure to x-rays."
    @axonWiresHighVolt.summary = "Specialised in custom design wires and cables, Axon’ Cable offers miniature high voltage wires for use up to 22 kV DC. They are specially designed for very demanding applications including aeronautics, military, space and offshore. As weight saving is a key issue in aircraft, our high voltage wires have married high performance with small size. For very special requirements including radiation, high temperature or cryogenics, Axon’ can offer wires to your needs. Axon’ Cable is equipped with a partial discharge tester to assess the quality of the wire insulation"
    @axonWiresHalogenFree.summary = "Axon’ Cable supplies Low Smoke Zero Halogen (LSZH) cables and wires designed to avoid emission of toxic fumes and propagation of fire in public places and industrial facilities in case of fire. The whole range consists in single wires, shielded cables or multi-core cables jacketed with Axon’ special compounds which do not emit toxic and corrosive fumes. They comply with IEC standards and have very good mechanical characteristics."
    @axonWiresRadiation.summary = "Axon’ Cable has developed a range of single wires, multi-cores wires and cables which resist to radiation and high temperatures. Insulated with different materials including ETFE, special thermoplastic compounds, crosslinked polyolefin (XLPE/XLPO), polyurethane (TPU) and polyimide (taped or TPI extruded), they meet the severe requirements of scientific and nuclear applications. They can be used as instrumentation, control and sensor cables in nuclear plants or in particle detectors."
    @axonWiresExtremeTemp.summary = "Vibraflame® cables are fire resistant wires and composite cables designed to withstand extreme temperatures ranging from -196°C to + 1565°C. This is an ideal solution for applications in steel and aluminium plants, oil refineries, glass factories, offshore rigs and in military equipment. Vibraflame® wires and composite cables are safer: heat resistant, they do not propagate flame and do not contain asbestos. They also resist water, chemicals, acids and lubricants. Vibraflame® composite cables can be used as power, control, coaxial or power feed cables depending on the application. Axon’ Cable also offers extension and compensating cables for thermocouples insulated with Vibraflame® insulation able to resist temperatures up to 1050°C."
    @axonConnectorsRectMicroD.summary = "By its very design, the Micro-D connector system meets all requirements: robustness, durability, low contact resistance, high current, dielectric strength, vibration, shocks, etc. With 1.27 mm (.050\") contact spacing, micro-D connectors which are half the size of D-sub connectors are an ideal solution for weight saving. In addition to a complete range of QPL qualified Micro-D connectors to MIL-DTL-83513, Axon’ also offers micro-D PCB connectors and cable assemblies in both metal and plastic bodied versions. Our standard range meets the performance of the MIL standard. Our MIL and standard micro-D connectors are based on the highly reliable twist pin contact technology, which by its design and performance enables the system to meet the most severe requirements."
    @axonConnectorsCustomMicroD.summary = "In addition to the standard range of rectangular and circular Micro-D connectors, Axon’ Cable can assist in designing any special version or custom design to meet specific requirements. Custom design number of ways, high density connectors, EMI and panel mount connectors, filtered micro D connectors, waterproof and hermetic connectors, non magnetic connectors, overmoulding solutions are requirements that Axon’ can meet. From pigtails to complex multi-branched harnesses designed for the most challenging of environments, Axon’ Cable will provide you with the best solution you need."
    @axonConnectorsComboMicroD.summary = "Combo micro d connectors accommodate a mixture of power and coaxial cables, along with regular wires, all in one compact body. This is an ideal solution to route power and RF signals through very small connectors. These hybrid connectors are manufactured according to MIL-DTL-83513 and fulfill the requirements of this standard in terms of lifetime, mechanical performance and environmental stress. Available as PCB and pigtail connectors, Axon’s micro d combo solutions are used in any applications where space reduction, ease of integration and mechanical reliability are the most important criteria."
    @axonConnectorsNanoD.summary = " Axon’ Cable offers nano-D connectors and jumpers based on the highly reliable Twist Pin contacttechnology. They are the ideal solution for applications including aeronautics, space, military, medical and off-shore which require extreme miniaturization, reliability, space or weight saving. Nanominiature connectors are based on the Nano-D technology with 0.635 mm (.025\") contact spacing and nanominiature shells. The performances of the nano-D connectors offered by Axon’ are based on the MIL-DTL-32139 specification which is a guarantee of interchangeability or intermateability between suppliers."
    @axonConnectorsSpaceMini.summary = "Axon’ Cable has developed ranges of micro-D (1.27 mm contact spacing) and nano-Dconnectors (0.635 mm contact spacing) for the challenging requirements of space electronics. The space micro-D range benefits from the expertise in the Axon’ D-Line MIL-DTL-83513 D-shape connectors. Small, lightweight and reliable, Axon’ space micro-D connectors are approved to ESCC 3401/029 EPPL2. Axon’ nano-D connectors for space have been approved to ESCC 3401/086 EPPL2 since 2014. In order to meet the high quality level requested, they are manufactured in class 100 000 clean rooms. Axon’ also offers tailor-made connectors and cable assemblies for space applications."
    @axonConnectorsCircularMicroD.summary = "The circular connector range benefits from the expertise in the Axon’ D-Line® MIL-DTL-83513 D-shape connectors and features easy-to-use connect and disconnect functionality. The MIL-DTL-83513 standard dictates the design and performance for micro-D connectors. These small connectors meet the requirements of the most demanding applications and harsh environments. Military equipment, research centres, on-board electronics are just a few examples. Despite their high pin density, small size and lightweight bodies, the Axon’ miniature circular connectors offer similar performances to their rectangular micro-D cousins."
    @axonConnectorsMicroDBackshell.summary = "In addition to Micro-D connectors, Axon’ offers a large range of accessories which can be mounted on site. They contribute to the mechanical protection or EMC performanceof the cable assemblies. Micro-D accessories designed by Axon’ include backshells, shield braids, shield termination bands and other custom designed systems."
    @axonConnectorsMILSTD.summary = "Axon’ Cable offers a range of connectors called ACB1 (Axon’ Connector Bus Series 1) which are to be crimped on to cables and assemblies designed and manufactured to MIL-STD-1553. These triaxial connectors are suitable for any type of AWG24 shielded twisted pair cables.A single crimping tool M22520/5-01 with an axon’ die is required to assemble the connector."
    @axonTubesandTapesPTFETape.summary = "Made with PTFE, films and tapes designed by Axon’ are used for cable insulations, coating or table cover for laboratories. Axon’ Cable has patented a porous PTFE material called Celloflon® which can be used for cable insulation."
    @axonTubesandTapesPTFETube.summary = "Axon’ Cable has gathered experience not only in PTFE insulated wires and cables but also in the manufacture of PTFE tubes. PTFE tubes can be integrated into hybrid cables and assemblies designed by Axon’. The highly regular diameter of the tubes, achieved through a reliable and precise manufacturing process, makes it possible to ensure a highly accurate quantity of fluid. Ultra thin PTFE tubing can also be used for medical microcatheters."
    @axonADDIXMoulded.summary = "As an expert in elastomeric parts for over 60 years, Addix manufactures moulded shapes with different processes: compression moulding, transfer moulding and injection moulding. Addix joined the Axon’ group in 1994."
    @axonADDIXOvermoulded.summary = "As an expert in elastomeric components since over 60 years, Addix specialises in the design and manufacturing of overmoulded parts including bonded parts. Different kinds of moulding are possible: elastomers over elastomers, elastomers over plastics, elastomers over metal, elastomer over PTFE, elastomers over textile."
    @axonADDIXCut.summary = "As an expert in elastomeric components for 60 years, Addix designs and manufactures custom designed cut parts. They can be cut from moulded plates, overmoulded plates from substrate or extruded profiles.Addix joined the Axon’ group in 1994."
    @axonADDIXExtruded.summary = "As an expert in elastomer products for 60 years, Addix specialises in the design and manufacture of elastomer components. The company can offer extruded profilesincluding standard and custom designed shapes, cords, tubes, square shapes. In addition to these extruded profiles, Addix is able to manufacture extruded gaskets with a cold or hot adhesion process, cut parts, washers or sleeves."
    @axonADDIXKeyboard.summary = "Addix specialises in elastomer parts and components and can offer keyboards including keypads or membranes, keyboards with silicone or made with other materials. Keyboards are keys located between the top box and the printed circuit board. They make contact with the PCB."
    @axonADDIXElastomer.summary = "Addix , which joined the Axon’ group in 1994, has over 60 years of experience in elastomeric parts and shapes. Addix has integrated its own laboratory in order to formulate and design custom designed and standard compounds. Our compounds are tested according to standards or customers’specifications."
    @axonMechatronicsLOUPOTPrecision.summary = "As a specialist in interconnect and process automation, Axon mechatronics, Division Loupot, offers interconnect solutions such as precision presswork, loose or reeledparts. Axon mechatronics, Division Loupot, is ISO/TS 16949 approved."
    @axonMechatronicsLOUPOTMoulded.summary = "As a specialist in interconnect and process automation, Axon mechatronics, Division Loupot, offers interconnect solutions such as continuous and piece part moulded and overmoulded. Axon mechatronics, Division Loupot, is ISO/TS 16949 approved."
    @axonMechatronicsLOUPOTAssembled.summary = "As a specialist in interconnect and process automation, Axon mechatronics, Division Loupot, designs and manufactures interconnect solutions such as connectors and contacts. Axon mechatronics, Division Loupot, is ISO/TS 16949 approved."
    @axonMechatronicsLOUPOTComponents.summary = "As a specialist in interconnect and process automation, Axon mechatronics, Division Loupot, offers mechatronics and Moulded Interconnect Devices (MID) solutions for electrical and functional systems."
    @axonMechatronicsLOUPOTInsertion.summary = "As a specialist in interconnect and process automation, Axon mechatronics, Division Loupot, offers a complete range of standard automatic and semi-automatic insertion equipment as well as custom designed insertion machines."
    @axonMechatronicsLOUPOTPreforming.summary = "As a specialist in interconnect and process automation, Axon mechatronics, Division Loupot, offers a complete range of standard and custom designed machines for component pre-forming."
    @axonMechatronicsLOUPOTOther.summary = "As a specialist in interconnect and process automation, Axon mechatronics, Division Loupot, offers a complete range of custom designed machines for electronics industry."
    @axonPINTECCISALPrecision.summary = "As an expert in interconnect components, Axon’ PinTec has designed and manufactured standard and custom-designed contacts for automotive and industry for 15 years. The company has a strong technological advantage: the electrostriction technology. Axon’ PinTec has been ISO 9001 certified."
    @axonPINTECCISALInterconnect.summary = "As an expert in electronics components, Axon’ PinTec has designed and manufactured interconnect Pin Headers for automotive and industrial applications for 15 years. The company located in the Alsace region in France has integrated the manufacture of contacts and the injection of insulating materials. Axon’ PinTec is equipped with automatic insertion machines which are able to manufacture large volumes. This technological expertise enables the company to adjust production to customers’ needs. Axon’ PinTec has been ISO 9001 certified."
    @axonOthersEMI.summary = "From the design of the cable or the whole interconnect, Axon’s engineers specialised in electromagnetic compatibility (EMC)intervene and advise with their own simulation software. They define future transfer impedance (Zt) of the complete assembly using the operating frequency of the device. Axon’ offers the most appropriate solutions including optimized shielding braids, over-braiding, shield terminations, cabling accessories, connectors and backshells. Electromagnetic interference really does a hard life with Axon’ Cable’s solutions."
    @axonOthersTest.summary = "Our cables and cable assemblies are tested in the most severe conditions: flexlife, flexibility, resistance to chemicals, abrasion resistance, extreme temperatures, high data rate, EMI protection, and demanding electrical requirements. For very specific requirements, our Process Development team is also able to design bespoke equipment and test benches in partnership with our customers."
    @airbornConnectorsHD4.summary = "The HD4 open-pin field product line is designed to meet the requirements for high-speed, high-density, signal-integrity in 100 Ω and 85 Ω differential serial bus applications. <br><b>SIZES:</b> 4 rows, 7 columns (28 contacts)<br><b>TERMINATIONS:</b> Press-fit, paste-in-hole, jumper cable <br><b>BODY MATERIAL:</b> Plastic"
    @airbornConnectorsM.summary = "Micro products are approved to MIL-83513 standard.  This product offers an extensive mix of termination styles and custom design capability.<br><b>SIZES:</b> 9– over 100 contacts <br><b>TERMINATIONS:</b> Plated thru-hole, surface-mount, solder cup, crimp, flex circuit<br><b>BODY MATERIAL:</b> Metal and plastic options "
    @airbornConnectorsMicroQUAD.summary = "A rugged Micro-D connector designed to handle LVDS serial bus signals like IEEE 1394, Ethernet, and serial rapid IO making it ideal for most high-reliability applications. (MIL-83513 qualified contact system with metal shells)<br><b>SIZES:</b> 0–50 signal contacts, 1–10 quadrax modules<br><b>TERMINATIONS:</b> Pre-wired, surface-mount<br><b>BODY MATERIAL:</b> Metal"
    @airbornConnectorsMicroSI.summary = "A rugged Micro-D connector designed for high-speed/signal-integrity applications (up to 10 GB) and flexibility by supporting 1X, 4X, and 8X 100 Ω and 85 Ω differential serial buses. (MIL-83513 qualified contact system with metal shells.) <br><b>SIZES:</b> 23 pins, 4DP +9SB up to 65 pins, 18DP +9SB<br><b>TERMINATIONS:</b> stranded wire, surface-mount <br><b>BODY MATERIAL:</b> Metal"
    @airbornConnectorsN.summary = "Nano products are approved to MIL-32139 standard. The N-Series offers the ultimate connector solution for the smallest and most demanding spaces.<br><b>SIZES:</b> 9 - 91 contacts <br><b>TERMINATIONS:</b> Plated thru-hole, surface-mount, pre-wired <br><b>BODY MATERIAL:</b> Metal and plastic options"
    @airbornConnectorsR.summary = "R Series products are high-density connectors approved to MIL-55302 standard commonly used in board to board applications.<br><b> SIZES:</b> 11– over 600 contacts <br><b>TERMINATIONS:</b> Plated thru-hole, surface-mount, press-fit, stackable, solder cup, crimp-removable<br><b>BODY MATERIAL:</b> Plastic"
    @airbornConnectorsRC.summary = "The stackable compliant connector is one of AirBorn’s solutions for high-density board-to-board stacking applications. This connector family is available in 85 Ω differential serial buses. Patented, one-piece contact system. <br><b>SIZES:</b> 4 rows, 7–50 columns (28–200 contacts)<br><b>TERMINATIONS:</b> Plated thru-hole, press-fit <br><b>BODY MATERIAL:</b> Plastic"
    @airbornConnectorsRC2.summary = "The stackable compliant connector family has an aligned contact field for improved signal integrity. It is used in high-density, board-to-board stacking applications. It supports 100 Ω and 85 Ω differential serial buses.<br><b>SIZES:</b> 3 & 4 rows, 1–4 bays (25–120 contacts) <br><b>TERMINATIONS:</b> Press-fit, plated thru-hole<br><b>BODY MATERIAL:</b> Plastic"
    @airbornConnectorsRZ.summary = "The RZ family of high-density, board-to-board or flex circuit stacking applications offers users a reliable one-piece contact system.  Its solder-less interconnect is compressed under pressure between parallel, printed wiring boards or between a printed wiring board and other electronic components. <br><b>SIZES:</b> 2–7 rows, 10–25 columns (20–175 contacts) <br><b>TERMINATIONS:</b> Compression <br><b>BODY MATERIAL:</b> Plastic"
    @airbornConnectorsveriSI.summary = "The verSI open-pin field product line is designed to meet the requirements for high-speed/high-density/signal integrity 100 Ω and 85 Ω differential serial bus applications. <br><b>SIZES:</b> 4–10 rows, 10–50 columns (40–500 contacts) <br><b>TERMINATIONS:</b> Press-fit, paste-in-hole, plated thru-hole, pre-wired jumper cable and flex jumper cable <br><b>BODY MATERIAL:</b> Plastic and metal (ruggedized)"
    @airbornConnectorsW.summary = "W Series products are high-density connectors approved to MIL-55302 standard commonly used in board to board applications. <br><b>SIZES:</b> 1– over 200 contacts <br><b>TERMINATIONS:</b> Plated thru-hole, surface-mount, solder cup, wire-wrap, flex plated thru-hole <br><b>BODY MATERIAL:</b> Plastic"
    @oduPushPullCircularAMC.summary = "Designed specifically for military applications, this extremely rugged metal circular connector series satisfies every demand even under the most extreme conditions.  Tough, watertight and easy to clean, this lightweight, non-reflective connector system has excellent EMI shielding within a compact housing making the AMC ideal for deployment."
    @oduPushPullCircularAMCHD.summary = "From medical technology to consumer electronics to automotive technology: the trend toward miniaturization continues. High-Density connectors provide the highest possible number of contacts in the most compact space. It gives developers new possibilities and solutions while simultaneously challenging the manufacturer. Because the connectors’ reliability and electrical and mechanical robustness must remain intact in spite of the compact size."
    @oduPushPullCircularMiniMED.summary = "This assembled plastic connection will always come in handy when a light, space-saving and watertight cable assembly is required. The ODU MINI-MED can be easily mated and has a Break-Away function to enable the quick disconnection of the plug and in-line receptacle or receptacle. This solution offers safe, hassle-free use in fields with hygiene requirements, such as medical technology. The compact MINI-MED connection can also be used in industrial electronics or measuring and testing."
    @oduPushPullCircularMediSNAP.summary = "Medical devices require the most reliable connections possible while maintaining the flexibility of multiple contact and termination options coupled with an economical price point.  The ODU MEDI-SNAP combines these features with a unique color and mechanical keying system to offer the ideal connector solution for medical device system designers."
    @oduPushPullCircularMiniSNAP.summary = "The ODU MINI-SNAP is the ideal self-securing circular connection for a wide range of applications. If the application requires transferring power, signal, data or media – the ODU MINI-SNAP offers long-term reliability, a high level of quality and the best operating features."
    @oduPushPullCircularMiniSNAPPC.summary = "The ODU MINI-SNAP PC Push-Pull plastic connector system combines EMI shielding, IP 67 environmental protection and a plastic housing to offer a system that is both lightweight and affordable.  With multiple sizes and termination styles to choose from, the ODU MINI-SNAP PC is the ideal solution for medical applications where reliability is paramount."
    @oduODUMAC.summary = "The intelligent way to create an individual connection to transfer signal, current, data, air, liquid or even fiber optic.  Interfaces can be combined in one ODU-MAC system according to your application needs. The result is an effective, compact and attractive overall connection with unsurpassed functionality. The ODU-MAC eliminates confusing panels of connectors by combining everything into one easy to mate connector system."
    @oduDockRobDOCK.summary = "Industrial robots, testing and inspection systems and industrial tool changing systems all require reliable automatic docking. Their high load requires an especially rugged connection system with contact stability. The ODU DOCK connectors, with their unique Springwire technology, offer a perfect solution that has been designed for over 100,000 mating cycles."
    @oduDockRobROB.summary = "Robotic systems are used on production lines that cannot experience down time.  When down time means loss of revenue, any product or process that can minimize or eliminate loss of time is a great asset.  The ODU ROB can be installed on replacement cable sets to quickly exchange cables during the production process.  This reduces the maintenance effort and consequently increases your productivity."
    @oduPCBFLAKAFIX.summary = "The ODU FLAKAFIX system offers a reliable and cost-effective solution for the PCB connections. This board-to-wire connector is characterized by contact security, reliable long term performance, low transfer resistance and gas-tight contact points on the conductor."
    @oduPCBMiniFLAKAFIX.summary = "The ODU MINI-FLAKAFIX series is the right choice for connecting printed circuit boards over greater distances and under user-defined and/or changeable angles. Contact between the card and cable can be made either as a plug-in or soldered as type."
    @oduPCBCard.summary = "ODU CARD connectors are suitable as medium and high pole, plug-in contact elements. Thanks to a good geometric layout, they enable a high packing density on printed circuit boards. ODU CARD connectors are available as square socket / plug combinations available."
    @oduPCBMiniCard.summary = "By combining tiny dimensions and maximum power, ODU MINI-CARD creates optimal connections between boards – both for THT soldering as well as for surface mounting (SMT soldering). The two guide pins moulded on the insulating body facilitate centring during assembly and absorb horizontal mechanical forces of printed circuit boards."
    @oduSingleContactSPRINGTAC.summary = "No contact technology transfers signal and power more reliably than the patented ODU SPRINGTAC® system. Thanks to the individually suspended Springwires, even in small diameters this contact offers a high number of contact surfaces. Up to 15 springs are mounted into even the smallest design with a 0.76mm contact diameter. Each spring makes contact with the pin allowing for an extremely high number of mating cycles with consistently low contact resistance."
    @oduSingleContactLAMTAC.summary = "The ODU LAMTAC® stamped contact is capable of mating and de-mating up to 10,000+ cycles. As versatile as the ODU SPRINGTAC®, this contact technology delivers a high-reliability connector system at a cost-effective price."
    @oduSingleContactFLAT.summary = "The flat socket system was designed specifically to test flat or rectangular contacts typically found in automotive connector harnesses.  The flat socket system is ideal for testing applications where 50,000+ mating cycles are required."
    @oduOthersHeavy.summary = "ODU Heavy Duty connectors have been designed for the harshest conditions where rain, wind, snow, dirt and sea air are commonplace. The proven ODU SPRINGTAC® contacts with Springwire technology ensure a secure connection for transferring signal, high power and high current even in high vibration applications such as port cranes, aerospace testing and smelting furnaces."
  # save
    @moogSlipRingAerospace.save
    @moogSlipRingCommercial.save
    @moogSlipRingMarine.save
    @moogSlipRingOilfield.save
    @moogSlipRingWindTurbine.save
    @moogMotorBrush.save
    @moogMotorBrushless.save
    @moogMotorBrushlessServo.save
    @moogMotorLinear.save
    @moogActuatorMultiPurpose.save
    @moogActuatorAircraft.save
    @moogActuatorDefense.save
    @moogActuatorIndustrial.save
    @moogActuatorSpace.save
    @moogRotaryJointandUnionsJoint.save
    @moogRotaryJointandUnionsUnion.save
    @moogAirMovingProductsBlower.save
    @moogAirMovingProductsController.save
    @moogAirMovingProductsImpeller.save
    @moogAvionicInstrumentsLCD.save
    @moogAvionicInstrumentsIndicator.save
    @moogSensorsandDetectorsSensor.save
    @moogSensorsandDetectorsDetector.save
    @moogMultiplexersFOCAL.save
    @moogMultiplexersProtokraft.save
    @moogMultiplexersPRIZM.save
    @moogSolenoidsLinearElectro.save
    @moogSolenoidsLinear.save
    @moogSolenoidsRotary.save
    @moogOthersSynchro.save
    @moogOthersAlternators.save
    @moogOthersFOM.save
    @moogOthersResolvers.save
    @moogOthersPCB.save
    @axonCoaxialStandard.save
    @axonCoaxialMiniature.save
    @axonCoaxialLight.save
    @axonCoaxialHand.save
    @axonFlatFlexible.save
    @axonFlatFDC.save
    @axonFlatSpeed.save
    @axonFlatRoundPins.save
    @axonFlatBulk.save
    @axonFlatWidth.save
    @axonFlatRoundConductors.save
    @axonFlatHybrid.save
    @axonWiresHighTemp.save
    @axonWiresESA.save
    @axonWiresAluminium.save
    @axonWiresHighVolt.save
    @axonWiresHalogenFree.save
    @axonWiresRadiation.save
    @axonWiresExtremeTemp.save
    @axonConnectorsRectMicroD.save
    @axonConnectorsCustomMicroD.save
    @axonConnectorsComboMicroD.save
    @axonConnectorsNanoD.save
    @axonConnectorsSpaceMini.save
    @axonConnectorsCircularMicroD.save
    @axonConnectorsMicroDBackshell.save
    @axonConnectorsMILSTD.save
    @axonTubesandTapesPTFETape.save
    @axonTubesandTapesPTFETube.save
    @axonADDIXMoulded.save
    @axonADDIXOvermoulded.save
    @axonADDIXCut.save
    @axonADDIXExtruded.save
    @axonADDIXKeyboard.save
    @axonADDIXElastomer.save
    @axonMechatronicsLOUPOTPrecision.save
    @axonMechatronicsLOUPOTMoulded.save
    @axonMechatronicsLOUPOTAssembled.save
    @axonMechatronicsLOUPOTComponents.save
    @axonMechatronicsLOUPOTInsertion.save
    @axonMechatronicsLOUPOTPreforming.save
    @axonMechatronicsLOUPOTOther.save
    @axonPINTECCISALPrecision.save
    @axonPINTECCISALInterconnect.save
    @axonOthersEMI.save
    @axonOthersTest.save
    @airbornConnectorsHD4.save
    @airbornConnectorsM.save
    @airbornConnectorsMicroQUAD.save
    @airbornConnectorsMicroSI.save
    @airbornConnectorsN.save
    @airbornConnectorsR.save
    @airbornConnectorsRC.save
    @airbornConnectorsRC2.save
    @airbornConnectorsRZ.save
    @airbornConnectorsveriSI.save
    @airbornConnectorsW.save
    @oduPushPullCircularAMC.save
    @oduPushPullCircularAMCHD.save
    @oduPushPullCircularMiniMED.save
    @oduPushPullCircularMediSNAP.save
    @oduPushPullCircularMiniSNAP.save
    @oduPushPullCircularMiniSNAPPC.save
    @oduODUMAC.save
    @oduDockRobDOCK.save
    @oduDockRobROB.save
    @oduPCBFLAKAFIX.save
    @oduPCBMiniFLAKAFIX.save
    @oduPCBCard.save
    @oduPCBMiniCard.save
    @oduSingleContactSPRINGTAC.save
    @oduSingleContactLAMTAC.save
    @oduSingleContactFLAT.save
    @oduOthersHeavy.save
# Attachment
  Dir.glob("#{Rails.root}/public/catalogues/*.pdf") do |filepath|
    Attachment.create(file_path: File.open(filepath))
  end
