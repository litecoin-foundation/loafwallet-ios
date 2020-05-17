public enum Country: String, Equatable, Hashable, Codable, CaseIterable {
    
    // MARK: - Cases
    case unitedStates = "US"
    case afghanistan = "AF"
    case albania = "AL"
    case algeria = "DZ"
    case americanSamoa = "AS"
    case andorra = "AD"
    case angola = "AO"
    case anguilla = "AI"
    case antarctica = "AQ"
    case antiguaAndBarbuda = "AG"
    case argentina = "AR"
    case armenia = "AM"
    case aruba = "AW"
    case australia = "AU"
    case austria = "AT"
    case azerbaijan = "AZ"
    case bahamas = "BS"
    case bahrain = "BH"
    case bangladesh = "BD"
    case barbados = "BB"
    case belarus = "BY"
    case belgium = "BE"
    case belize = "BZ"
    case benin = "BJ"
    case bermuda = "BM"
    case bhutan = "BT"
    case bolivia = "BO"
    case bosniaAndHerzegovina = "BA"
    case botswana = "BW"
    case brazil = "BR"
    case britishIndianOceanTerritory = "IO"
    case bruneiDarussalam = "BN"
    case bulgaria = "BG"
    case burkinaFaso = "BF"
    case burundi = "BI"
    case cambodia = "KH"
    case cameroon = "CM"
    case canada = "CA"
    case capeVerde = "CV"
    case caymanIslands = "KY"
    case centralAfricanRepublic = "CF"
    case chad = "TD"
    case chile = "CL"
    case china = "CN"
    case christmasIsland = "CX"
    case cocosKeelingIslands = "CC"
    case colombia = "CO"
    case comoros = "KM"
    case congo = "CG"
    case democraticRepublicOfTheCongo = "CD"
    case cookIslands = "CK"
    case costaRica = "CR"
    case coteDivoire = "CI"
    case croatia = "HR"
    case cuba = "CU"
    case cyprus = "CY"
    case czechRepublic = "CZ"
    case denmark = "DK"
    case djibouti = "DJ"
    case dominica = "DM"
    case dominicanRepublic = "DO"
    case ecuador = "EC"
    case egypt = "EG"
    case elSalvador = "SV"
    case equatorialGuinea = "GQ"
    case eritrea = "ER"
    case estonia = "EE"
    case ethiopia = "ET"
    case falklandIslandsMalvinas = "FK"
    case faroeIslands = "FO"
    case fiji = "FJ"
    case finland = "FI"
    case france = "FR"
    case frenchGuiana = "GF"
    case frenchPolynesia = "PF"
    case frenchSouthernTerritories = "TF"
    case gabon = "GA"
    case gambia = "GM"
    case germany = "DE"
    case georgia = "GE"
    case ghana = "GH"
    case gibraltar = "GI"
    case greece = "GR"
    case greenland = "GL"
    case grenada = "GD"
    case guadeloupe = "GP"
    case guam = "GU"
    case guatemala = "GT"
    case guernsey = "GG"
    case guinea = "GN"
    case guineabissau = "GW"
    case guyana = "GY"
    case haiti = "HT"
    case holySeeVaticanCityState = "VA"
    case honduras = "HN"
    case hongKong = "HK"
    case hungary = "HU"
    case iceland = "IS"
    case india = "IN"
    case indonesia = "ID"
    case iran = "IR"
    case iraq = "IQ"
    case ireland = "IE"
    case isleOfMan = "IM"
    case israel = "IL"
    case italy = "IT"
    case jamaica = "JM"
    case japan = "JP"
    case jersey = "JE"
    case jordan = "JO"
    case kazakhstan = "KZ"
    case kenya = "KE"
    case kiribati = "KI"
    case northKorea = "KP"
    case southKorea = "KR"
    case kuwait = "KW"
    case kyrgyzstan = "KG"
    case laoPeoplesDemocraticRepublic = "LA"
    case latvia = "LV"
    case lebanon = "LB"
    case lesotho = "LS"
    case liberia = "LR"
    case libyanArabJamahiriya = "LY"
    case liechtenstein = "LI"
    case lithuania = "LT"
    case luxembourg = "LU"
    case macao = "MO"
    case macedonia = "MK"
    case madagascar = "MG"
    case malawi = "MW"
    case malaysia = "MY"
    case maldives = "MV"
    case mali = "ML"
    case malta = "MT"
    case marshallIslands = "MH"
    case martinique = "MQ"
    case mauritania = "MR"
    case mauritius = "MU"
    case mayotte = "YT"
    case mexico = "MX"
    case micronesia = "FM"
    case moldova = "MD"
    case monaco = "MC"
    case mongolia = "MN"
    case montenegro = "ME"
    case montserrat = "MS"
    case morocco = "MA"
    case mozambique = "MZ"
    case myanmar = "MM"
    case namibia = "NA"
    case nauru = "NR"
    case nepal = "NP"
    case netherlands = "NL"
    case netherlandsAntilles = "AN"
    case newCaledonia = "NC"
    case newZealand = "NZ"
    case nicaragua = "NI"
    case niger = "NE"
    case nigeria = "NG"
    case niue = "NU"
    case northernMarianaIslands = "MP"
    case norway = "NO"
    case oman = "OM"
    case pakistan = "PK"
    case palau = "PW"
    case palestinianTerritory = "NULL"
    case panama = "PA"
    case papuaNewGuinea = "PG"
    case paraguay = "PY"
    case peru = "PE"
    case philippines = "PH"
    case pitcairn = "PN"
    case poland = "PL"
    case portugal = "PT"
    case puertoRico = "PR"
    case qatar = "QA"
    case reunion = "RE"
    case romania = "RO"
    case russianFederation = "RU"
    case rwanda = "RW"
    case saintHelena = "SH"
    case saintKittsAndNevis = "KN"
    case saintLucia = "LC"
    case saintPierreAndMiquelon = "PM"
    case saintVincentAndTheGrenadines = "VC"
    case samoa = "WS"
    case sanMarino = "SM"
    case saoTomeAndPrincipe = "ST"
    case saudiArabia = "SA"
    case senegal = "SN"
    case serbia = "RS"
    case seychelles = "SC"
    case sierraLeone = "SL"
    case singapore = "SG"
    case slovakia = "SK"
    case slovenia = "SI"
    case solomonIslands = "SB"
    case somalia = "SO"
    case southAfrica = "ZA"
    case spain = "ES"
    case sriLanka = "LK"
    case sudan = "SD"
    case suriname = "SR"
    case svalbardAndJanMayen = "SJ"
    case swaziland = "SZ"
    case sweden = "SE"
    case switzerland = "CH"
    case syrianArabRepublic = "SY"
    case taiwan = "TW"
    case tajikistan = "TJ"
    case tanzania = "TZ"
    case thailand = "TH"
    case timorleste = "TL"
    case togo = "TG"
    case tokelau = "TK"
    case tonga = "TO"
    case trinidadAndTobago = "TT"
    case tunisia = "TN"
    case turkey = "TR"
    case turkmenistan = "TM"
    case turksAndCaicosIslands = "TC"
    case tuvalu = "TV"
    case uganda = "UG"
    case ukraine = "UA"
    case unitedArabEmirates = "AE"
    case unitedKingdom = "GB" 
    case uruguay = "UY"
    case uzbekistan = "UZ"
    case vanuatu = "VU"
    case venezuela = "VE"
    case vietNam = "VN"
    case virginIslandsUK = "VG"
    case virginIslandsUS = "VI"
    case wallisAndFutuna = "WF"
    case westernSahara = "EH"
    case yemen = "YE"
    case zambia = "ZM"
    case zimbabwe = "ZW"
    
    case allCountries = "ALL"
    
    public init(from decoder: Decoder)throws {
        let container = try decoder.singleValueContainer()
        let code = try container.decode(String.self)
        if let country = Country.init(rawValue: code.uppercased()) {
            self = country
        } else if let country = Country.init(name: code) {
            self = country
        } else {
            throw DecodingError.dataCorruptedError(in: container, debugDescription: "Cannot create `Country` instance from code or name `\(code)`")
        }
    }
    
    
    // MARK: - Properties
    
    public var abbreviation: String? {
        if self.rawValue.count != 2 {
            return nil
        } else {
            return self.rawValue
        }
    }
    
    public var name: String {
        switch self {
        case .unitedStates: return "United States"
        case .afghanistan: return "Afghanistan"
        case .albania: return "Albania"
        case .algeria: return "Algeria"
        case .americanSamoa: return "American Samoa"
        case .andorra: return "Andorra"
        case .angola: return "Angola"
        case .anguilla: return "Anguilla"
        case .antarctica: return "Antarctica"
        case .antiguaAndBarbuda: return "Antigua and Barbuda"
        case .argentina: return "Argentina"
        case .armenia: return "Armenia"
        case .aruba: return "Aruba"
        case .australia: return "Australia"
        case .austria: return "Austria"
        case .azerbaijan: return "Azerbaijan"
        case .bahamas: return "Bahamas"
        case .bahrain: return "Bahrain"
        case .bangladesh: return "Bangladesh"
        case .barbados: return "Barbados"
        case .belarus: return "Belarus"
        case .belgium: return "Belgium"
        case .belize: return "Belize"
        case .benin: return "Benin"
        case .bermuda: return "Bermuda"
        case .bhutan: return "Bhutan"
        case .bolivia: return "Bolivia"
        case .bosniaAndHerzegovina: return "Bosnia and Herzegovina"
        case .botswana: return "Botswana" 
        case .brazil: return "Brazil"
        case .britishIndianOceanTerritory: return "British Indian Ocean Territory"
        case .bruneiDarussalam: return "Brunei Darussalam"
        case .bulgaria: return "Bulgaria"
        case .burkinaFaso: return "Burkina Faso"
        case .burundi: return "Burundi"
        case .cambodia: return "Cambodia"
        case .cameroon: return "Cameroon"
        case .canada: return "Canada"
        case .capeVerde: return "Cape Verde"
        case .caymanIslands: return "Cayman Islands"
        case .centralAfricanRepublic: return "Central African Republic"
        case .chad: return "Chad"
        case .chile: return "Chile"
        case .china: return "China"
        case .christmasIsland: return "Christmas Island"
        case .cocosKeelingIslands: return "Cocos (Keeling) Islands"
        case .colombia: return "Colombia"
        case .comoros: return "Comoros"
        case .congo: return "Congo"
        case .democraticRepublicOfTheCongo: return "Democratic Republic Of The Congo"
        case .cookIslands: return "Cook Islands"
        case .costaRica: return "Costa Rica"
        case .coteDivoire: return "Cote D'ivoire"
        case .croatia: return "Croatia"
        case .cuba: return "Cuba"
        case .cyprus: return "Cyprus"
        case .czechRepublic: return "Czech Republic"
        case .denmark: return "Denmark"
        case .djibouti: return "Djibouti"
        case .dominica: return "Dominica"
        case .dominicanRepublic: return "Dominican Republic"
        case .ecuador: return "Ecuador"
        case .egypt: return "Egypt"
        case .elSalvador: return "El Salvador"
        case .equatorialGuinea: return "Equatorial Guinea"
        case .eritrea: return "Eritrea"
        case .estonia: return "Estonia"
        case .ethiopia: return "Ethiopia"
        case .falklandIslandsMalvinas: return "Falkland Islands (Malvinas"
        case .faroeIslands: return "Faroe Islands"
        case .fiji: return "Fiji"
        case .finland: return "Finland"
        case .france: return "France"
        case .frenchGuiana: return "French Guiana"
        case .frenchPolynesia: return "French Polynesia"
        case .frenchSouthernTerritories: return "French Southern Territories"
        case .gabon: return "Gabon"
        case .gambia: return "Gambia"
        case .germany: return "Germany"
        case .georgia: return "Georgia"
        case .ghana: return "Ghana"
        case .gibraltar: return "Gibraltar"
        case .greece: return "Greece"
        case .greenland: return "Greenland"
        case .grenada: return "Grenada"
        case .guadeloupe: return "Guadeloupe"
        case .guam: return "Guam"
        case .guatemala: return "Guatemala"
        case .guernsey: return "Guernsey"
        case .guinea: return "Guinea"
        case .guineabissau: return "Guineabissau"
        case .guyana: return "Guyana"
        case .haiti: return "Haiti"
        case .holySeeVaticanCityState: return "Holy See (Vatican City State"
        case .honduras: return "Honduras"
        case .hongKong: return "Hong Kong"
        case .hungary: return "Hungary"
        case .iceland: return "Iceland"
        case .india: return "India"
        case .indonesia: return "Indonesia"
        case .iran: return "Iran"
        case .iraq: return "Iraq"
        case .ireland: return "Ireland"
        case .isleOfMan: return "Isle of Man"
        case .israel: return "Israel"
        case .italy: return "Italy"
        case .jamaica: return "Jamaica"
        case .japan: return "Japan"
        case .jersey: return "Jersey"
        case .jordan: return "Jordan"
        case .kazakhstan: return "Kazakhstan"
        case .kenya: return "Kenya"
        case .kiribati: return "Kiribati"
        case .northKorea: return "North Korea"
        case .southKorea: return "South Korea"
        case .kuwait: return "Kuwait"
        case .kyrgyzstan: return "Kyrgyzstan"
        case .laoPeoplesDemocraticRepublic: return "Lao People's Democratic Republic"
        case .latvia: return "Latvia"
        case .lebanon: return "Lebanon"
        case .lesotho: return "Lesotho"
        case .liberia: return "Liberia"
        case .libyanArabJamahiriya: return "Libyan Arab Jamahiriya"
        case .liechtenstein: return "Liechtenstein"
        case .lithuania: return "Lithuania"
        case .luxembourg: return "Luxembourg"
        case .macao: return "Macao"
        case .macedonia: return "Macedonia"
        case .madagascar: return "Madagascar"
        case .malawi: return "Malawi"
        case .malaysia: return "Malaysia"
        case .maldives: return "Maldives"
        case .mali: return "Mali"
        case .malta: return "Malta"
        case .marshallIslands: return "Marshall Islands"
        case .martinique: return "Martinique"
        case .mauritania: return "Mauritania"
        case .mauritius: return "Mauritius"
        case .mayotte: return "Mayotte"
        case .mexico: return "Mexico"
        case .micronesia: return "Micronesia"
        case .moldova: return "Moldova"
        case .monaco: return "Monaco"
        case .mongolia: return "Mongolia"
        case .montenegro: return "Montenegro"
        case .montserrat: return "Montserrat"
        case .morocco: return "Morocco"
        case .mozambique: return "Mozambique"
        case .myanmar: return "Myanmar"
        case .namibia: return "Namibia"
        case .nauru: return "Nauru"
        case .nepal: return "Nepal"
        case .netherlands: return "Netherlands"
        case .netherlandsAntilles: return "Netherlands Antilles"
        case .newCaledonia: return "New Caledonia"
        case .newZealand: return "New Zealand"
        case .nicaragua: return "Nicaragua"
        case .niger: return "Niger"
        case .nigeria: return "Nigeria"
        case .niue: return "Niue"
        case .northernMarianaIslands: return "Northern Mariana Islands"
        case .norway: return "Norway"
        case .oman: return "Oman"
        case .pakistan: return "Pakistan"
        case .palau: return "Palau"
        case .palestinianTerritory: return "Palestinian Territory"
        case .panama: return "Panama"
        case .papuaNewGuinea: return "Papua New Guinea"
        case .paraguay: return "Paraguay"
        case .peru: return "Peru"
        case .philippines: return "Philippines"
        case .pitcairn: return "Pitcairn"
        case .poland: return "Poland"
        case .portugal: return "Portugal"
        case .puertoRico: return "Puerto Rico"
        case .qatar: return "Qatar"
        case .reunion: return "Reunion"
        case .romania: return "Romania"
        case .russianFederation: return "Russian Federation"
        case .rwanda: return "Rwanda"
        case .saintHelena: return "Saint Helena"
        case .saintKittsAndNevis: return "Saint Kitts and Nevis"
        case .saintLucia: return "Saint Lucia"
        case .saintPierreAndMiquelon: return "Saint Pierre and Miquelon"
        case .saintVincentAndTheGrenadines: return "Saint Vincent and The Grenadines"
        case .samoa: return "Samoa"
        case .sanMarino: return "San Marino"
        case .saoTomeAndPrincipe: return "Sao Tome and Principe"
        case .saudiArabia: return "Saudi Arabia"
        case .senegal: return "Senegal"
        case .serbia: return "Serbia"
        case .seychelles: return "Seychelles"
        case .sierraLeone: return "Sierra Leone"
        case .singapore: return "Singapore"
        case .slovakia: return "Slovakia"
        case .slovenia: return "Slovenia"
        case .solomonIslands: return "Solomon Islands"
        case .somalia: return "Somalia"
        case .southAfrica: return "South Africa"
        case .spain: return "Spain"
        case .sriLanka: return "Sri Lanka"
        case .sudan: return "Sudan"
        case .suriname: return "Suriname"
        case .svalbardAndJanMayen: return "Svalbard and Jan Mayen"
        case .swaziland: return "Swaziland"
        case .sweden: return "Sweden"
        case .switzerland: return "Switzerland"
        case .syrianArabRepublic: return "Syrian Arab Republic"
        case .taiwan: return "Taiwan"
        case .tajikistan: return "Tajikistan"
        case .tanzania: return "Tanzania"
        case .thailand: return "Thailand"
        case .timorleste: return "Timorleste"
        case .togo: return "Togo"
        case .tokelau: return "Tokelau"
        case .tonga: return "Tonga"
        case .trinidadAndTobago: return "Trinidad and Tobago"
        case .tunisia: return "Tunisia"
        case .turkey: return "Turkey"
        case .turkmenistan: return "Turkmenistan"
        case .turksAndCaicosIslands: return "Turks and Caicos Islands"
        case .tuvalu: return "Tuvalu"
        case .uganda: return "Uganda"
        case .ukraine: return "Ukraine"
        case .unitedArabEmirates: return "United Arab Emirates"
        case .unitedKingdom: return "United Kingdom" 
        case .uruguay: return "Uruguay"
        case .uzbekistan: return "Uzbekistan"
        case .vanuatu: return "Vanuatu"
        case .venezuela: return "Venezuela"
        case .vietNam: return "Viet Nam"
        case .virginIslandsUK: return "British Virgin Islands"
        case .virginIslandsUS: return "United States Virgin Islands"
        case .wallisAndFutuna: return "Wallis and Futuna"
        case .westernSahara: return "Western Sahara"
        case .yemen: return "Yemen"
        case .zambia: return "Zambia"
        case .zimbabwe: return "Zimbabwe"
        case .allCountries: return "All Countries"
        }
    }
  
  public var phoneCode: String {
    switch self {
    case .unitedStates: return "1"
    case .afghanistan: return "93"
    case .albania: return "355"
    case .algeria: return "213"
    case .americanSamoa: return "1-684"
    case .andorra: return "376"
    case .angola: return "244"
    case .anguilla: return "1-264"
    case .antarctica: return "672"
    case .antiguaAndBarbuda: return "1-268"
    case .argentina: return "54"
    case .armenia: return "374"
    case .aruba: return "297"
    case .australia: return "61"
    case .austria: return "43"
    case .azerbaijan: return "994"
    case .bahamas: return "1-242"
    case .bahrain: return "973"
    case .bangladesh: return "880"
    case .barbados: return "1-246"
    case .belarus: return "375"
    case .belgium: return "32"
    case .belize: return "501"
    case .benin: return "229"
    case .bermuda: return "1-441"
    case .bhutan: return "975"
    case .bolivia: return "591"
    case .bosniaAndHerzegovina: return "387"
    case .botswana: return "267"
    case .brazil: return "55"
    case .britishIndianOceanTerritory: return "246"
    case .bruneiDarussalam: return "673"
    case .bulgaria: return "359"
    case .burkinaFaso: return "226"
    case .burundi: return "257"
    case .cambodia: return "855"
    case .cameroon: return "237"
    case .canada: return "1"
    case .capeVerde: return "238"
    case .caymanIslands: return "1-345"
    case .centralAfricanRepublic: return "236"
    case .chad: return "235"
    case .chile: return "56"
    case .china: return "86"
    case .christmasIsland: return "61"
    case .cocosKeelingIslands: return "61"
    case .colombia: return "57"
    case .comoros: return "269"
    case .congo: return "243"
    case .democraticRepublicOfTheCongo: return "243"
    case .cookIslands: return "682"
    case .costaRica: return "506"
    case .coteDivoire: return "225"
    case .croatia: return "385"
    case .cuba: return "53"
    case .cyprus: return "357"
    case .czechRepublic: return "420"
    case .denmark: return "45"
    case .djibouti: return "253"
    case .dominica: return "1-767"
    case .dominicanRepublic: return "1-809"
    case .ecuador: return "593"
    case .egypt: return "20"
    case .elSalvador: return "503"
    case .equatorialGuinea: return "240"
    case .eritrea: return "291"
    case .estonia: return "372"
    case .ethiopia: return "251"
    case .falklandIslandsMalvinas: return "500"
    case .faroeIslands: return "298"
    case .fiji: return "679"
    case .finland: return "358"
    case .france: return "33"
    case .frenchGuiana: return "594"
    case .frenchPolynesia: return "689"
    case .frenchSouthernTerritories: return "262"
    case .gabon: return "241"
    case .gambia: return "220"
    case .georgia: return "995"
    case .germany: return "49"
    case .ghana: return "233"
    case .gibraltar: return "350"
    case .greece: return "30"
    case .greenland: return "299"
    case .grenada: return "1-473"
    case .guadeloupe: return "590"
    case .guam: return "1-671"
    case .guatemala: return "502"
    case .guernsey: return "44-1481"
    case .guinea: return "224"
    case .guineabissau: return "245"
    case .guyana: return "592"
    case .haiti: return "509"
    case .holySeeVaticanCityState: return "379"
    case .honduras: return "504"
    case .hongKong: return "852"
    case .hungary: return "36"
    case .iceland: return "354"
    case .india: return "91"
    case .indonesia: return "62"
    case .iran: return "98"
    case .iraq: return "964"
    case .ireland: return "353"
    case .isleOfMan: return "44-1624"
    case .israel: return "972"
    case .italy: return "39"
    case .jamaica: return "1-876"
    case .japan: return "81"
    case .jersey: return "44-1534"
    case .jordan: return "962"
    case .kazakhstan: return "7"
    case .kenya: return "254"
    case .kiribati: return "686"
    case .northKorea: return "850"
    case .southKorea: return "82"
    case .kuwait: return "965"
    case .kyrgyzstan: return "996"
    case .laoPeoplesDemocraticRepublic: return "856"
    case .latvia: return "371"
    case .lebanon: return "961"
    case .lesotho: return "266"
    case .liberia: return "231"
    case .libyanArabJamahiriya: return "218"
    case .liechtenstein: return "423"
    case .lithuania: return "370"
    case .luxembourg: return "352"
    case .macao: return "853"
    case .macedonia: return "389"
    case .madagascar: return "261"
    case .malawi: return "265"
    case .malaysia: return "60"
    case .maldives: return "960"
    case .mali: return "223"
    case .malta: return "356"
    case .marshallIslands: return "692"
    case .martinique: return "596"
    case .mauritania: return "222"
    case .mauritius: return "230"
    case .mayotte: return "262"
    case .mexico: return "52"
    case .micronesia: return "691"
    case .moldova: return "373"
    case .monaco: return "377"
    case .mongolia: return "976"
    case .montenegro: return "382"
    case .montserrat: return "1-664"
    case .morocco: return "212"
    case .mozambique: return "258"
    case .myanmar: return "95"
    case .namibia: return "264"
    case .nauru: return "674"
    case .nepal: return "977"
    case .netherlands: return "31"
    case .netherlandsAntilles: return "599"
    case .newCaledonia: return "687"
    case .newZealand: return "64"
    case .nicaragua: return "505"
    case .niger: return "227"
    case .nigeria: return "234"
    case .niue: return "683"
    case .northernMarianaIslands: return "1-670"
    case .norway: return "47"
    case .oman: return "968"
    case .pakistan: return "92"
    case .palau: return "680"
    case .palestinianTerritory: return "970"
    case .panama: return "507"
    case .papuaNewGuinea: return "675"
    case .paraguay: return "595"
    case .peru: return "51"
    case .philippines: return "63"
    case .pitcairn: return "64"
    case .poland: return "48"
    case .portugal: return "351"
    case .puertoRico: return "1-787"
    case .qatar: return "974"
    case .reunion: return "262"
    case .romania: return "40"
    case .russianFederation: return "7"
    case .rwanda: return "250"
    case .saintHelena: return "290"
    case .saintKittsAndNevis: return "1-869"
    case .saintLucia: return "1-758"
    case .saintPierreAndMiquelon: return "508"
    case .saintVincentAndTheGrenadines: return "1-784"
    case .samoa: return "685"
    case .sanMarino: return "378"
    case .saoTomeAndPrincipe: return "239"
    case .saudiArabia: return "966"
    case .senegal: return "221"
    case .serbia: return "381"
    case .seychelles: return "248"
    case .sierraLeone: return "232"
    case .singapore: return "65"
    case .slovakia: return "421"
    case .slovenia: return "386"
    case .solomonIslands: return "677"
    case .somalia: return "252"
    case .southAfrica: return "27"
    case .spain: return "34"
    case .sriLanka: return "94"
    case .sudan: return "249"
    case .suriname: return "597"
    case .svalbardAndJanMayen: return "47"
    case .swaziland: return "268"
    case .sweden: return "46"
    case .switzerland: return "41"
    case .syrianArabRepublic: return "963"
    case .taiwan: return "886"
    case .tajikistan: return "992"
    case .tanzania: return "255"
    case .thailand: return "66"
    case .timorleste: return "670"
    case .togo: return "228"
    case .tokelau: return "690"
    case .tonga: return "676"
    case .trinidadAndTobago: return "1-868"
    case .tunisia: return "216"
    case .turkey: return "90"
    case .turkmenistan: return "993"
    case .turksAndCaicosIslands: return "1-649"
    case .tuvalu: return "688"
    case .uganda: return "256"
    case .ukraine: return "380"
    case .unitedArabEmirates: return "971"
    case .unitedKingdom: return "44"
    case .uruguay: return "598"
    case .uzbekistan: return "998"
    case .vanuatu: return "678"
    case .venezuela: return "58"
    case .vietNam: return "84"
    case .virginIslandsUK: return "1-284"
    case .virginIslandsUS: return "1-340"
    case .wallisAndFutuna: return "1-681"
    case .westernSahara: return "212"
    case .yemen: return "967"
    case .zambia: return "260"
    case .zimbabwe: return "263"
    case .allCountries: return "--"
    }
  }
}
