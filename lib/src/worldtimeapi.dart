import 'dart:convert';

import 'package:http/http.dart' as http;

/// Get current DateTime from [internet](https://worldtimeapi.org)
/// [timezone] Set a timezone. Use [Timezones]
/// if null will return a timezone from public client ip
Future<DateTime> dateTimeFromInternet({String timezone}) async {
  var response = await http.get(
      "https://worldtimeapi.org/api/${timezone != null ? 'timezone/$timezone' : 'ip'}",
      headers: {'accept': 'application/json'});
  var json = jsonDecode(response.body);
  if (response.statusCode != 200) {
    throw Exception([response.body, response.request.url]);
  }
  return DateTime.parse(json['datetime'] as String).toLocal();
}

/// [Timezones] provides a shotcut way to set timezone for [dateTimeFromInternet]
class Timezones {
  /// Constant that represent "Africa/Abidjan"
  static final String africaAbidjan = 'Africa/Abidjan';

  /// Constant that represent "Africa/Accra"
  static final String africaAccra = 'Africa/Accra';

  /// Constant that represent "Africa/Algiers"
  static final String africaAlgiers = 'Africa/Algiers';

  /// Constant that represent "Africa/Bissau"
  static final String africaBissau = 'Africa/Bissau';

  /// Constant that represent "Africa/Cairo"
  static final String africaCairo = 'Africa/Cairo';

  /// Constant that represent "Africa/Casablanca"
  static final String africaCasablanca = 'Africa/Casablanca';

  /// Constant that represent "Africa/Ceuta"
  static final String africaCeuta = 'Africa/Ceuta';

  /// Constant that represent "Africa/El_Aaiun"
  static final String africaElAaiun = 'Africa/El_Aaiun';

  /// Constant that represent "Africa/Johannesburg"
  static final String africaJohannesburg = 'Africa/Johannesburg';

  /// Constant that represent "Africa/Juba"
  static final String africaJuba = 'Africa/Juba';

  /// Constant that represent "Africa/Khartoum"
  static final String africaKhartoum = 'Africa/Khartoum';

  /// Constant that represent "Africa/Lagos"
  static final String africaLagos = 'Africa/Lagos';

  /// Constant that represent "Africa/Maputo"
  static final String africaMaputo = 'Africa/Maputo';

  /// Constant that represent "Africa/Monrovia"
  static final String africaMonrovia = 'Africa/Monrovia';

  /// Constant that represent "Africa/Nairobi"
  static final String africaNairobi = 'Africa/Nairobi';

  /// Constant that represent "Africa/Ndjamena"
  static final String africaNdjamena = 'Africa/Ndjamena';

  /// Constant that represent "Africa/Sao_Tome"
  static final String africaSaoTome = 'Africa/Sao_Tome';

  /// Constant that represent "Africa/Tripoli"
  static final String africaTripoli = 'Africa/Tripoli';

  /// Constant that represent "Africa/Tunis"
  static final String africaTunis = 'Africa/Tunis';

  /// Constant that represent "Africa/Windhoek"
  static final String africaWindhoek = 'Africa/Windhoek';

  /// Constant that represent "America/Adak"
  static final String americaAdak = 'America/Adak';

  /// Constant that represent "America/Anchorage"
  static final String americaAnchorage = 'America/Anchorage';

  /// Constant that represent "America/Araguaina"
  static final String americaAraguaina = 'America/Araguaina';

  /// Constant that represent "America/Argentina/Buenos_Aires"
  static final String americaArgentinaBuenosAires =
      'America/Argentina/Buenos_Aires';

  /// Constant that represent "America/Argentina/Catamarca"
  static final String americaArgentinaCatamarca = 'America/Argentina/Catamarca';

  /// Constant that represent "America/Argentina/Cordoba"
  static final String americaArgentinaCordoba = 'America/Argentina/Cordoba';

  /// Constant that represent "America/Argentina/Jujuy"
  static final String americaArgentinaJujuy = 'America/Argentina/Jujuy';

  /// Constant that represent "America/Argentina/La_Rioja"
  static final String americaArgentinaLaRioja = 'America/Argentina/La_Rioja';

  /// Constant that represent "America/Argentina/Mendoza"
  static final String americaArgentinaMendoza = 'America/Argentina/Mendoza';

  /// Constant that represent "America/Argentina/Rio_Gallegos"
  static final String americaArgentinaRioGallegos =
      'America/Argentina/Rio_Gallegos';

  /// Constant that represent "America/Argentina/Salta"
  static final String americaArgentinaSalta = 'America/Argentina/Salta';

  /// Constant that represent "America/Argentina/San_Juan"
  static final String americaArgentinaSanJuan = 'America/Argentina/San_Juan';

  /// Constant that represent "America/Argentina/San_Luis"
  static final String americaArgentinaSanLuis = 'America/Argentina/San_Luis';

  /// Constant that represent "America/Argentina/Tucuman"
  static final String americaArgentinaTucuman = 'America/Argentina/Tucuman';

  /// Constant that represent "America/Argentina/Ushuaia"
  static final String americaArgentinaUshuaia = 'America/Argentina/Ushuaia';

  /// Constant that represent "America/Asuncion"
  static final String americaAsuncion = 'America/Asuncion';

