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
  @moogSlipRing = @moog.product_types.create(name: 'Slip Rings')
  @moogMotor = @moog.product_types.create(name: 'Motors & Servo Motors')
  @moogActuator = @moog.product_types.create(name: 'Actuators')
  @moogRotaryJointandUnions = @moog.product_types.create(name: 'Rotary Joints')
  @moogAirMovingProducts = @moog.product_types.create(name:'Air Moving Products')
  # Moog (6-10)
  @moogAvionicInstruments = @moog.product_types.create(name:'Avionic Instruments')
  @moogSensors = @moog.product_types.create(name:'Sensors')
  @moogMultiplexers = @moog.product_types.create(name:'Multiplexers')
  @moogSolenoids = @moog.product_types.create(name:'Solenoids')
  @moogOthers = @moog.product_types.create(name: 'Other Moog Products')
  # Axon' (1-5)
  @axonCoaxial = @axon.product_types.create(name: "Coaxial Cables")
  @axonFlat = @axon.product_types.create(name: "Flat Cables")
  @axonWires = @axon.product_types.create(name: "Wires")
  @axonComposite = @axon.product_types.create(name: "Composite Cables")
  @axonConnectors = @axon.product_types.create(name: "AXON' Connectors")
  # Axon' (6-10)
  @axonTubesandTapes = @axon.product_types.create(name:'Tubes and Tapes')
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
  # Mooog
    # Slip Ring
    @moogSlipRing.products.create(name: 'Aerospace - Military Slip Rings', url: 'http://www.moog.com/products/slip-rings/aerospace-military-slip-rings.html')
    @moogSlipRing.products.create(name: 'Commercial - Industrial Slip Rings', url: 'http://www.moog.com/products/slip-rings/commercial-industrial-slip-rings.html')
    @moogSlipRing.products.create(name: 'Marine Slip Rings', url: 'http://www.moog.com/products/slip-rings/marine-slip-rings.html')
    @moogSlipRing.products.create(name: 'Oilfield - Downhole Slip Rings', url: 'http://www.moog.com/products/slip-rings/oilfield-downhole-slip-rings.html')
    @moogSlipRing.products.create(name: 'Wind Turbine Slip Rings', url: 'http://www.moog.com/products/slip-rings/wind-turbine-slip-rings.html')
    # Motor
    @moogMotor.products.create(name: 'Brush Motors', url: 'http://www.moog.com/products/motors-servomotors/brush-motors.html')
    @moogMotor.products.create(name: 'Brushless Motors', url: 'http://www.moog.com/products/motors-servomotors/brushless-motors.html')
    @moogMotor.products.create(name: 'Brushless Servo Motors', url: 'http://www.moog.com/products/motors-servomotors/servo-motors.html')
    @moogMotor.products.create(name: 'Linear Motors', url: 'http://www.moog.com/products/motors-servomotors/linear-motors.html')
    # Actuator
    @moogActuator.products.create(name: 'Multi-Purpose', url: 'http://www.moog.com/products/actuators-servoactuators/multi-purpose.html')
    @moogActuator.products.create(name: 'Aircraft', url: 'http://www.moog.com/products/actuators-servoactuators/aircraft.html')
    @moogActuator.products.create(name: 'Defense', url: 'http://www.moog.com/products/actuators-servoactuators/defense.html')
    @moogActuator.products.create(name: 'Industrial', url: 'http://www.moog.com/products/actuators-servoactuators/industrial.html')
    @moogActuator.products.create(name: 'Space', url: 'http://www.moog.com/products/actuators-servoactuators/space.html')
    # Rotary Joint
    @moogRotaryJointandUnions.products.create(name: 'Single Channel Rotary Joints', url: 'http://www.moog.com/products/fiber-optic-devices/fiber-optic-rotary-joints/single-channel-forj.html')
    @moogRotaryJointandUnions.products.create(name: 'Multi-Channel Rotary Joints', url: 'http://www.moog.com/products/fiber-optic-devices/fiber-optic-rotary-joints/multi-channel-forj.html')
    @moogRotaryJointandUnions.products.create(name: 'Hybrid Rotary Joints', url: 'http://www.moog.com/products/fiber-optic-devices/fiber-optic-rotary-joints/hybrid-forj.html')
    @moogRotaryJointandUnions.products.create(name: 'Complete Rotary Interfaces', url: 'http://www.moog.com/products/fiber-optic-devices/fiber-optic-rotary-joints/complete-rotary-interfaces.html')
    @moogRotaryJointandUnions.products.create(name: 'Industrial Fluid Rotary Unions', url:'http://www.moog.com/products/fluid-rotary-union/industrial-fluid-rotary-unions.html')
    @moogRotaryJointandUnions.products.create(name: 'Marine Fluid Rotary Unions', url:'http://www.moog.com/products/fluid-rotary-union/marine-fluid-rotary-unions.html')
    @moogRotaryJointandUnions.products.create(name: 'Oil and Gas Fluid Rotary Unions', url:'http://www.moog.com/products/fluid-rotary-union/oil-gas-fluid-rotary-unions.html')
    # Air Moving Products
    @moogAirMovingProducts.products.create(name: 'Blowers', url:'http://www.moog.com/products/air-moving-products.html')
    @moogAirMovingProducts.products.create(name: 'Controllers', url:'http://www.moog.com/products/air-moving-products.html')
    @moogAirMovingProducts.products.create(name: 'Impellers', url:'http://www.moog.com/products/air-moving-products.html')
    #Avionic Instruments
    @moogAvionicInstruments.products.create(name: "LCD Engine Instruments", url:"http://www.moog.com/products/avionic-instruments/indicators.html")
    @moogAvionicInstruments.products.create(name: "Indicators", url:"http://www.moog.com/products/avionic-instruments/lcd-engine-instruments.html")
    # Sensors
    @moogSensors.products.create(name: "LifeGuard® Ultrasonic Air Bubble Detectors", url:"http://www.moog.com/products/sensors/lifeguard-ultrasonic-air-bubble-detector.html")
    @moogSensors.products.create(name: "LifeGuard® Ultrasonic Level Sensors", url:"http://www.moog.com/products/sensors/lifeguard-ultrasonic-point-level-sensor.html")
    # Multiplexers
    @moogMultiplexers.products.create(name: "FOCAL", url:"http://www.moog.com/products/multiplexers-media-converters/focal-multiplexer-product-line.html")
    @moogMultiplexers.products.create(name: "Moog Protokraft", url:"http://www.moogprotokraft.com")
    @moogMultiplexers.products.create(name: "PRIZM™", url:"http://www.moog.com/products/multiplexers-media-converters/prizm-multiplexer-product-line.html")
    # Solenoids
    @moogSolenoids .products.create(name: "Linear Electromechanical Actuators", url:"http://www.moog.com/products/solenoids/solenoid-technologies/linear-electromechanical-actuators.html")
    @moogSolenoids .products.create(name: "Linear Solenoids", url:"http://www.moog.com/products/solenoids/solenoid-technologies/linear-solenoids.html")
    @moogSolenoids .products.create(name: "Rotary Solenoids", url:"http://www.moog.com/products/solenoids/solenoid-technologies/rotary-solenoids.html")
    # Others
    @moogOthers.products.create(name: "Surgical Handpieces", url:"http://www.moog.com/products/surgical-hpieces.html")
    @moogOthers.products.create(name: "Synchros", url:"http://www.moog.com/products/synchros.html")
    @moogOthers.products.create(name: "Alternators", url:"http://www.moog.com/products/alternators.html")
    @moogOthers.products.create(name: "Fiber Optic Modems", url:"http://www.moog.com/products/fiber-optic-devices/fiber-optic-modems.html")
    @moogOthers.products.create(name: "Resolvers", url:"http://www.moog.com/products/resolvers.html")
    @moogOthers.products.create(name: "Printed Circuit Boards", url:"http://www.moog.com/products/printed-circuit-boards.html")


  # Axon'
    # Composite
    @axonComposite.products.create(name: 'High Precision Conductors', url: 'http://www.axon-cable.com/en/02_products/02_composite-cables/00/index.aspx' )
    @axonComposite.products.create(name: 'High Performance Insulated Cables', url: 'http://www.axon-cable.com/en/02_products/02_composite-cables/00/index.aspx' )
    # Coaxial
    @axonCoaxial.products.create(name: 'Standard', url: 'http://www.axon-cable.com/en/02_products/06_coaxial-cables/01/index.aspx' )
    @axonCoaxial.products.create(name: 'Miniature', url: 'http://www.axon-cable.com/en/02_products/06_coaxial-cables/02/index.aspx' )
    @axonCoaxial.products.create(name: 'Light Weight', url: 'http://www.axon-cable.com/en/02_products/06_coaxial-cables/03/index.aspx' )
    @axonCoaxial.products.create(name: 'Hand Formable', url: 'http://www.axon-cable.com/en/02_products/06_coaxial-cables/04/index.aspx' )
    @axonCoaxial.products.create(name: 'Microwave', url: 'http://www.axon-cable.com/en/03_assemblies/04_microwave/00/index.aspx' )
    # Flat
    @axonFlat.products.create(name: 'Flat Flexible Cables', url: 'http://www.google.com' )
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
    # Connectors
    @axonConnectors.products.create(name: "Rectangular Micro-D connectors", url:"http://www.axon-cable.com/en/02_products/03_connectors/01/index.aspx")
    @axonConnectors.products.create(name: "Custom design micro-D connectors", url:"http://www.axon-cable.com/en/02_products/03_connectors/02/index.aspx")
    @axonConnectors.products.create(name: "Combo Micro-D connectors", url:"http://www.axon-cable.com/en/02_products/03_connectors/03/index.aspx")
    @axonConnectors.products.create(name: "Nano-D connectors", url:"http://www.axon-cable.com/en/02_products/03_connectors/04/index.aspx")
    @axonConnectors.products.create(name: "Space Miniature connectors", url:"http://www.axon-cable.com/en/02_products/03_connectors/05/index.aspx")
    @axonConnectors.products.create(name: "Circular Micro-D connectors", url:"http://www.axon-cable.com/en/02_products/03_connectors/06/index.aspx")
    @axonConnectors.products.create(name: "Micro-D backshells and hardware", url:"http://www.axon-cable.com/en/02_products/03_connectors/07/index.aspx")
    @axonConnectors.products.create(name: "MIL-STD-1553 Data Bus Connectors", url:"http://www.axon-cable.com/en/02_products/03_connectors/08/index.aspx")
    # Tubes and Tapes
    @axonTubesandTapes.products.create(name: "PTFE Tapes, Membranes and Desiccant Bags", url:"http://www.axon-cable.com/en/02_products/09_tubes-tapes/01/index.aspx")
    @axonTubesandTapes.products.create(name: "PTFE Tubes", url:"http://www.axon-cable.com/en/02_products/09_tubes-tapes/02/index.aspx")
    # ADDIX
    @axonADDIX.products.create(name: "Moulded Shapes", url:"http://www.axon-cable.com/en/02_products/11_addix/01/index.aspx")
    @axonADDIX.products.create(name: "Overmoulded Parts", url:"http://www.axon-cable.com/en/02_products/11_addix/02/index.aspx")
    @axonADDIX.products.create(name: "Cut Parts", url:"http://www.axon-cable.com/en/02_products/11_addix/03/index.aspx")
    @axonADDIX.products.create(name: "Extruded Parts", url:"http://www.axon-cable.com/en/02_products/11_addix/04/index.aspx")
    @axonADDIX.products.create(name: "Keyboards", url:"http://www.axon-cable.com/en/02_products/11_addix/05/index.aspx")
    @axonADDIX.products.create(name: "Elastomer Compounds", url:"http://www.axon-cable.com/en/02_products/11_addix/06/index.aspx")
    # AXON' Mechatronics - LOUPOT
    @axonMechatronicsLOUPOT.products.create(name: "Precision Stamping Parts & Terminals", url:"http://www.axon-cable.com/en/02_products/01_loupot/01/index.aspx")
    @axonMechatronicsLOUPOT.products.create(name: "Moulded & Overmoulded Components", url:"http://www.axon-cable.com/en/02_products/01_loupot/02/index.aspx")
    @axonMechatronicsLOUPOT.products.create(name: "Assembled Components", url:"http://www.axon-cable.com/en/02_products/01_loupot/03/index.aspx")
    @axonMechatronicsLOUPOT.products.create(name: "Mechatronic Components", url:"http://www.axon-cable.com/en/02_products/01_loupot/04/index.aspx")
    @axonMechatronicsLOUPOT.products.create(name: "Insertion Equipment", url:"http://www.axon-cable.com/en/02_products/01_loupot/05/index.aspx")
    @axonMechatronicsLOUPOT.products.create(name: "Preforming Equipment", url:"http://www.axon-cable.com/en/02_products/01_loupot/06/index.aspx")
    @axonMechatronicsLOUPOT.products.create(name: "Other Equipment", url:"http://www.axon-cable.com/en/02_products/01_loupot/07/index.aspx")
    # AXON' PINTEC-CISAL
    @axonPINTECCISAL.products.create(name: "Precision Wire Pins", url:"http://www.axon-cable.com/en/02_products/12_pintec/01/index.aspx")
    @axonPINTECCISAL.products.create(name: "Interconnect Pin Headers", url:"http://www.axon-cable.com/en/02_products/12_pintec/02/index.aspx")
    # AXON' Others
    @axonOthers.products.create(name: "Integrated Systems", url:"http://www.axon-cable.com/en/02_products/04_integrated-systems/00/index.aspx")
    @axonOthers.products.create(name: "EMI Protection", url:"http://www.axon-cable.com/en/02_products/08_EMI-protection/00/index.aspx")
    @axonOthers.products.create(name: "Tests", url:"http://www.axon-cable.com/en/02_products/10_tests/00/index.aspx")

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



























