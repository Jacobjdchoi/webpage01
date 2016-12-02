# Admin ids
Admin.create(email: ENV['ADMIN_EMAIL'], password: ENV['ADMIN_PASSWORD'], password_confirmation: ENV['ADMIN_PASSWORD'])
# Brands (1-5)
@moog = Brand.create(id: 1, name: 'MOOG')
@axon = Brand.create(id: 2, name: "Axon'")
@airborn = Brand.create(id: 3, name: 'AirBorn')
@odu = Brand.create(id: 4, name: 'ODU')
@stocko = Brand.create(id: 5, name: 'STOCKO')
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
  @airbornFlexibleCircuitProducts = @airborn.product_types.create(name:'Flexible Circuit Assemblies')
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
    @moogSlipRingCommercial = @moogSlipRing.products.create(name: 'Commercial - Industrial Slip Rings', url: 'http://www.moog.com/products/slip-rings/commercial-industrial-slip-rings.html')
    @moogSlipRingMarine = @moogSlipRing.products.create(name: 'Marine Slip Rings', url: 'http://www.moog.com/products/slip-rings/marine-slip-rings.html')
    @moogSlipRingOilfield = @moogSlipRing.products.create(name: 'Oilfield - Downhole Slip Rings', url: 'http://www.moog.com/products/slip-rings/oilfield-downhole-slip-rings.html')
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
    @moogRotaryJointandUnionsUnion = @moogRotaryJointandUnions.products.create(name: 'Fluid Rotary Unions', url: 'http://www.moog.com/products/fiber-optic-devices/fiber-optic-rotary-joints/multi-channel-forj.html')
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
    @moogSolenoidsLinearElectro = @moogSolenoids .products.create(name: "Linear Electromechanical Actuators", url:"http://www.moog.com/products/solenoids/solenoid-technologies/linear-electromechanical-actuators.html")
    @moogSolenoidsLinear = @moogSolenoids .products.create(name: "Linear Solenoids", url:"http://www.moog.com/products/solenoids/solenoid-technologies/linear-solenoids.html")
    @moogSolenoidsRotary = @moogSolenoids .products.create(name: "Rotary Solenoids", url:"http://www.moog.com/products/solenoids/solenoid-technologies/rotary-solenoids.html")
    # Others
    @moogOthersSurgical = @moogOthers.products.create(name: "Surgical Handpieces", url:"http://www.moog.com/products/surgical-hpieces.html")
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
    @airbornConnectors.products.create(name: "HD4 Series", url:"http://www.airborn.com/products/connectors/hd4-series")
    @airbornConnectors.products.create(name: "M Series", url:"http://www.airborn.com/products/connectors/m-series")
    @airbornConnectors.products.create(name: "microQUAD Series", url:"http://www.airborn.com/products/connectors/microquad-series")
    @airbornConnectors.products.create(name: "microSI Series", url:"http://www.airborn.com/products/connectors/microsi-series")
    @airbornConnectors.products.create(name: "N Series", url:"http://www.airborn.com/products/connectors/n-series")
    @airbornConnectors.products.create(name: "R Series", url:"http://www.airborn.com/products/connectors/r-series")
    @airbornConnectors.products.create(name: "RC Series", url:"http://www.airborn.com/products/connectors/rc-series")
    @airbornConnectors.products.create(name: "RCII Series", url:"http://www.airborn.com/products/connectors/rcii-series")
    @airbornConnectors.products.create(name: "RZ Series", url:"http://www.airborn.com/products/connectors/rz-series")
    @airbornConnectors.products.create(name: "verSI Series", url:"http://www.airborn.com/products/connectors/versi-series")
    @airbornConnectors.products.create(name: "W Series", url:"http://www.airborn.com/products/connectors/w-series")
    # Flexible Circuit Assemblies
    @airbornFlexibleCircuitProducts.products.create(name: "TYPE I: Single-Sided Flex", url:"http://www.airborn.com/products/flexible-circuits/type-i-single-sided-flex")
    @airbornFlexibleCircuitProducts.products.create(name: "TYPE II: Double-Sided Flex", url:"http://www.airborn.com/products/flexible-circuits/type-ii-double-sided-flex")
    @airbornFlexibleCircuitProducts.products.create(name: "TYPE III: Multilayer Flex", url:"http://www.airborn.com/products/flexible-circuits/type-iii-multi-layer-flex")
    @airbornFlexibleCircuitProducts.products.create(name: "TYPE IV: Rigid Flex", url:"http://www.airborn.com/products/flexible-circuits/type-iv-rigid-flex")
    @airbornFlexibleCircuitProducts.products.create(name: "Sculptured Flex", url:"http://www.airborn.com/products/flexible-circuits/sculptured-flex")
    @airbornFlexibleCircuitProducts.products.create(name: "Extended Length Flex", url:"http://www.airborn.com/products/flexible-circuits/extended-length-flex")

  # ODU
    # Push-Pull Circular Connectors
    @oduPushPullCircularConnectors.products.create(name: "ODU MINI-SNAP®", url:"http://www.odu-usa.com/products-solutions/push-pull-circular-connectors/odu-mini-snap.html")
    @oduPushPullCircularConnectors.products.create(name: "ODU AMC®", url:"http://www.odu-usa.com/products-solutions/push-pull-circular-connectors/odu-amc.html")
    @oduPushPullCircularConnectors.products.create(name: "ODU AMC® HIGH-DENSITY", url:"http://www.odu-usa.com/products-solutions/push-pull-circular-connectors/odu-amc/odu-amc-high-density.html")
    @oduPushPullCircularConnectors.products.create(name: "ODU MEDI-SNAP®", url:"http://www.odu-usa.com/products-solutions/push-pull-circular-connectors/odu-medi-snap.html")
    @oduPushPullCircularConnectors.products.create(name: "ODU MINI-SNAP® PC", url:"http://www.odu-usa.com/products-solutions/push-pull-circular-connectors/odu-mini-snap-pc.html")
    @oduPushPullCircularConnectors.products.create(name: "ODU MINI-MED®", url:"http://www.odu-usa.com/products-solutions/push-pull-circular-connectors/odu-mini-med.html")
    # ODU-MAC Modular Connectors
    @oduODUMACModularConnectors.products.create(name: "ODU-MAC®", url:"http://www.odu-usa.com/products-solutions/odu-mac-modular-connectors/odu-mac.html")
    # Docking and Robotic System Connectors
    @oduDockingandRoboticSystemConnectors.products.create(name: "ODU DOCK", url:"http://www.odu-usa.com/products-solutions/docking-and-robotic-system-connectors/odu-dock.html")
    @oduDockingandRoboticSystemConnectors.products.create(name: "ODU ROB", url:"http://www.odu-usa.com/products-solutions/docking-and-robotic-system-connectors/odu-rob.html")
    # Printed Circuit Boards Connectors
    @oduPrintedCircuitBoardsConnectors.products.create(name: "ODU FLAKAFIX", url:"http://www.odu-usa.com/products-solutions/printed-circuit-boards-connectors/odu-flakafix.html")
    @oduPrintedCircuitBoardsConnectors.products.create(name: "ODU MINI-FLAKAFIX®", url:"http://www.odu-usa.com/products-solutions/printed-circuit-boards-connectors/odu-mini-flakafix.html")
    @oduPrintedCircuitBoardsConnectors.products.create(name: "ODU CARD", url:"http://www.odu-usa.com/products-solutions/printed-circuit-boards-connectors/odu-card.html")
    @oduPrintedCircuitBoardsConnectors.products.create(name: "ODU MINI-CARD®", url:"http://www.odu-usa.com/products-solutions/printed-circuit-boards-connectors/odu-mini-card.html")
    # Single Contact Connectors
    @oduSingleContactConnectors.products.create(name: "ODU SPRINGTAC®", url:"http://www.odu-usa.com/products-solutions/single-contact-connectors/odu-springtac.html")
    @oduSingleContactConnectors.products.create(name: "ODU LAMTAC®", url:"http://www.odu-usa.com/products-solutions/single-contact-connectors/odu-lamtac.html")
    @oduSingleContactConnectors.products.create(name: "ODU SPRINGTAC® FLATSOCKET", url:"http://www.odu-usa.com/products-solutions/single-contact-connectors/odu-springtac-flatsocket.html")
    # Others
    @oduOthers.products.create(name: "Heavy Duty Connectors", url:"http://www.odu-usa.com/products-solutions/heavy-duty-connectors.html")
  # STOCKO
    # Multi-way connector systems
    @stockoMultiwayconnectorsystems.products.create(name: "pitch 2.5 mm", url:"https://www.yumpu.com/xx/document/fullscreen/55565154/steckverbindersystem-raster-25-mm")
    @stockoMultiwayconnectorsystems.products.create(name: "pitch 2.54 mm", url:"https://www.yumpu.com/xx/document/fullscreen/55600572/steckverbindersystem-raster-254-mm")
    @stockoMultiwayconnectorsystems.products.create(name: "Special Versions / Pin Strips", url:"https://www.yumpu.com/xx/document/fullscreen/55600616/steckverbinder-sonderprogramm")
    @stockoMultiwayconnectorsystems.products.create(name: "High-Current ", url:"https://www.yumpu.com/xx/document/fullscreen/55600713/steckverbinder-leistungsbereich")
    @stockoMultiwayconnectorsystems.products.create(name: "S-FIT 4.20", url:"https://www.yumpu.com/xx/document/fullscreen/55565235/steckverbindersystem-s-fit")
    @stockoMultiwayconnectorsystems.products.create(name: "S-LOCK 6.35", url:"https://www.yumpu.com/xx/document/fullscreen/55601444/steckverbindersystem-s-lock")
    # Other
    @stockoOthers.products.create(name: "Solderless terminals", url:"https://www.yumpu.com/xx/document/fullscreen/55601453/loetfreie-verbindungen")
    @stockoOthers.products.create(name: "Crimp contacts", url:"https://www.yumpu.com/xx/document/fullscreen/55601476/crimpkontakte-de-en")
    @stockoOthers.products.create(name: "HVAC Industry Products", url:"https://www.yumpu.com/en/document/fullscreen/55601938/heizungsindustrie-en")



























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
      @moogOthersSurgical.photos.create(pics: File.open(File.join(Rails.root,'public/product_photos/moog/others/surgical.jpg')))
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