  /// Constant that represent "America/Atikokan"
  static final String americaAtikokan = 'America/Atikokan';

  /// Constant that represent "America/Bahia"
  static final String americaBahia = 'America/Bahia';

  /// Constant that represent "America/Bahia_Banderas"
  static final String americaBahiaBanderas = 'America/Bahia_Banderas';

  /// Constant that represent "America/Barbados"
  static final String americaBarbados = 'America/Barbados';

  /// Constant that represent "America/Belem"
  static final String americaBelem = 'America/Belem';

  /// Constant that represent "America/Belize"
  static final String americaBelize = 'America/Belize';

  /// Constant that represent "America/Blanc-Sablon"
  static final String americaBlancSablon = 'America/Blanc-Sablon';

  /// Constant that represent "America/Boa_Vista"
  static final String americaBoaVista = 'America/Boa_Vista';

  /// Constant that represent "America/Bogota"
  static final String americaBogota = 'America/Bogota';

  /// Constant that represent "America/Boise"
  static final String americaBoise = 'America/Boise';

  /// Constant that represent "America/Cambridge_Bay"
  static final String americaCambridgeBay = 'America/Cambridge_Bay';

  /// Constant that represent "America/Campo_Grande"
  static final String americaCampoGrande = 'America/Campo_Grande';

  /// Constant that represent "America/Cancun"
  static final String americaCancun = 'America/Cancun';

  /// Constant that represent "America/Caracas"
  static final String americaCaracas = 'America/Caracas';

  /// Constant that represent "America/Cayenne"
  static final String americaCayenne = 'America/Cayenne';

  /// Constant that represent "America/Chicago"
  static final String americaChicago = 'America/Chicago';

  /// Constant that represent "America/Chihuahua"
  static final String americaChihuahua = 'America/Chihuahua';

  /// Constant that represent "America/Costa_Rica"
  static final String americaCostaRica = 'America/Costa_Rica';

  /// Constant that represent "America/Creston"
  static final String americaCreston = 'America/Creston';

  /// Constant that represent "America/Cuiaba"
  static final String americaCuiaba = 'America/Cuiaba';

  /// Constant that represent "America/Curacao"
  static final String americaCuracao = 'America/Curacao';

  /// Constant that represent "America/Danmarkshavn"
  static final String americaDanmarkshavn = 'America/Danmarkshavn';

  /// Constant that represent "America/Dawson"
  static final String americaDawson = 'America/Dawson';

  /// Constant that represent "America/Dawson_Creek"
  static final String americaDawsonCreek = 'America/Dawson_Creek';

  /// Constant that represent "America/Denver"
  static final String americaDenver = 'America/Denver';

  /// Constant that represent "America/Detroit"
  static final String americaDetroit = 'America/Detroit';

  /// Constant that represent "America/Edmonton"
  static final String americaEdmonton = 'America/Edmonton';

  /// Constant that represent "America/Eirunepe"
  static final String americaEirunepe = 'America/Eirunepe';

  /// Constant that represent "America/El_Salvador"
  static final String americaElSalvador = 'America/El_Salvador';

  /// Constant that represent "America/Fort_Nelson"
  static final String americaFortNelson = 'America/Fort_Nelson';

  /// Constant that represent "America/Fortaleza"
  static final String americaFortaleza = 'America/Fortaleza';

  /// Constant that represent "America/Glace_Bay"
  static final String americaGlaceBay = 'America/Glace_Bay';

  /// Constant that represent "America/Godthab"
  static final String americaGodthab = 'America/Godthab';

  /// Constant that represent "America/Goose_Bay"
  static final String americaGooseBay = 'America/Goose_Bay';

  /// Constant that represent "America/Grand_Turk"
  static final String americaGrandTurk = 'America/Grand_Turk';

  /// Constant that represent "America/Guatemala"
  static final String americaGuatemala = 'America/Guatemala';

  /// Constant that represent "America/Guayaquil"
  static final String americaGuayaquil = 'America/Guayaquil';

  /// Constant that represent "America/Guyana"
  static final String americaGuyana = 'America/Guyana';

  /// Constant that represent "America/Halifax"
  static final String americaHalifax = 'America/Halifax';

  /// Constant that represent "America/Havana"
  static final String americaHavana = 'America/Havana';

  /// Constant that represent "America/Hermosillo"
  static final String americaHermosillo = 'America/Hermosillo';

  /// Constant that represent "America/Indiana/Indianapolis"
  static final String americaIndianaIndianapolis =
      'America/Indiana/Indianapolis';

  /// Constant that represent "America/Indiana/Knox"
  static final String americaIndianaKnox = 'America/Indiana/Knox';

  /// Constant that represent "America/Indiana/Marengo"
  static final String americaIndianaMarengo = 'America/Indiana/Marengo';

  /// Constant that represent "America/Indiana/Petersburg"
  static final String americaIndianaPetersburg = 'America/Indiana/Petersburg';

  /// Constant that represent "America/Indiana/Tell_City"
  static final String americaIndianaTellCity = 'America/Indiana/Tell_City';

  /// Constant that represent "America/Indiana/Vevay"
  static final String americaIndianaVevay = 'America/Indiana/Vevay';

