import 'package:flutter/material.dart';
import 'package:shared_preferences/shared_preferences.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {

  @override
  void initState() {
    super.initState();
    _veriOku();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Veri Kaydetme"),
      ),
      body: _buildBody(),
    );
  }

  Widget _buildBody() {
    return Container();
  }

  void _veriKaydet() async {
    SharedPreferences prefs = await SharedPreferences.getInstance();

    await prefs.setInt('yas', 27);
    await prefs.setBool('resitMi', true);
    await prefs.setDouble('boy', 1.85);
    await prefs.setString('isim', 'Cihan');
    await prefs.setStringList('diller', <String>['Dart', 'Java', 'C#']);
  }

  void _veriOku() async{
    SharedPreferences prefs = await SharedPreferences.getInstance();

    int? yas = prefs.getInt('yas');
    bool? resitMi = prefs.getBool('resitMi');
    double? boy = prefs.getDouble('boy');
    String? isim = prefs.getString('isim');
    List<String>? diller = prefs.getStringList('diller');

    print(yas);
    print(resitMi);
    print(boy);
    print(isim);
    print(diller);
  }
}
