//TODO: Add your imports here.
import 'utilities/networking.dart';

const List<String> currenciesList = [
  'AUD',
  'BRL',
  'CAD',
  'CNY',
  'EUR',
  'GBP',
  'HKD',
  'IDR',
  'ILS',
  'INR',
  'JPY',
  'MXN',
  'NOK',
  'NZD',
  'PLN',
  'RON',
  'RUB',
  'SEK',
  'SGD',
  'USD',
  'ZAR'
];

const List<String> cryptoList = [
  'BTC',
  'ETH',
  'LTC',
];

const coinAPIURL = 'https://rest.coinapi.io/v1/exchangerate';
const apiKey = '0F81D464-38C7-42C4-8D0F-EA224FA6F9B7';

class CoinData {
  //TODO: Create your getCoinData() method here.
  Future<dynamic> getCoinData(coin, fiat) async {
    String url = "$coinAPIURL/$coin/$fiat?apikey=$apiKey";
    print(url);
    NetworkHelper networkHelper = NetworkHelper(url);
    var coinData = await networkHelper.getData();

    return coinData;
  }
}
