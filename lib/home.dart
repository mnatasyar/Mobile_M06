import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  bool _status_switch = false;

  String dropval = "opsi1";

  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text("M. Natasya Ramadana - 211112080")),
      body: Column(
        children: [
          SwitchListTile(
            secondary: const Icon(Icons.work),
            title: const Text("Pilih Cita-Cita Mu dari Sekarang"),
            value: _status_switch,
            onChanged: (val) {
              setState(() {
                _status_switch = val;
              });
            },
          ),
          Container(
              child: _status_switch
                  ? DropdownButton(
                      value: dropval,
                      onChanged: (String? val) {
                        setState(() {
                          dropval = val!;
                        });
                      },
                      items: const [
                        DropdownMenuItem(
                          value: "opsi1",
                          child: Text("UI-UX Designer"),
                        ),
                        DropdownMenuItem(
                          value: "opsi2",
                          child: Text("Mobile Developer"),
                        ),
                        DropdownMenuItem(
                          value: "opsi3",
                          child: Text("Full Stack Developer"),
                        ),
                      ],
                    )
                  : null),
          if (_status_switch == true)
            if (dropval == "opsi1")
              const DeskripsiOpsi1()
            else if (dropval == "opsi2")
              const DeskripsiOpsi2()
            else if (dropval == "opsi3")
              const DeskripsiOpsi3()
        ],
      ),
    );
  }
}

class DeskripsiOpsi1 extends StatelessWidget {
  const DeskripsiOpsi1({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 500,
      height: 200,
      padding: const EdgeInsets.all(15.0),
      decoration: BoxDecoration(
        border: Border.all(
          color: Colors.purple,
          width: 5,
        )
      ),
      child: Column(
        children: [
          const Text("UI-UX Designer", style: TextStyle(fontWeight: FontWeight.bold),),
          const SizedBox(
            height: 15,
          ),
          const Text("UI-UX Designer adalah seorang profesional yang bertanggung jawab untuk merancang antarmuka pengguna (UI) dan pengalaman pengguna (UX) dari sebuah produk digital, seperti aplikasi mobile, website, atau perangkat lunak."),
        ],
      ),
    );
  }
}

class DeskripsiOpsi2 extends StatelessWidget {
  const DeskripsiOpsi2({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 500,
      height: 200,
      padding: const EdgeInsets.all(15.0),
      decoration: BoxDecoration(
        border: Border.all(
          color: Colors.purple,
          width: 5,
        )
      ),
      child: Column(
        children: [
          const Text("Mobile Developer", style: TextStyle(fontWeight: FontWeight.bold),),
          const SizedBox(
            height: 15,
          ),
          const Text("Mobile Developer adalah seorang programmer yang memiliki keterampilan dan keahlian dalam pengembangan aplikasi mobile, baik untuk platform iOS maupun Android. Mereka bertanggung jawab untuk merancang, mengembangkan, dan memelihara aplikasi mobile, serta memastikan bahwa aplikasi tersebut dapat berfungsi dengan baik dan sesuai dengan kebutuhan bisnis atau organisasi.")
        ],
      ),
    );
  }
}

class DeskripsiOpsi3 extends StatelessWidget {
  const DeskripsiOpsi3({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 500,
      height: 200,
      padding: EdgeInsets.all(15.0),
      decoration: BoxDecoration(
        border: Border.all(
          color: Colors.purple,
          width: 5,
        )
      ),
      child: Column(
        children: [
          const Text("Full Stack Developer", style: TextStyle(fontWeight: FontWeight.bold),),
          const SizedBox(
            height: 15,
          ),
          const Text("Full Stack Developer adalah seorang programmer yang memiliki pengetahuan dan keterampilan dalam pengembangan perangkat lunak dari awal hingga akhir. Mereka memiliki pemahaman yang mendalam tentang teknologi dan bahasa pemrograman yang digunakan baik pada bagian depan (front-end) maupun bagian belakang (back-end) dari aplikasi web."), 
        ],
      ),
    );
  }
}