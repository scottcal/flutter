import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';
import 'coin_data.dart';
import 'dart:io' show Platform;

import 'dart:convert';

class PriceScreen extends StatefulWidget {
  @override
  _PriceScreenState createState() => _PriceScreenState();
}

class _PriceScreenState extends State<PriceScreen> {
  String selectedCurrency = currenciesList[0];

  String coinPriceBTC = '';
  String coinPriceETH = '';
  String coinPriceLTC = '';

  var response = new Map();
  CoinData coinDat = CoinData();

  DropdownButton<String> androidDropdown() {
    List<DropdownMenuItem<String>> dropdownItems = [];
    for (String currency in currenciesList) {
      var newItem = DropdownMenuItem(
        child: Text(currency),
        value: currency,
      );
      dropdownItems.add(newItem);
    }

    return DropdownButton<String>(
      value: selectedCurrency,
      items: dropdownItems,
      onChanged: (value) {
        setState(() {
          selectedCurrency = value;
        });
      },
    );
  }

  CupertinoPicker iOSPicker() {
    List<Text> pickerItems = [];
    for (String currency in currenciesList) {
      pickerItems.add(Text(currency));
    }

    return CupertinoPicker(
      backgroundColor: Colors.lightBlue,
      itemExtent: 32.0,
      onSelectedItemChanged: (selectedIndex) {
        print("$selectedIndex ${currenciesList[selectedIndex]} ");
        selectedCurrency = currenciesList[selectedIndex];
        getData(selectedCurrency);
      },
      children: pickerItems,
    );
  }

  void getData(String fiat) async {
    // Await the http get response, then decode the json-formatted response.

    for (String crypto in cryptoList) {
      response['$crypto'] = await coinDat.getCoinData(crypto, fiat);
      //var jsonResponse = jsonDecode(response.body);
    }
    print('The response is: $response');
    setState(() {
      coinPriceBTC = response['BTC'] == null
          ? 'Error'
          : response['BTC']['rate'].toStringAsFixed(2);
      coinPriceETH = response['ETH'] == null
          ? 'Error'
          : response['ETH']['rate'].toStringAsFixed(2);
      coinPriceLTC = response['LTC'] == null
          ? 'Error'
          : response['LTC']['rate'].toStringAsFixed(2);
      return null;
    });
    //print(response['BTC']['rate']);
  }
  //TODO: Create a method here called getData() to get the coin data from coin_data.dart

  @override
  void initState() {
    super.initState();
    getData(currenciesList[0]);

    //TODO: Call getData() when the screen loads up.
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('🤑 Coin Ticker'),
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: <Widget>[
          Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: [
              CoinCard(
                value: coinPriceBTC,
                selectedCurrency: selectedCurrency,
                cryptoCurrency: cryptoList[0],
              ),
              CoinCard(
                value: coinPriceETH,
                selectedCurrency: selectedCurrency,
                cryptoCurrency: cryptoList[1],
              ),
              CoinCard(
                value: coinPriceLTC,
                selectedCurrency: selectedCurrency,
                cryptoCurrency: cryptoList[2],
              ),
            ],
          ),
          Container(
            height: 150.0,
            alignment: Alignment.center,
            padding: EdgeInsets.only(bottom: 30.0),
            color: Colors.lightBlue,
            child: Platform.isIOS ? iOSPicker() : androidDropdown(),
          ),
        ],
      ),
    );
  }
}

class CoinCard extends StatelessWidget {
  const CoinCard({
    this.value,
    this.selectedCurrency,
    this.cryptoCurrency,
  });

  final String cryptoCurrency;
  final String selectedCurrency;
  final String value;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.fromLTRB(18.0, 18.0, 18.0, 0),
      child: Card(
        color: Colors.lightBlueAccent,
        elevation: 5.0,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(10.0),
        ),
        child: Padding(
          padding: EdgeInsets.symmetric(vertical: 15.0, horizontal: 28.0),
          child: Text(
            //TODO: Update the Text Widget with the live bitcoin data here.
            '1 $cryptoCurrency = $value $selectedCurrency',
            textAlign: TextAlign.center,
            style: TextStyle(
              fontSize: 20.0,
              color: Colors.white,
            ),
          ),
        ),
      ),
    );
  }
}
