import 'package:flutter/material.dart';
import 'package:totem/components/custom_button.dart';

class ScreenPage extends StatelessWidget {
  const ScreenPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      //Cor de fundo da tela
      backgroundColor: Colors.grey.shade200,

      body: Padding(
        padding: const EdgeInsets.all(40.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Image.asset(
              "assets/images/logo.png",
              fit: BoxFit.cover,
              height: 60,
            ),
            Padding(
              padding: const EdgeInsets.only(top: 30),
              child: Divider(color: Colors.grey, thickness: 1),
            ),
            Padding(
              padding: const EdgeInsets.only(top: 30),
              child: Text(
                'Opções',
                style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
              ),
            ),
            Padding(padding: EdgeInsetsGeometry.only(top: 30)),

            // Botoes da opçoes
            SingleChildScrollView(
              scrollDirection: Axis.horizontal,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  CustomButton(
                    name: 'Inicia \nVenda',
                    icon: Icons.shopping_cart,
                    color: Colors.greenAccent,
                  ),
                  SizedBox(width: 10),
                  CustomButton(
                    name: 'Consulta \nProduto',
                    icon: Icons.manage_search,
                    color: Colors.indigo,
                  ),
                  SizedBox(width: 10),
                  CustomButton(
                    name: 'Reabastece',
                    icon: Icons.arrow_circle_up,
                    color: Colors.green,
                  ),
                  SizedBox(width: 10),
                  CustomButton(
                    name: 'Retirada',
                    icon: Icons.arrow_circle_down,
                    color: Colors.red,
                  ),
                  SizedBox(width: 10),
                  CustomButton(
                    name: 'Saida \nOperador',
                    icon: Icons.person_remove,
                    color: Colors.orange,
                  ),
                  SizedBox(width: 10),
                  CustomButton(
                    name: 'Reimprime \nTEF',
                    icon: Icons.print,
                    color: Colors.blue.shade300,
                  ),
                  SizedBox(width: 10),
                  CustomButton(
                    name: 'Cancela \nTEF',
                    icon: Icons.highlight_off,
                    color: Colors.redAccent,
                  ),
                  SizedBox(width: 10),
                  CustomButton(
                    name: 'Auto \nServiço',
                    icon: Icons.touch_app,
                    color: Colors.teal,
                  ),
                ],
              ),
            ),

            SizedBox(
              height: 200,
              child: Divider(color: Colors.grey, thickness: 1),
            ),

            Expanded(
              child: Align(
                alignment: Alignment.topRight,
                child: Column(
                  mainAxisSize: MainAxisSize.min,
                  crossAxisAlignment: CrossAxisAlignment.end,
                  children: [
                    Stack(
                      children: [
                        Container(
                          height: MediaQuery.of(context).size.height * 0.40,
                          width: MediaQuery.of(context).size.height * 0.30,
                          decoration: BoxDecoration(
                            color: Colors.grey.shade300,
                            borderRadius: BorderRadius.circular(8),
                            border: Border.all(
                              width: 1,
                              color: Colors.grey.shade400,
                            ),
                          ),
                        ),
                        Positioned(
                          bottom: 0,
                          left: 0,
                          child: Container(
                            width: MediaQuery.of(context).size.width * 0.55,
                            height: 100,
                            color: const Color.fromARGB(255, 216, 216, 216),
                            child: const Center(
                              child: Padding(
                                padding: EdgeInsets.all(8.0),
                                child: Text(
                                  'IDENTIFICA CLIENTE \n 1- CPE 3-CNPJ 0-SAI',
                                  textAlign: TextAlign.center,
                                  style: TextStyle(
                                    height: 2,
                                    color: Colors.green,
                                  ),
                                ),
                              ),
                            ),
                          ),
                        ),
                      ],
                    ),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
