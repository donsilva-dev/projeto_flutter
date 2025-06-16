import 'package:flutter/material.dart';
import 'package:totem/components/custom_button.dart';
import 'package:totem/components/custom_keyboard.dart';

class ScreenPage extends StatefulWidget {
  const ScreenPage({super.key});

  @override
  State<ScreenPage> createState() => _ScreenPageState();
}

class _ScreenPageState extends State<ScreenPage> {
  void abrirModalSeCodigoFor198() {
    if (inputText == '198') {
      DateTime date = DateTime.now();
      String dataAtual =
          '${date.day.toString().padLeft(2, '0')}/${date.month.toString().padLeft(2, '0')}/${date.year}';
      String horaAtual =
          '${date.hour.toString().padLeft(2, '0')}:${date.minute.toString().padLeft(2, '0')}';
      setState(() {
        displayTitle = 'INFORMAÇÃO';
        inputText = '';
      });
      showDialog(
        context: context,
        builder: (context) => AlertDialog(
          title: SizedBox(
            height: 100,
            child: Text(
              textAlign: TextAlign.center,
              'INFORMAÇÃO',
              style: TextStyle(fontSize: 30, fontWeight: FontWeight.bold),
            ),
          ),

          content: Row(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                'VERSÃO DO PDV: 100.0.39fa \nVERSÃO VMIX: 1.0.04(C)\n'
                'DATA DA ABERTURA: $dataAtual \nNUMERO DA IMPRESSORA: 100\n'
                'HORA DA CPU: $horaAtual\n'
                'NSU VENDA: 10\\10'
                'OPERADOR: 999999\n'
                'TIPO SENHA OPERACIONAL: 0\n'
                'IP: 172.16.115.100\n'
                'LOJA: 13'
                'VERSÃO CLIENT NFCE: 3.86\n'
                'PDV NFCE\n'
                'PATH RED http:d\\VisualStore\\lj000031\n'
                'PATH GATEWAY http:d\\VisualStore\\lj000031\n'
                'GT CONTINUO: 0',
                style: TextStyle(fontSize: 25),
              ),
              SizedBox(width: 10),
              Text(
                'COMPILAÇÃO: 19/05/2025 15:30\n'
                'VERSÃO TEF: 3.17\n'
                'DATA DA IMPRESSORA 16/06/2025\n'
                'CLIENTE: VISUALMIX $dataAtual\n'
                'HORA DA IMPRESSORA $horaAtual\n'
                'NSU Fechado: 3/3\n'
                'GRUPO PADROA: 0/0\n'
                'TIPO ABRE SERIAL: 2\n'
                'MAC ADDRESS: \n'
                'VERSAO VMXSAT: 0',
                style: TextStyle(fontSize: 25),
              ),
            ],
          ),

          actions: [
            SizedBox(
              width: double.infinity,
              height: 50,
              child: ElevatedButton(
                style: ElevatedButton.styleFrom(
                  elevation: 0,
                  backgroundColor: Colors.blue,
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadiusGeometry.circular(10),
                    side: BorderSide(width: 1, color: Colors.blue),
                  ),
                ),

                onPressed: () {
                  Navigator.of(context).pop();
                  clearInput();
                },
                child: Text(
                  'FECHAR',
                  style: TextStyle(fontSize: 18, color: Colors.white),
                ),
              ),
            ),
          ],
        ),
      );

      setState(() {
        inputText = '';
      });
    }
  }

  String displayTitle = 'DISPONIVEL';

  String inputText = '';

  void onKeyboardTap(String value) {
    setState(() {
      inputText += value;
    });
  }

  void clearInput() {
    setState(() {
      displayTitle = 'DISPONIVEL';
      inputText = '';
    });
  }

  void deleteLastNumber() {
    setState(() {
      if (inputText.isNotEmpty) {
        inputText = inputText.substring(0, inputText.length - 1);
      }
    });
  }

  String dataAtual = '';
  String horaAtual = '';

  void atualizarDataHora() {
    DateTime date = DateTime.now();

    setState(() {
      dataAtual =
          '${date.day.toString().padLeft(2, '0')}/${date.month.toString().padLeft(2, '0')}/${date.year}';
      horaAtual =
          '${date.hour.toString().padLeft(2, '0')}:${date.minute.toString().padLeft(2, '0')}';
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      //Cor de fundo da tela
      backgroundColor: Colors.grey.shade200,
      bottomNavigationBar: Container(
        color: Colors.red,
        height: 50,
        width: double.infinity,
      ),
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

            // visualizador de produto
            Align(
              alignment: Alignment.topRight,
              child: Column(
                mainAxisSize: MainAxisSize.min,
                crossAxisAlignment: CrossAxisAlignment.end,
                children: [
                  Stack(
                    children: [
                      Container(
                        height: MediaQuery.of(context).size.height * 0.30,
                        width: MediaQuery.of(context).size.width * 0.53,
                        decoration: BoxDecoration(
                          color: Colors.grey.shade300,
                          borderRadius: BorderRadius.circular(10),
                          border: Border.all(width: 1, color: Colors.grey),
                        ),
                      ),
                      Positioned(
                        bottom: 0,
                        left: 0,
                        child: Container(
                          width: 571,

                          //width: MediaQuery.of(context).size.width * 0.6,
                          height: 100,
                          decoration: BoxDecoration(
                            color: Colors.white38,
                            //border: Border.all(color: Colors.grey),
                          ),

                          child: Center(
                            child: Text(
                              displayTitle,
                              textAlign: TextAlign.center,
                              style: TextStyle(
                                height: 2,
                                color: Colors.green,
                                fontSize: 24,
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
            SizedBox(height: 20),
            Align(
              alignment: Alignment.topRight,
              child: Row(
                //crossAxisAlignment: CrossAxisAlignment.end,
                mainAxisAlignment: MainAxisAlignment.end,
                children: [
                  Container(
                    width: MediaQuery.of(context).size.width * 0.43,
                    height: 80,
                    decoration: BoxDecoration(
                      color: Colors.white70,
                      borderRadius: BorderRadius.circular(10),
                      border: Border.all(width: 1, color: Colors.grey),
                    ),
                    child: Center(
                      child: Text(
                        inputText,
                        textAlign: TextAlign.center,
                        style: TextStyle(color: Colors.black, fontSize: 30),
                      ),
                    ),
                  ),
                  SizedBox(width: 10),
                  SizedBox(
                    height: 80,
                    width: 100,

                    child: ElevatedButton(
                      style: ElevatedButton.styleFrom(
                        elevation: 0,
                        shape: RoundedRectangleBorder(
                          side: BorderSide(width: 1, color: Colors.grey),
                          borderRadius: BorderRadius.all(Radius.circular(10)),
                        ),
                      ),
                      onPressed: deleteLastNumber,
                      child: Icon(Icons.backspace, color: Colors.red, size: 30),
                    ),
                  ),
                ],
              ),
            ),
            SizedBox(height: 20),
            Align(
              alignment: Alignment.topRight,
              child: Row(
                mainAxisSize: MainAxisSize.min,
                crossAxisAlignment: CrossAxisAlignment.end,
                mainAxisAlignment: MainAxisAlignment.end,
                children: [
                  Column(
                    children: [
                      Row(
                        children: [
                          CustomKeyboard(
                            buttonColor: Colors.red,
                            color: Colors.white,
                            name: 'Limpa',
                            onTap: clearInput,
                          ),
                          SizedBox(width: 5),
                          CustomKeyboard(
                            buttonColor: Colors.white,
                            color: Colors.black,
                            name: '7',
                            onTap: () => onKeyboardTap('7'),
                          ),
                          SizedBox(width: 5),
                          CustomKeyboard(
                            buttonColor: Colors.white,
                            color: Colors.black,
                            name: '8',
                            onTap: () => onKeyboardTap('8'),
                          ),
                          SizedBox(width: 5),
                          CustomKeyboard(
                            buttonColor: Colors.white,
                            color: Colors.black,
                            name: '9',
                            onTap: () => onKeyboardTap('9'),
                          ),
                        ],
                      ),
                      const SizedBox(height: 5),
                      Row(
                        children: [
                          CustomKeyboard(
                            buttonColor: Colors.purple,
                            color: Colors.white,
                            name: 'Total',
                          ),
                          SizedBox(width: 5),
                          CustomKeyboard(
                            buttonColor: Colors.white,
                            color: Colors.black,
                            name: '4',
                            onTap: () => onKeyboardTap('4'),
                          ),
                          SizedBox(width: 5),
                          CustomKeyboard(
                            buttonColor: Colors.white,
                            color: Colors.black,
                            name: '5',
                            onTap: () => onKeyboardTap('5'),
                          ),
                          SizedBox(width: 5),
                          CustomKeyboard(
                            buttonColor: Colors.white,
                            color: Colors.black,
                            name: '6',
                            onTap: () => onKeyboardTap('6'),
                          ),
                        ],
                      ),
                      const SizedBox(height: 5),
                      Row(
                        children: [
                          CustomKeyboard(
                            buttonColor: Colors.blue.shade900,
                            color: Colors.white,
                            name: 'Função',
                            onTap: abrirModalSeCodigoFor198,
                          ),
                          const SizedBox(width: 5),
                          CustomKeyboard(
                            buttonColor: Colors.white,
                            color: Colors.black,
                            name: '1',
                            onTap: () => onKeyboardTap('1'),
                          ),
                          const SizedBox(width: 5),
                          CustomKeyboard(
                            buttonColor: Colors.white,
                            color: Colors.black,
                            name: '2',
                            onTap: () => onKeyboardTap('2'),
                          ),
                          const SizedBox(width: 5),
                          CustomKeyboard(
                            buttonColor: Colors.white,
                            color: Colors.black,
                            name: '3',
                            onTap: () => onKeyboardTap('3'),
                          ),
                        ],
                      ),
                      SizedBox(height: 5),
                      Row(
                        children: [
                          CustomKeyboard(
                            buttonColor: Colors.white,
                            color: Colors.black,
                            name: 'x',
                          ),
                          SizedBox(width: 5),
                          CustomKeyboard(
                            buttonColor: Colors.white,
                            color: Colors.black,
                            name: '.',
                            onTap: () => onKeyboardTap('.'),
                          ),
                          SizedBox(width: 5),
                          CustomKeyboard(
                            buttonColor: Colors.white,
                            color: Colors.black,
                            name: '0',
                            onTap: () => onKeyboardTap('0'),
                          ),
                          SizedBox(width: 5),
                          CustomKeyboard(
                            buttonColor: Colors.white,
                            color: Colors.black,
                            name: '00',
                            onTap: () => onKeyboardTap('00'),
                          ),
                        ],
                      ),
                    ],
                  ),
                  const SizedBox(width: 8),
                  Column(
                    children: [
                      SizedBox(
                        width: 100,
                        height: 233,
                        child: ElevatedButton(
                          style: ElevatedButton.styleFrom(
                            backgroundColor: Colors.orange,
                            shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(20),
                              side: BorderSide(width: 1, color: Colors.orange),
                            ),
                          ),
                          onPressed: () {},
                          child: Text(
                            'Voltar',
                            style: TextStyle(
                              fontSize: 16,
                              color: Colors.white,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                        ),
                      ),

                      SizedBox(height: 8),
                      SizedBox(
                        width: 100,
                        height: 250,
                        child: ElevatedButton(
                          style: ElevatedButton.styleFrom(
                            backgroundColor: Colors.green.shade800,
                            shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(20),
                              side: BorderSide(width: 1, color: Colors.green),
                            ),
                          ),
                          onPressed: () {},
                          child: Text(
                            'Enter',
                            style: TextStyle(
                              fontSize: 16,
                              color: Colors.white,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                        ),
                      ),
                    ],
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
