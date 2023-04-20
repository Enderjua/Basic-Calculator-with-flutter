import 'package:calculator/backends/transactions.dart'
    show addition, division, multiplication, subtraction;
import 'package:calculator/component/buttons.dart';
import 'package:flutter/material.dart';

class Calculator extends StatefulWidget {
  const Calculator({super.key});

  @override
  State<Calculator> createState() => _CalculatorState();
}

class _CalculatorState extends State<Calculator> {
  int oneNumber = 0;
  int twoNumber = 0;
  int oneSonuc = 0;
  int sonuc = 0;
  String? number;
  String? number2;
  bool add = false;
  bool sub = false;
  bool div = false;
  bool mult = false;
  bool twoNum = false;
  bool equals = false;
  double large = double.infinity / 6;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color.fromRGBO(24, 24, 24, 100),
      // ignore: avoid_unnecessary_containers
      body: Container(
        child: Column(
          children: [
            Flexible(
              flex: 10,
              child: Container(),
            ),
            Align(
              alignment: Alignment.topRight,
              child: Padding(
                padding: const EdgeInsets.only(right: 8.0),
                child: Text(
                  equals == false
                      ? twoNum == false
                          ? oneNumber.toString()
                          : twoNumber.toString()
                      : sonuc.toString(),
                  style: const TextStyle(
                    fontFamily: 'Avenir',
                    fontSize: 100,
                    fontWeight: FontWeight.bold,
                    color: Colors.white,
                  ),
                ),
              ),
            ),
            Divider(
              height: 20,
              thickness: 4,
              color: Color.fromRGBO(44, 44, 44, 100),
            ),
            const SizedBox(
              height: 10,
            ),
            Column(
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    buildButton('1', context, () {
                      if (!equals) {
                        if (!twoNum) {
                          setState(() {
                            number = oneNumber
                                .toString(); // int'ten String'e dönüşüm
                            oneNumber = int.parse(
                                '${number!}1'); // String'i int'e dönüştür ve 1 ekle
                          });
                        } else {
                          setState(() {
                            number2 = twoNumber
                                .toString(); // int'ten String'e dönüşüm
                            twoNumber = int.parse(
                                '${number2!}1'); // String'i int'e dönüştür ve 1 ekle
                          });
                        }
                      } else {
                        setState(() {
                          equals = false;
                          if (!twoNum) {
                            setState(() {
                              number = oneNumber
                                  .toString(); // int'ten String'e dönüşüm
                              oneNumber = int.parse(
                                  '${number!}1'); // String'i int'e dönüştür ve 1 ekle
                            });
                          } else {
                            setState(() {
                              number2 = twoNumber
                                  .toString(); // int'ten String'e dönüşüm
                              twoNumber = int.parse(
                                  '${number2!}1'); // String'i int'e dönüştür ve 1 ekle
                            });
                          }
                        });
                      }
                    }),
                    buildButton('2', context, () {
                      if (!equals) {
                        if (!twoNum) {
                          setState(() {
                            number = oneNumber
                                .toString(); // int'ten String'e dönüşüm
                            oneNumber = int.parse(
                                '${number!}2'); // String'i int'e dönüştür ve 1 ekle
                          });
                        } else {
                          setState(() {
                            number2 = twoNumber
                                .toString(); // int'ten String'e dönüşüm
                            twoNumber = int.parse(
                                '${number2!}2'); // String'i int'e dönüştür ve 1 ekle
                          });
                        }
                      } else {
                        setState(() {
                          equals = false;
                          if (!twoNum) {
                            setState(() {
                              number = oneNumber
                                  .toString(); // int'ten String'e dönüşüm
                              oneNumber = int.parse(
                                  '${number!}2'); // String'i int'e dönüştür ve 1 ekle
                            });
                          } else {
                            setState(() {
                              number2 = twoNumber
                                  .toString(); // int'ten String'e dönüşüm
                              twoNumber = int.parse(
                                  '${number2!}2'); // String'i int'e dönüştür ve 1 ekle
                            });
                          }
                        });
                      }
                    }),
                    buildButton('AC', context, () {
                      setState(() {
                        sonuc = 0;
                        oneNumber = 0;
                        twoNumber = 0;
                        add = false;
                        div = false;
                        mult = false;
                        sub = false;
                        twoNum = false;
                        equals = false;
                        oneSonuc = 0;
                      });
                    }, colors: false),
                  ],
                ),
                const SizedBox(
                  height: 20,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    buildButton('3', context, () {
                      if (!equals) {
                        if (!twoNum) {
                          setState(() {
                            number = oneNumber
                                .toString(); // int'ten String'e dönüşüm
                            oneNumber = int.parse(
                                '${number!}3'); // String'i int'e dönüştür ve 1 ekle
                          });
                        } else {
                          setState(() {
                            number2 = twoNumber
                                .toString(); // int'ten String'e dönüşüm
                            twoNumber = int.parse(
                                '${number2!}3'); // String'i int'e dönüştür ve 1 ekle
                          });
                        }
                      } else {
                        setState(() {
                          equals = false;
                          if (!twoNum) {
                            setState(() {
                              number = oneNumber
                                  .toString(); // int'ten String'e dönüşüm
                              oneNumber = int.parse(
                                  '${number!}3'); // String'i int'e dönüştür ve 1 ekle
                            });
                          } else {
                            setState(() {
                              number2 = twoNumber
                                  .toString(); // int'ten String'e dönüşüm
                              twoNumber = int.parse(
                                  '${number2!}3'); // String'i int'e dönüştür ve 1 ekle
                            });
                          }
                        });
                      }
                    }),
                    buildButton('4', context, () {
                      if (!equals) {
                        if (!twoNum) {
                          setState(() {
                            number = oneNumber
                                .toString(); // int'ten String'e dönüşüm
                            oneNumber = int.parse(
                                '${number!}4'); // String'i int'e dönüştür ve 1 ekle
                          });
                        } else {
                          setState(() {
                            number2 = twoNumber
                                .toString(); // int'ten String'e dönüşüm
                            twoNumber = int.parse(
                                '${number2!}4'); // String'i int'e dönüştür ve 1 ekle
                          });
                        }
                      } else {
                        setState(() {
                          equals = false;
                          if (!twoNum) {
                            setState(() {
                              number = oneNumber
                                  .toString(); // int'ten String'e dönüşüm
                              oneNumber = int.parse(
                                  '${number!}4'); // String'i int'e dönüştür ve 1 ekle
                            });
                          } else {
                            setState(() {
                              number2 = twoNumber
                                  .toString(); // int'ten String'e dönüşüm
                              twoNumber = int.parse(
                                  '${number2!}4'); // String'i int'e dönüştür ve 1 ekle
                            });
                          }
                        });
                      }
                    }),
                    buildButton('÷', context, () {
                      setState(() {
                        div = true;
                        twoNum = true;
                      });
                    }, colors: false),
                  ],
                ),
                const SizedBox(
                  height: 20,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    buildButton('5', context, () {
                      if (!equals) {
                        if (!twoNum) {
                          setState(() {
                            number = oneNumber
                                .toString(); // int'ten String'e dönüşüm
                            oneNumber = int.parse(
                                '${number!}5'); // String'i int'e dönüştür ve 1 ekle
                          });
                        } else {
                          setState(() {
                            number2 = twoNumber
                                .toString(); // int'ten String'e dönüşüm
                            twoNumber = int.parse(
                                '${number2!}5'); // String'i int'e dönüştür ve 1 ekle
                          });
                        }
                      } else {
                        setState(() {
                          equals = false;
                          if (!twoNum) {
                            setState(() {
                              number = oneNumber
                                  .toString(); // int'ten String'e dönüşüm
                              oneNumber = int.parse(
                                  '${number!}5'); // String'i int'e dönüştür ve 1 ekle
                            });
                          } else {
                            setState(() {
                              number2 = twoNumber
                                  .toString(); // int'ten String'e dönüşüm
                              twoNumber = int.parse(
                                  '${number2!}5'); // String'i int'e dönüştür ve 1 ekle
                            });
                          }
                        });
                      }
                    }),
                    buildButton('6', context, () {
                      if (!equals) {
                        if (!twoNum) {
                          setState(() {
                            number = oneNumber
                                .toString(); // int'ten String'e dönüşüm
                            oneNumber = int.parse(
                                '${number!}6'); // String'i int'e dönüştür ve 1 ekle
                          });
                        } else {
                          setState(() {
                            number2 = twoNumber
                                .toString(); // int'ten String'e dönüşüm
                            twoNumber = int.parse(
                                '${number2!}6'); // String'i int'e dönüştür ve 1 ekle
                          });
                        }
                      } else {
                        setState(() {
                          equals = false;
                          if (!twoNum) {
                            setState(() {
                              number = oneNumber
                                  .toString(); // int'ten String'e dönüşüm
                              oneNumber = int.parse(
                                  '${number!}6'); // String'i int'e dönüştür ve 1 ekle
                            });
                          } else {
                            setState(() {
                              number2 = twoNumber
                                  .toString(); // int'ten String'e dönüşüm
                              twoNumber = int.parse(
                                  '${number2!}6'); // String'i int'e dönüştür ve 1 ekle
                            });
                          }
                        });
                      }
                    }),
                    buildButton('X', context, () {
                      mult = true;
                      twoNum = true;
                    }, colors: false),
                  ],
                ),
                const SizedBox(
                  height: 20,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    buildButton('7', context, () {
                      if (!equals) {
                        if (!twoNum) {
                          setState(() {
                            number = oneNumber
                                .toString(); // int'ten String'e dönüşüm
                            oneNumber = int.parse(
                                '${number!}2'); // String'i int'e dönüştür ve 1 ekle
                          });
                        } else {
                          setState(() {
                            number2 = twoNumber
                                .toString(); // int'ten String'e dönüşüm
                            twoNumber = int.parse(
                                '${number2!}7'); // String'i int'e dönüştür ve 1 ekle
                          });
                        }
                      } else {
                        setState(() {
                          equals = false;
                          if (!twoNum) {
                            setState(() {
                              number = oneNumber
                                  .toString(); // int'ten String'e dönüşüm
                              oneNumber = int.parse(
                                  '${number!}2'); // String'i int'e dönüştür ve 1 ekle
                            });
                          } else {
                            setState(() {
                              number2 = twoNumber
                                  .toString(); // int'ten String'e dönüşüm
                              twoNumber = int.parse(
                                  '${number2!}7'); // String'i int'e dönüştür ve 1 ekle
                            });
                          }
                        });
                      }
                    }),
                    buildButton('8', context, () {
                      if (!equals) {
                        if (!twoNum) {
                          setState(() {
                            number = oneNumber
                                .toString(); // int'ten String'e dönüşüm
                            oneNumber = int.parse(
                                '${number!}8'); // String'i int'e dönüştür ve 1 ekle
                          });
                        } else {
                          setState(() {
                            number2 = twoNumber
                                .toString(); // int'ten String'e dönüşüm
                            twoNumber = int.parse(
                                '${number2!}8'); // String'i int'e dönüştür ve 1 ekle
                          });
                        }
                      } else {
                        setState(() {
                          equals = false;
                          if (!twoNum) {
                            setState(() {
                              number = oneNumber
                                  .toString(); // int'ten String'e dönüşüm
                              oneNumber = int.parse(
                                  '${number!}8'); // String'i int'e dönüştür ve 1 ekle
                            });
                          } else {
                            setState(() {
                              number2 = twoNumber
                                  .toString(); // int'ten String'e dönüşüm
                              twoNumber = int.parse(
                                  '${number2!}8'); // String'i int'e dönüştür ve 1 ekle
                            });
                          }
                        });
                      }
                    }),
                    buildButton('-', context, () {
                      sub = true;
                      twoNum = true;
                    }, colors: false),
                  ],
                ),
                const SizedBox(
                  height: 20,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    buildButton('9', context, () {
                      if (!equals) {
                        if (!twoNum) {
                          setState(() {
                            number = oneNumber
                                .toString(); // int'ten String'e dönüşüm
                            oneNumber = int.parse(
                                '${number!}9'); // String'i int'e dönüştür ve 1 ekle
                          });
                        } else {
                          setState(() {
                            number2 = twoNumber
                                .toString(); // int'ten String'e dönüşüm
                            twoNumber = int.parse(
                                '${number2!}9'); // String'i int'e dönüştür ve 1 ekle
                          });
                        }
                      } else {
                        equals = false;
                        if (!twoNum) {
                          setState(() {
                            number = oneNumber
                                .toString(); // int'ten String'e dönüşüm
                            oneNumber = int.parse(
                                '${number!}9'); // String'i int'e dönüştür ve 1 ekle
                          });
                        } else {
                          setState(() {
                            number2 = twoNumber
                                .toString(); // int'ten String'e dönüşüm
                            twoNumber = int.parse(
                                '${number2!}9'); // String'i int'e dönüştür ve 1 ekle
                          });
                        }
                      }
                    }),
                    buildButton('0', context, () {
                      if (!equals) {
                        if (!twoNum) {
                          setState(() {
                            number = oneNumber
                                .toString(); // int'ten String'e dönüşüm
                            oneNumber = int.parse(
                                '${number!}0'); // String'i int'e dönüştür ve 1 ekle
                          });
                        } else {
                          setState(() {
                            number2 = twoNumber
                                .toString(); // int'ten String'e dönüşüm
                            twoNumber = int.parse(
                                '${number2!}0'); // String'i int'e dönüştür ve 1 ekle
                          });
                        }
                      } else {
                        setState(() {
                          equals = false;
                          if (!twoNum) {
                            setState(() {
                              number = oneNumber
                                  .toString(); // int'ten String'e dönüşüm
                              oneNumber = int.parse(
                                  '${number!}0'); // String'i int'e dönüştür ve 1 ekle
                            });
                          } else {
                            setState(() {
                              number2 = twoNumber
                                  .toString(); // int'ten String'e dönüşüm
                              twoNumber = int.parse(
                                  '${number2!}0'); // String'i int'e dönüştür ve 1 ekle
                            });
                          }
                        });
                      }
                    }),
                    buildButton('+', context, () {
                      add = true;
                      twoNum = true;
                    }, colors: false),
                  ],
                ),
                const SizedBox(
                  height: 20,
                ),
                buildButton('=', context, () {
                  setState(() {
                    // setState içinde değişkenleri güncelle
                    equals = true;
                    if (add) {
                      sonuc = addition(oneNumber, twoNumber);
                      oneNumber = 0;
                      twoNumber = 0;
                      oneSonuc = 0;
                      add = false;
                      twoNum = false;
                    } else if (sub) {
                      sonuc = subtraction(oneNumber, twoNumber);
                      oneNumber = 0;
                      twoNumber = 0;
                      oneSonuc = 0;
                      add = false;
                      div = false;
                      mult = false;
                      sub = false;
                      twoNum = false;
                    } else if (div) {
                      sonuc = division(oneNumber, twoNumber);
                      oneNumber = 0;
                      twoNumber = 0;
                      oneSonuc = 0;
                      add = false;
                      div = false;
                      mult = false;
                      sub = false;
                      twoNum = false;
                    } else if (mult) {
                      sonuc = multiplication(oneNumber, twoNumber);
                      oneNumber = 0;
                      twoNumber = 0;
                      oneSonuc = 0;
                      add = false;
                      div = false;
                      mult = false;
                      sub = false;
                      twoNum = false;
                    }
                  });
                }, colors: false, large: false),
              ],
            ),
            Flexible(
              flex: 2,
              child: Container(),
            )
          ],
        ),
      ),
    );
  }
}