  /// Constant that represent "America/Indiana/Vincennes"
  static final String americaIndianaVincennes = 'America/Indiana/Vincennes';

  /// Constant that represent "America/Indiana/Winamac"
  static final String americaIndianaWinamac = 'America/Indiana/Winamac';

  /// Constant that represent "America/Inuvik"
  static final String americaInuvik = 'America/Inuvik';

  /// Constant that represent "America/Iqaluit"
  static final String americaIqaluit = 'America/Iqaluit';

  /// Constant that represent "America/Jamaica"
  static final String americaJamaica = 'America/Jamaica';

  /// Constant that represent "America/Juneau"
  static final String americaJuneau = 'America/Juneau';

  /// Constant that represent "America/Kentucky/Louisville"
  static final String americaKentuckyLouisville = 'America/Kentucky/Louisville';

  /// Constant that represent "America/Kentucky/Monticello"
  static final String americaKentuckyMonticello = 'America/Kentucky/Monticello';

  /// Constant that represent "America/La_Paz"
  static final String americaLaPaz = 'America/La_Paz';

  /// Constant that represent "America/Lima"
  static final String americaLima = 'America/Lima';

  /// Constant that represent "America/Los_Angeles"
  static final String americaLosAngeles = 'America/Los_Angeles';

  /// Constant that represent "America/Maceio"
  static final String americaMaceio = 'America/Maceio';

  /// Constant that represent "America/Managua"
  static final String americaManagua = 'America/Managua';

  /// Constant that represent "America/Manaus"
  static final String americaManaus = 'America/Manaus';

  /// Constant that represent "America/Martinique"
  static final String americaMartinique = 'America/Martinique';

  /// Constant that represent "America/Matamoros"
  static final String americaMatamoros = 'America/Matamoros';

  /// Constant that represent "America/Mazatlan"
  static final String americaMazatlan = 'America/Mazatlan';

  /// Constant that represent "America/Menominee"
  static final String americaMenominee = 'America/Menominee';

  /// Constant that represent "America/Merida"
  static final String americaMerida = 'America/Merida';

  /// Constant that represent "America/Metlakatla"
  static final String americaMetlakatla = 'America/Metlakatla';

  /// Constant that represent "America/Mexico_City"
  static final String americaMexicoCity = 'America/Mexico_City';

  /// Constant that represent "America/Miquelon"
  static final String americaMiquelon = 'America/Miquelon';

  /// Constant that represent "America/Moncton"
  static final String americaMoncton = 'America/Moncton';

  /// Constant that represent "America/Monterrey"
  static final String americaMonterrey = 'America/Monterrey';

  /// Constant that represent "America/Montevideo"
  static final String americaMontevideo = 'America/Montevideo';

  /// Constant that represent "America/Nassau"
  static final String americaNassau = 'America/Nassau';

  /// Constant that represent "America/New_York"
  static final String americaNewYork = 'America/New_York';

  /// Constant that represent "America/Nipigon"
  static final String americaNipigon = 'America/Nipigon';

  /// Constant that represent "America/Nome"
  static final String americaNome = 'America/Nome';

  /// Constant that represent "America/Noronha"
  static final String americaNoronha = 'America/Noronha';

  /// Constant that represent "America/North_Dakota/Beulah"
  static final String americaNorthDakotaBeulah = 'America/North_Dakota/Beulah';

  /// Constant that represent "America/North_Dakota/Center"
  static final String americaNorthDakotaCenter = 'America/North_Dakota/Center';

  /// Constant that represent "America/North_Dakota/New_Salem"
  static final String americaNorthDakotaNewSalem =
      'America/North_Dakota/New_Salem';

  /// Constant that represent "America/Ojinaga"
  static final String americaOjinaga = 'America/Ojinaga';

  /// Constant that represent "America/Panama"
  static final String americaPanama = 'America/Panama';

  /// Constant that represent "America/Pangnirtung"
  static final String americaPangnirtung = 'America/Pangnirtung';

  /// Constant that represent "America/Paramaribo"
  static final String americaParamaribo = 'America/Paramaribo';

  /// Constant that represent "America/Phoenix"
  static final String americaPhoenix = 'America/Phoenix';

  /// Constant that represent "America/Port-au-Prince"
  static final String americaPortauPrince = 'America/Port-au-Prince';

  /// Constant that represent "America/Port_of_Spain"
  static final String americaPortofSpain = 'America/Port_of_Spain';

  /// Constant that represent "America/Porto_Velho"
  static final String americaPortoVelho = 'America/Porto_Velho';

  /// Constant that represent "America/Puerto_Rico"
  static final String americaPuertoRico = 'America/Puerto_Rico';

  /// Constant that represent "America/Punta_Arenas"
  static final String americaPuntaArenas = 'America/Punta_Arenas';

  /// Constant that represent "America/Rainy_River"
  static final String americaRainyRiver = 'America/Rainy_River';

  /// Constant that represent "America/Rankin_Inlet"
  static final String americaRankinInlet = 'America/Rankin_Inlet';

  /// Constant that represent "America/Recife"
  static final String americaRecife = 'America/Recife';

  /// Constant that represent "America/Regina"
  static final String americaRegina = 'America/Regina';

  /// Constant that represent "America/Resolute"
  static final String americaResolute = 'America/Resolute';

