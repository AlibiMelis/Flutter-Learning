import 'package:bitcoin_ticker/network.dart';

const bitcoinAverageURL =
    'https://apiv2.bitcoinaverage.com/indices/global/ticker/BTC';

class BitcoinModel {
  Future<dynamic> getBitcoinData(String currency) async {
    NetworkHelper networkHelper = NetworkHelper('$bitcoinAverageURL$currency');
    var bitcoinData = await networkHelper.getData();
    return bitcoinData;
  }
}