# customers (1-5)
@customerLGElectronics = Customer.create(id: 1, name_en: 'LG Electronics', name_ko: 'LG전자')
@customerHYUNDAIMotor = Customer.create(id: 2, name_en: 'HYUNDAI Motor', name_ko: '현대자동차')
@customerSAMSUNGElectronics = Customer.create(id: 3, name_en: 'SAMSUNG Electronics', name_ko: '삼성전자')
@customerHYUNDAIRotem = Customer.create(id: 4, name_en: 'HYUNDAI Rotem', name_ko: '현대로템')
@customerSKInnovation = Customer.create(id: 5, name_en: 'SK Innovation', name_ko: 'SK 이노베이션')
# customers (6-10)
@customerHYUNDAIHeavyIndustries = Customer.create(id: 6, name_en: 'HYUNDAI Heavy Industries', name_ko: '현대중공업')
@customerHanwhaSystem = Customer.create(id: 7, name_en: 'Hanwha System', name_ko: '한화시스템')
@customerHYUNDAISTEEL = Customer.create(id: 8, name_en: 'HYUNDAI STEEL', name_ko: '현대철강')
@customerAgencyforDefenseDepartment = Customer.create(id: 9, name_en: 'Agency for Defense Department', name_ko: '국방과학연구소')
@customerKoreaAerospaceIndustriesLtd = Customer.create(id: 10, name_en: 'Korea Aerospace Industries Ltd.', name_ko: '한국항공우주산업(주)')
# customers (11-15)
@customerKARI = Customer.create(id: 11, name_en: 'KARI', name_ko: '한국항공연구소')
@customerLIGNEX1 = Customer.create(id: 12, name_en: 'LIG NEX1', name_ko: 'LIG  넥스원')
@customerFIRSTEC = Customer.create(id: 13, name_en: 'FIRSTEC CO. LTD.', name_ko: '퍼스텍')
@customerYURATech = Customer.create(id: 14, name_en: 'YURA Tech', name_ko: '유라테크')
@customerSEMIKRON = Customer.create(id: 15, name_en: 'SEMIKRON', name_ko: '세미크론')
# Photos [Customer] (1-5)
@customerLGElectronics.photos.create(pics: File.open(File.join(Rails.root, 'public/customers_logo/lg_electronics.png')))
@customerHYUNDAIMotor.photos.create(pics: File.open(File.join(Rails.root, 'public/customers_logo/hyundai_motor.png')))
@customerSAMSUNGElectronics.photos.create(pics: File.open(File.join(Rails.root, 'public/customers_logo/samsung_electronics.png')))
@customerHYUNDAIRotem.photos.create(pics: File.open(File.join(Rails.root, 'public/customers_logo/hyundai_rotem.png')))
@customerSKInnovation.photos.create(pics: File.open(File.join(Rails.root, 'public/customers_logo/sk_innovation.png')))
# Photos [Customer] (6-10)
@customerHYUNDAIHeavyIndustries.photos.create(pics: File.open(File.join(Rails.root, 'public/customers_logo/hyundai_heavy_industries.png')))
@customerHanwhaSystem.photos.create(pics: File.open(File.join(Rails.root, 'public/customers_logo/hanwha_system.png')))
@customerHYUNDAISTEEL.photos.create(pics: File.open(File.join(Rails.root, 'public/customers_logo/hyundai_steel.png')))
@customerAgencyforDefenseDepartment.photos.create(pics: File.open(File.join(Rails.root, 'public/customers_logo/add.png')))
@customerKoreaAerospaceIndustriesLtd.photos.create(pics: File.open(File.join(Rails.root, 'public/customers_logo/kai.png')))
# Photos [Customer] (11-15)
@customerKARI.photos.create(pics: File.open(File.join(Rails.root, 'public/customers_logo/kari.png')))
@customerLIGNEX1.photos.create(pics: File.open(File.join(Rails.root, 'public/customers_logo/lig_nex1.png')))
@customerFIRSTEC.photos.create(pics: File.open(File.join(Rails.root, 'public/customers_logo/firstec.png')))
@customerYURATech.photos.create(pics: File.open(File.join(Rails.root, 'public/customers_logo/yura_tech.png')))
@customerSEMIKRON.photos.create(pics: File.open(File.join(Rails.root, 'public/customers_logo/semikron.png')))
# Photos [Brand] (1-5)
@moog.photos.create(pics: File.open(File.join(Rails.root, 'public/suppliers_logo/moog.png')))
@axon.photos.create(pics: File.open(File.join(Rails.root, 'public/suppliers_logo/axon.png')))
@airborn.photos.create(pics: File.open(File.join(Rails.root, 'public/suppliers_logo/airborn.png')))
@odu.photos.create(pics: File.open(File.join(Rails.root, 'public/suppliers_logo/odu.png')))
@stocko.photos.create(pics: File.open(File.join(Rails.root, 'public/suppliers_logo/stocko.png')))