  /// Constant that represent "America/Rio_Branco"
  static final String americaRioBranco = 'America/Rio_Branco';

  /// Constant that represent "America/Santarem"
  static final String americaSantarem = 'America/Santarem';

  /// Constant that represent "America/Santiago"
  static final String americaSantiago = 'America/Santiago';

  /// Constant that represent "America/Santo_Domingo"
  static final String americaSantoDomingo = 'America/Santo_Domingo';

  /// Constant that represent "America/Sao_Paulo"
  static final String americaSaoPaulo = 'America/Sao_Paulo';

  /// Constant that represent "America/Scoresbysund"
  static final String americaScoresbysund = 'America/Scoresbysund';

  /// Constant that represent "America/Sitka"
  static final String americaSitka = 'America/Sitka';

  /// Constant that represent "America/St_Johns"
  static final String americaStJohns = 'America/St_Johns';

  /// Constant that represent "America/Swift_Current"
  static final String americaSwiftCurrent = 'America/Swift_Current';

  /// Constant that represent "America/Tegucigalpa"
  static final String americaTegucigalpa = 'America/Tegucigalpa';

  /// Constant that represent "America/Thule"
  static final String americaThule = 'America/Thule';

  /// Constant that represent "America/Thunder_Bay"
  static final String americaThunderBay = 'America/Thunder_Bay';

  /// Constant that represent "America/Tijuana"
  static final String americaTijuana = 'America/Tijuana';

  /// Constant that represent "America/Toronto"
  static final String americaToronto = 'America/Toronto';

  /// Constant that represent "America/Vancouver"
  static final String americaVancouver = 'America/Vancouver';

  /// Constant that represent "America/Whitehorse"
  static final String americaWhitehorse = 'America/Whitehorse';

  /// Constant that represent "America/Winnipeg"
  static final String americaWinnipeg = 'America/Winnipeg';

  /// Constant that represent "America/Yakutat"
  static final String americaYakutat = 'America/Yakutat';

  /// Constant that represent "America/Yellowknife"
  static final String americaYellowknife = 'America/Yellowknife';

  /// Constant that represent "Antarctica/Casey"
  static final String antarcticaCasey = 'Antarctica/Casey';

  /// Constant that represent "Antarctica/Davis"
  static final String antarcticaDavis = 'Antarctica/Davis';

  /// Constant that represent "Antarctica/DumontDUrville"
  static final String antarcticaDumontDUrville = 'Antarctica/DumontDUrville';

  /// Constant that represent "Antarctica/Macquarie"
  static final String antarcticaMacquarie = 'Antarctica/Macquarie';

  /// Constant that represent "Antarctica/Mawson"
  static final String antarcticaMawson = 'Antarctica/Mawson';

  /// Constant that represent "Antarctica/Palmer"
  static final String antarcticaPalmer = 'Antarctica/Palmer';

  /// Constant that represent "Antarctica/Rothera"
  static final String antarcticaRothera = 'Antarctica/Rothera';

  /// Constant that represent "Antarctica/Syowa"
  static final String antarcticaSyowa = 'Antarctica/Syowa';

  /// Constant that represent "Antarctica/Troll"
  static final String antarcticaTroll = 'Antarctica/Troll';

  /// Constant that represent "Antarctica/Vostok"
  static final String antarcticaVostok = 'Antarctica/Vostok';

  /// Constant that represent "Asia/Almaty"
  static final String asiaAlmaty = 'Asia/Almaty';

  /// Constant that represent "Asia/Amman"
  static final String asiaAmman = 'Asia/Amman';

  /// Constant that represent "Asia/Anadyr"
  static final String asiaAnadyr = 'Asia/Anadyr';

  /// Constant that represent "Asia/Aqtau"
  static final String asiaAqtau = 'Asia/Aqtau';

  /// Constant that represent "Asia/Aqtobe"
  static final String asiaAqtobe = 'Asia/Aqtobe';

  /// Constant that represent "Asia/Ashgabat"
  static final String asiaAshgabat = 'Asia/Ashgabat';

  /// Constant that represent "Asia/Atyrau"
  static final String asiaAtyrau = 'Asia/Atyrau';

  /// Constant that represent "Asia/Baghdad"
  static final String asiaBaghdad = 'Asia/Baghdad';

  /// Constant that represent "Asia/Baku"
  static final String asiaBaku = 'Asia/Baku';

  /// Constant that represent "Asia/Bangkok"
  static final String asiaBangkok = 'Asia/Bangkok';

  /// Constant that represent "Asia/Barnaul"
  static final String asiaBarnaul = 'Asia/Barnaul';

  /// Constant that represent "Asia/Beirut"
  static final String asiaBeirut = 'Asia/Beirut';

  /// Constant that represent "Asia/Bishkek"
  static final String asiaBishkek = 'Asia/Bishkek';

  /// Constant that represent "Asia/Brunei"
  static final String asiaBrunei = 'Asia/Brunei';

  /// Constant that represent "Asia/Chita"
  static final String asiaChita = 'Asia/Chita';

  /// Constant that represent "Asia/Choibalsan"
  static final String asiaChoibalsan = 'Asia/Choibalsan';

  /// Constant that represent "Asia/Colombo"
  static final String asiaColombo = 'Asia/Colombo';

