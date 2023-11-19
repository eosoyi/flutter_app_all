import 'package:flutter/material.dart';

class DataQrPage extends StatefulWidget {
  const DataQrPage({super.key});

  @override
  State<DataQrPage> createState() => _DataQrPageState();
}

class _DataQrPageState extends State<DataQrPage> {
  @override
  Widget build(BuildContext context) {
    final String argumento = ModalRoute.of(context)?.settings.arguments as String;
    String qrRawDatos = argumento.toString();
    final size = MediaQuery.of(context).size;

    return WillPopScope(
      onWillPop: () async => true,
      child: Scaffold(
        appBar: AppBar(
          title: const Text("QR Scanner"),
        ),
        body: SizedBox(
          width: double.infinity,
          height: size.height * 0.9,
          child: Column(
            children: <Widget>[
              SizedBox(
                height: size.height * 0.2,
                width: double.infinity,
                child: SingleChildScrollView(
                  child: Container(
                    margin: const EdgeInsets.symmetric(
                        horizontal: 20, vertical: 5),
                    child: Text(
                      argumento,
                      style: const TextStyle(fontSize: 20),
                      textAlign: TextAlign.center,
                    ),
                  ),
                ),
              ),
              const Divider(
                height: 2,
                color: Colors.grey,
              ),
              Container(
                height: size.height * 0.15,
                width: double.infinity,
                padding: const EdgeInsets.symmetric(horizontal: 20),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: <Widget>[
                    const Icon(Icons.search_outlined,
                        size: 50, color: Colors.indigo),
                    InkWell(
                      onTap: () async {
                        //_launcherUrl(argumento, context);
                      },
                      child: Container(
                        width: size.width * 0.6,
                        height: size.height * 0.07,
                        alignment: Alignment.center,
                        decoration: BoxDecoration(
                            color: Colors.indigo,
                            borderRadius: BorderRadius.circular(5)),
                        child: Text(
                          "Buscar en la web",
                          textAlign: TextAlign.center,
                          style: TextStyle(
                              color: Colors.white,
                              fontWeight: FontWeight.bold,
                              fontSize: size.width * 0.05),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
