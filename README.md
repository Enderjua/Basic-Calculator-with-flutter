# Calculator Mobile App

![CI/CD](https://github.com/dominicarrojado/hashtag-interactive-valentines-day-card-app/workflows/CI/CD/badge.svg) [![codecov](https://codecov.io/github/dominicarrojado/hashtag-interactive-valentines-day-card-app/branch/develop/graph/badge.svg?token=V5QRH2QTM4)](https://codecov.io/github/dominicarrojado/hashtag-interactive-valentines-day-card-app)

Very simple Calculator for beginners with [Flutter](https://flutter.dev/) + [Dart](https://www.dart.dev/).

## Description text

For people who are just starting out on this path, we have written a basic calculator, unlike other algorithms. We will explain the logic used one by one. Please contact us if you have any questions. Helping developers is a blessing to us.

## Photos for Application

<img src="/assets/photo/Screenshot_1682027365.png" alt="Default Screen" title="Default Screen">
Simple screenshot of this screen calculator.
<br>
<img src="/assets/photo/Screenshot_1682027380.png" alt="Default Screen" title="Default Screen">
<br> + <br>
<img src="/assets/photo/Screenshot_1682027385.png" alt="Default Screen" title="Default Screen">
<br> = <br>
<img src="/assets/photo/Screenshot_1682027387.png" alt="Default Screen" title="Default Screen">


## Quick Start

1. Install [Flutter](https://flutter.dev/).
2. Clone the app:

```bash
git clone https://github.com/Enderjua/valentine-mobile-app.git
```

3. Install dependencies:

```bash
cd valentine-mobile-app
flutter pub get
```

4. Run the development server:

```bash
flutter run -d web --web-port 3000
```

5. Open [http://localhost:3000](http://localhost:3000) to view it in the browser.

## Running with Mobile

```bash
flutter run -d emulator_id
```

## Running Tests (Debug)

```bash
flutter run --debug
```

## Things to Pay Attention to

1. Open `component/buttons.dart` and show me.

```dart
color: colors ? const Color(0xFFB4D8FB) : const Color(0xFF00C6AA)
// This is a code specified so that we can distinguish the buttons as numbers and functions (eg 1 and AC) by color. so we can make the color for the functional button by simply changing a bool expression instead of typing it at length
width: large
          ? MediaQuery.of(context).size.width / 3 - 15
          : MediaQuery.of(context).size.width - 20,
// This is used for the equals button, to set the size.
height: large ? 60 : 80,
// Same.
fontSize: large ? 30 : 60,
// Same.
```

2. Open `backends/transactions.dart` and show me.

```dart
int addition(int oneNumber, int twoNumber) {
  return oneNumber + twoNumber;
}
// This and others are functions for very simple addition/subtraction/division/multiplication. Can't even try basic darts
```

3. Open `screens/calculator.dart` and show me.

```dart
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
// The variable oneNumber represents the first number in the addition. twoNumber is the second number. oneResult is a variable created for debug, it doesn't matter. (in short, control result) the result variable represents the result of the operation. Let me explain the logic of the number and number 2 variables.
you click `1` buttons and oneNumber = 1
number = oneNumber.toString()
you click `5` buttons and oneNumber = 5
number = oneNumber.toString()
number = '1' + '5' = 15
oneNumber = number as String;
// That's the logic of the number variable. number2 is for the twoNumber version of the same logic.
add, sub, div, mult = false
// The boolean variables add,sub,div,mult represent: if you press the add button it will add = true and it will add. This also applies to other transactions.
twoNum = false
// Here's what the twoNum variable represents: if twoNum = false, every time the button is pressed, this oneNumber will be added (with the number, toString logic I explained earlier) whenever a functional button is pressed, twoNum = true and typing for twoNumber starts
equals = false
// this will be true when the = button is pressed and the result is written to the screen
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
// The logic of this code is: if the equals variable is false, ie the result is not desired, a check is made. this time twoNum is checked, you know that it is important for the transition from the first number (oneNumber) to the second number (twoNumber). if it is false oneNumber is written to the screen, if it is true twoNumber is written to the screen. if equals is true the result is written to the screen.
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
// I will explain the logic of this once because it is the same for all. In fact, if it wasn't a simple project, I could have done it in a much shorter way, but I found it necessary to do it, frankly, I did not want to waste time. here, if equals is false, twoNum is requested to be checked, if it is false, the logic I told you before works and the value for oneNumber is assigned. if twoNum = true this occurs for twoNumber and the value is assigned. if equals = true then setState will set equals = false and the same operations are repeated.

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
// Here everything changes to its default value. This is what is wanted. because you reset everything
buildButton('÷', context, () {
                      setState(() {
                        div = true;
                        twoNum = true;
                      });
                    }, colors: false),
// I will only give one explanation here. Here, the boolean expression specified above is set to true and action is taken accordingly.

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

// yes i realize it's a cleancode debacle. like I said, I didn't want to waste time on such a simple thing, and this is what it turned out to be. I hope you don't have any trouble understanding it! My aim is to give a code sample to beginners, albeit a bit. So maybe I can refine it later. Here, what operation is done is controlled by if blocks, if the value is true, its operation (addition, subtraction, division, multiplication) is performed and assigned to the result variable. then set twoNum = false, the reason is simple! transaction finished. twoNum = false has to be because we have finished the process. because if twoNum = true we cannot do a new operation, we are not allowed to assign the first number (oneNumber)
Flexible()
// Finally flexible. Flexible's purpose here is roughly to divide the pages into sections. We gave the value flex: 10 above and flex: 1. below, so the buttons are at the bottom, the other part (result text and line) is above.
Divider(
              height: 20,
              thickness: 4,
              color: Color.fromRGBO(44, 44, 44, 100),
            ),
// transparent line in the middle
Rows()
// Name is name. Rows. side by side.
Column()
// Same. Name is name. Column. one under the other
```

If you have any concerns or unclear places, please reach me out at enderjua@gmail.com! Wishing you happy returns, a year full of Science, Technology and Flutter! (of course with your loved one by your side.)


## VSCode Extensions

- [Flutter](https://marketplace.visualstudio.com/items?itemName=Dart-Code.flutter)
- [Dart](https://marketplace.visualstudio.com/items?itemName=Dart-Code.dart-code)