  /// Constant that represent "Asia/Damascus"
  static final String asiaDamascus = 'Asia/Damascus';

  /// Constant that represent "Asia/Dhaka"
  static final String asiaDhaka = 'Asia/Dhaka';

  /// Constant that represent "Asia/Dili"
  static final String asiaDili = 'Asia/Dili';

  /// Constant that represent "Asia/Dubai"
  static final String asiaDubai = 'Asia/Dubai';

  /// Constant that represent "Asia/Dushanbe"
  static final String asiaDushanbe = 'Asia/Dushanbe';

  /// Constant that represent "Asia/Famagusta"
  static final String asiaFamagusta = 'Asia/Famagusta';

  /// Constant that represent "Asia/Gaza"
  static final String asiaGaza = 'Asia/Gaza';

  /// Constant that represent "Asia/Hebron"
  static final String asiaHebron = 'Asia/Hebron';

  /// Constant that represent "Asia/Ho_Chi_Minh"
  static final String asiaHoChiMinh = 'Asia/Ho_Chi_Minh';

  /// Constant that represent "Asia/Hong_Kong"
  static final String asiaHongKong = 'Asia/Hong_Kong';

  /// Constant that represent "Asia/Hovd"
  static final String asiaHovd = 'Asia/Hovd';

  /// Constant that represent "Asia/Irkutsk"
  static final String asiaIrkutsk = 'Asia/Irkutsk';

  /// Constant that represent "Asia/Jakarta"
  static final String asiaJakarta = 'Asia/Jakarta';

  /// Constant that represent "Asia/Jayapura"
  static final String asiaJayapura = 'Asia/Jayapura';

  /// Constant that represent "Asia/Jerusalem"
  static final String asiaJerusalem = 'Asia/Jerusalem';

  /// Constant that represent "Asia/Kabul"
  static final String asiaKabul = 'Asia/Kabul';

  /// Constant that represent "Asia/Kamchatka"
  static final String asiaKamchatka = 'Asia/Kamchatka';

  /// Constant that represent "Asia/Karachi"
  static final String asiaKarachi = 'Asia/Karachi';

  /// Constant that represent "Asia/Kathmandu"
  static final String asiaKathmandu = 'Asia/Kathmandu';

  /// Constant that represent "Asia/Khandyga"
  static final String asiaKhandyga = 'Asia/Khandyga';

  /// Constant that represent "Asia/Kolkata"
  static final String asiaKolkata = 'Asia/Kolkata';

  /// Constant that represent "Asia/Krasnoyarsk"
  static final String asiaKrasnoyarsk = 'Asia/Krasnoyarsk';

  /// Constant that represent "Asia/Kuala_Lumpur"
  static final String asiaKualaLumpur = 'Asia/Kuala_Lumpur';

  /// Constant that represent "Asia/Kuching"
  static final String asiaKuching = 'Asia/Kuching';

  /// Constant that represent "Asia/Macau"
  static final String asiaMacau = 'Asia/Macau';

  /// Constant that represent "Asia/Magadan"
  static final String asiaMagadan = 'Asia/Magadan';

  /// Constant that represent "Asia/Makassar"
  static final String asiaMakassar = 'Asia/Makassar';

  /// Constant that represent "Asia/Manila"
  static final String asiaManila = 'Asia/Manila';

  /// Constant that represent "Asia/Nicosia"
  static final String asiaNicosia = 'Asia/Nicosia';

  /// Constant that represent "Asia/Novokuznetsk"
  static final String asiaNovokuznetsk = 'Asia/Novokuznetsk';

  /// Constant that represent "Asia/Novosibirsk"
  static final String asiaNovosibirsk = 'Asia/Novosibirsk';

  /// Constant that represent "Asia/Omsk"
  static final String asiaOmsk = 'Asia/Omsk';

  /// Constant that represent "Asia/Oral"
  static final String asiaOral = 'Asia/Oral';

  /// Constant that represent "Asia/Pontianak"
  static final String asiaPontianak = 'Asia/Pontianak';

  /// Constant that represent "Asia/Pyongyang"
  static final String asiaPyongyang = 'Asia/Pyongyang';

  /// Constant that represent "Asia/Qatar"
  static final String asiaQatar = 'Asia/Qatar';

  /// Constant that represent "Asia/Qostanay"
  static final String asiaQostanay = 'Asia/Qostanay';

  /// Constant that represent "Asia/Qyzylorda"
  static final String asiaQyzylorda = 'Asia/Qyzylorda';

  /// Constant that represent "Asia/Riyadh"
  static final String asiaRiyadh = 'Asia/Riyadh';

  /// Constant that represent "Asia/Sakhalin"
  static final String asiaSakhalin = 'Asia/Sakhalin';

  /// Constant that represent "Asia/Samarkand"
  static final String asiaSamarkand = 'Asia/Samarkand';

  /// Constant that represent "Asia/Seoul"
  static final String asiaSeoul = 'Asia/Seoul';

  /// Constant that represent "Asia/Shanghai"
  static final String asiaShanghai = 'Asia/Shanghai';

  /// Constant that represent "Asia/Singapore"
  static final String asiaSingapore = 'Asia/Singapore';

  /// Constant that represent "Asia/Srednekolymsk"
  static final String asiaSrednekolymsk = 'Asia/Srednekolymsk';

  /// Constant that represent "Asia/Taipei"
  static final String asiaTaipei = 'Asia/Taipei';

  /// Constant that represent "Asia/Tashkent"
  static final String asiaTashkent = 'Asia/Tashkent';

  /// Constant that represent "Asia/Tbilisi"
  static final String asiaTbilisi = 'Asia/Tbilisi';

  /// Constant that represent "Asia/Tehran"
  static final String asiaTehran = 'Asia/Tehran';

  /// Constant that represent "Asia/Thimphu"
  static final String asiaThimphu = 'Asia/Thimphu';

  /// Constant that represent "Asia/Tokyo"
  static final String asiaTokyo = 'Asia/Tokyo';

  /// Constant that represent "Asia/Tomsk"
  static final String asiaTomsk = 'Asia/Tomsk';

  /// Constant that represent "Asia/Ulaanbaatar"
  static final String asiaUlaanbaatar = 'Asia/Ulaanbaatar';

  /// Constant that represent "Asia/Urumqi"
  static final String asiaUrumqi = 'Asia/Urumqi';

  /// Constant that represent "Asia/Ust-Nera"
  static final String asiaUstNera = 'Asia/Ust-Nera';

  /// Constant that represent "Asia/Vladivostok"
  static final String asiaVladivostok = 'Asia/Vladivostok';

  /// Constant that represent "Asia/Yakutsk"
  static final String asiaYakutsk = 'Asia/Yakutsk';

  /// Constant that represent "Asia/Yangon"
  static final String asiaYangon = 'Asia/Yangon';

  /// Constant that represent "Asia/Yekaterinburg"
  static final String asiaYekaterinburg = 'Asia/Yekaterinburg';

  /// Constant that represent "Asia/Yerevan"
  static final String asiaYerevan = 'Asia/Yerevan';

  /// Constant that represent "Atlantic/Azores"
  static final String atlanticAzores = 'Atlantic/Azores';

  /// Constant that represent "Atlantic/Bermuda"
  static final String atlanticBermuda = 'Atlantic/Bermuda';

  /// Constant that represent "Atlantic/Canary"
  static final String atlanticCanary = 'Atlantic/Canary';

  /// Constant that represent "Atlantic/Cape_Verde"
  static final String atlanticCapeVerde = 'Atlantic/Cape_Verde';

  /// Constant that represent "Atlantic/Faroe"
  static final String atlanticFaroe = 'Atlantic/Faroe';

  /// Constant that represent "Atlantic/Madeira"
  static final String atlanticMadeira = 'Atlantic/Madeira';

  /// Constant that represent "Atlantic/Reykjavik"
  static final String atlanticReykjavik = 'Atlantic/Reykjavik';

  /// Constant that represent "Atlantic/South_Georgia"
  static final String atlanticSouthGeorgia = 'Atlantic/South_Georgia';

  /// Constant that represent "Atlantic/Stanley"
  static final String atlanticStanley = 'Atlantic/Stanley';

  /// Constant that represent "Australia/Adelaide"
  static final String australiaAdelaide = 'Australia/Adelaide';

  /// Constant that represent "Australia/Brisbane"
  static final String australiaBrisbane = 'Australia/Brisbane';

  /// Constant that represent "Australia/Broken_Hill"
  static final String australiaBrokenHill = 'Australia/Broken_Hill';

  /// Constant that represent "Australia/Currie"
  static final String australiaCurrie = 'Australia/Currie';

  /// Constant that represent "Australia/Darwin"
  static final String australiaDarwin = 'Australia/Darwin';

  /// Constant that represent "Australia/Eucla"
  static final String australiaEucla = 'Australia/Eucla';

  /// Constant that represent "Australia/Hobart"
  static final String australiaHobart = 'Australia/Hobart';

  /// Constant that represent "Australia/Lindeman"
  static final String australiaLindeman = 'Australia/Lindeman';

  /// Constant that represent "Australia/Lord_Howe"
  static final String australiaLordHowe = 'Australia/Lord_Howe';

  /// Constant that represent "Australia/Melbourne"
  static final String australiaMelbourne = 'Australia/Melbourne';

  /// Constant that represent "Australia/Perth"
  static final String australiaPerth = 'Australia/Perth';

  /// Constant that represent "Australia/Sydney"
  static final String australiaSydney = 'Australia/Sydney';

  /// Constant that represent "CET"
  static final String cET = 'CET';

  /// Constant that represent "CST6CDT"
  static final String cST6CDT = 'CST6CDT';

  /// Constant that represent "EET"
  static final String eET = 'EET';

  /// Constant that represent "EST"
  static final String eST = 'EST';

  /// Constant that represent "EST5EDT"
  static final String eST5EDT = 'EST5EDT';

  /// Constant that represent "Etc/GMT"
  static final String etcGMT = 'Etc/GMT';

  /// Constant that represent "Europe/Amsterdam"
  static final String europeAmsterdam = 'Europe/Amsterdam';

  /// Constant that represent "Europe/Andorra"
  static final String europeAndorra = 'Europe/Andorra';

  /// Constant that represent "Europe/Astrakhan"
  static final String europeAstrakhan = 'Europe/Astrakhan';

  /// Constant that represent "Europe/Athens"
  static final String europeAthens = 'Europe/Athens';

  /// Constant that represent "Europe/Belgrade"
  static final String europeBelgrade = 'Europe/Belgrade';

  /// Constant that represent "Europe/Berlin"
  static final String europeBerlin = 'Europe/Berlin';

  /// Constant that represent "Europe/Brussels"
  static final String europeBrussels = 'Europe/Brussels';

  /// Constant that represent "Europe/Bucharest"
  static final String europeBucharest = 'Europe/Bucharest';

  /// Constant that represent "Europe/Budapest"
  static final String europeBudapest = 'Europe/Budapest';

  /// Constant that represent "Europe/Chisinau"
  static final String europeChisinau = 'Europe/Chisinau';

  /// Constant that represent "Europe/Copenhagen"
  static final String europeCopenhagen = 'Europe/Copenhagen';

  /// Constant that represent "Europe/Dublin"
  static final String europeDublin = 'Europe/Dublin';

  /// Constant that represent "Europe/Gibraltar"
  static final String europeGibraltar = 'Europe/Gibraltar';

  /// Constant that represent "Europe/Helsinki"
  static final String europeHelsinki = 'Europe/Helsinki';

  /// Constant that represent "Europe/Istanbul"
  static final String europeIstanbul = 'Europe/Istanbul';

  /// Constant that represent "Europe/Kaliningrad"
  static final String europeKaliningrad = 'Europe/Kaliningrad';

  /// Constant that represent "Europe/Kiev"
  static final String europeKiev = 'Europe/Kiev';

  /// Constant that represent "Europe/Kirov"
  static final String europeKirov = 'Europe/Kirov';

  /// Constant that represent "Europe/Lisbon"
  static final String europeLisbon = 'Europe/Lisbon';

  /// Constant that represent "Europe/London"
  static final String europeLondon = 'Europe/London';

  /// Constant that represent "Europe/Luxembourg"
  static final String europeLuxembourg = 'Europe/Luxembourg';

  /// Constant that represent "Europe/Madrid"
  static final String europeMadrid = 'Europe/Madrid';

  /// Constant that represent "Europe/Malta"
  static final String europeMalta = 'Europe/Malta';

  /// Constant that represent "Europe/Minsk"
  static final String europeMinsk = 'Europe/Minsk';

  /// Constant that represent "Europe/Monaco"
  static final String europeMonaco = 'Europe/Monaco';

  /// Constant that represent "Europe/Moscow"
  static final String europeMoscow = 'Europe/Moscow';

  /// Constant that represent "Europe/Oslo"
  static final String europeOslo = 'Europe/Oslo';

  /// Constant that represent "Europe/Paris"
  static final String europeParis = 'Europe/Paris';

  /// Constant that represent "Europe/Prague"
  static final String europePrague = 'Europe/Prague';

  /// Constant that represent "Europe/Riga"
  static final String europeRiga = 'Europe/Riga';

  /// Constant that represent "Europe/Rome"
  static final String europeRome = 'Europe/Rome';

  /// Constant that represent "Europe/Samara"
  static final String europeSamara = 'Europe/Samara';

  /// Constant that represent "Europe/Saratov"
  static final String europeSaratov = 'Europe/Saratov';

  /// Constant that represent "Europe/Simferopol"
  static final String europeSimferopol = 'Europe/Simferopol';

  /// Constant that represent "Europe/Sofia"
  static final String europeSofia = 'Europe/Sofia';

  /// Constant that represent "Europe/Stockholm"
  static final String europeStockholm = 'Europe/Stockholm';

  /// Constant that represent "Europe/Tallinn"
  static final String europeTallinn = 'Europe/Tallinn';

  /// Constant that represent "Europe/Tirane"
  static final String europeTirane = 'Europe/Tirane';

  /// Constant that represent "Europe/Ulyanovsk"
  static final String europeUlyanovsk = 'Europe/Ulyanovsk';

  /// Constant that represent "Europe/Uzhgorod"
  static final String europeUzhgorod = 'Europe/Uzhgorod';

  /// Constant that represent "Europe/Vienna"
  static final String europeVienna = 'Europe/Vienna';

  /// Constant that represent "Europe/Vilnius"
  static final String europeVilnius = 'Europe/Vilnius';

  /// Constant that represent "Europe/Volgograd"
  static final String europeVolgograd = 'Europe/Volgograd';

  /// Constant that represent "Europe/Warsaw"
  static final String europeWarsaw = 'Europe/Warsaw';

  /// Constant that represent "Europe/Zaporozhye"
  static final String europeZaporozhye = 'Europe/Zaporozhye';

  /// Constant that represent "Europe/Zurich"
  static final String europeZurich = 'Europe/Zurich';

  /// Constant that represent "HST"
  static final String hST = 'HST';

  /// Constant that represent "Indian/Chagos"
  static final String indianChagos = 'Indian/Chagos';

  /// Constant that represent "Indian/Christmas"
  static final String indianChristmas = 'Indian/Christmas';

  /// Constant that represent "Indian/Cocos"
  static final String indianCocos = 'Indian/Cocos';

  /// Constant that represent "Indian/Kerguelen"
  static final String indianKerguelen = 'Indian/Kerguelen';

  /// Constant that represent "Indian/Mahe"
  static final String indianMahe = 'Indian/Mahe';

  /// Constant that represent "Indian/Maldives"
  static final String indianMaldives = 'Indian/Maldives';

  /// Constant that represent "Indian/Mauritius"
  static final String indianMauritius = 'Indian/Mauritius';

  /// Constant that represent "Indian/Reunion"
  static final String indianReunion = 'Indian/Reunion';

  /// Constant that represent "MET"
  static final String mET = 'MET';

  /// Constant that represent "MST"
  static final String mST = 'MST';

  /// Constant that represent "MST7MDT"
  static final String mST7MDT = 'MST7MDT';

  /// Constant that represent "PST8PDT"
  static final String pST8PDT = 'PST8PDT';

  /// Constant that represent "Pacific/Apia"
  static final String pacificApia = 'Pacific/Apia';

  /// Constant that represent "Pacific/Auckland"
  static final String pacificAuckland = 'Pacific/Auckland';

  /// Constant that represent "Pacific/Bougainville"
  static final String pacificBougainville = 'Pacific/Bougainville';

  /// Constant that represent "Pacific/Chatham"
  static final String pacificChatham = 'Pacific/Chatham';

  /// Constant that represent "Pacific/Chuuk"
  static final String pacificChuuk = 'Pacific/Chuuk';

  /// Constant that represent "Pacific/Easter"
  static final String pacificEaster = 'Pacific/Easter';

  /// Constant that represent "Pacific/Efate"
  static final String pacificEfate = 'Pacific/Efate';

  /// Constant that represent "Pacific/Enderbury"
  static final String pacificEnderbury = 'Pacific/Enderbury';

  /// Constant that represent "Pacific/Fakaofo"
  static final String pacificFakaofo = 'Pacific/Fakaofo';

  /// Constant that represent "Pacific/Fiji"
  static final String pacificFiji = 'Pacific/Fiji';

  /// Constant that represent "Pacific/Funafuti"
  static final String pacificFunafuti = 'Pacific/Funafuti';

  /// Constant that represent "Pacific/Galapagos"
  static final String pacificGalapagos = 'Pacific/Galapagos';

  /// Constant that represent "Pacific/Gambier"
  static final String pacificGambier = 'Pacific/Gambier';

  /// Constant that represent "Pacific/Guadalcanal"
  static final String pacificGuadalcanal = 'Pacific/Guadalcanal';

  /// Constant that represent "Pacific/Guam"
  static final String pacificGuam = 'Pacific/Guam';

  /// Constant that represent "Pacific/Honolulu"
  static final String pacificHonolulu = 'Pacific/Honolulu';

  /// Constant that represent "Pacific/Kiritimati"
  static final String pacificKiritimati = 'Pacific/Kiritimati';

  /// Constant that represent "Pacific/Kosrae"
  static final String pacificKosrae = 'Pacific/Kosrae';

  /// Constant that represent "Pacific/Kwajalein"
  static final String pacificKwajalein = 'Pacific/Kwajalein';

  /// Constant that represent "Pacific/Majuro"
  static final String pacificMajuro = 'Pacific/Majuro';

  /// Constant that represent "Pacific/Marquesas"
  static final String pacificMarquesas = 'Pacific/Marquesas';

  /// Constant that represent "Pacific/Nauru"
  static final String pacificNauru = 'Pacific/Nauru';

  /// Constant that represent "Pacific/Niue"
  static final String pacificNiue = 'Pacific/Niue';

  /// Constant that represent "Pacific/Norfolk"
  static final String pacificNorfolk = 'Pacific/Norfolk';

  /// Constant that represent "Pacific/Noumea"
  static final String pacificNoumea = 'Pacific/Noumea';

  /// Constant that represent "Pacific/Pago_Pago"
  static final String pacificPagoPago = 'Pacific/Pago_Pago';

  /// Constant that represent "Pacific/Palau"
  static final String pacificPalau = 'Pacific/Palau';

  /// Constant that represent "Pacific/Pitcairn"
  static final String pacificPitcairn = 'Pacific/Pitcairn';

  /// Constant that represent "Pacific/Pohnpei"
  static final String pacificPohnpei = 'Pacific/Pohnpei';

  /// Constant that represent "Pacific/Port_Moresby"
  static final String pacificPortMoresby = 'Pacific/Port_Moresby';

  /// Constant that represent "Pacific/Rarotonga"
  static final String pacificRarotonga = 'Pacific/Rarotonga';

  /// Constant that represent "Pacific/Tahiti"
  static final String pacificTahiti = 'Pacific/Tahiti';

  /// Constant that represent "Pacific/Tarawa"
  static final String pacificTarawa = 'Pacific/Tarawa';

  /// Constant that represent "Pacific/Tongatapu"
  static final String pacificTongatapu = 'Pacific/Tongatapu';

  /// Constant that represent "Pacific/Wake"
  static final String pacificWake = 'Pacific/Wake';

  /// Constant that represent "Pacific/Wallis"
  static final String pacificWallis = 'Pacific/Wallis';

  /// Constant that represent "WET"
  static final String wET = 'WET';
}
