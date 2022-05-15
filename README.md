<!-- # body_calc

A new Flutter project.

## Getting Started

This project is a starting point for a Flutter application.

A few resources to get you started if this is your first Flutter project:

- [Lab: Write your first Flutter app](https://flutter.dev/docs/get-started/codelab)
- [Cookbook: Useful Flutter samples](https://flutter.dev/docs/cookbook)

For help getting started with Flutter, view our
[online documentation](https://flutter.dev/docs), which offers tutorials,
samples, guidance on mobile development, and a full API reference. -->

> # BODY CALC

> ## The Project:

This app calculates the user's BMI and provides a table of BMI measurements.<br>
Application developed to improve and study flutter.

* Figma (prototype):

![figma](https://user-images.githubusercontent.com/59848966/160187066-aa3f04dd-3d1b-4598-9f92-42b25352114c.svg)

* Result:

![result](https://user-images.githubusercontent.com/59848966/160186691-8bf8e3c7-2bb8-4438-a0b4-a24b749010e8.png)

> ## Features:

* MVC architecture;
* modular;
* modular for reactivity;
* i18n (internacionalization) en_US/pt_BR;
* Numeric keyboard to type in the app;
* launch icon;
* launch name;
* Test on "PersonModel";

> ## Arch:

    root
    └─ lib
    ....├─ i18n
    ........├─ en_US.json
    ........└─ pt_BR.json
    ....├─ modules
    ........└─ home
    ............├─ controllers
    ................└─ home_controller.dart
    ............├─ models
    ................└─ person_model.dart
    ............├─ pages
    ................└─ home_page.dart
    ............└─ home_module.dart
    ....├─ shared
    ........├─ core
    ........├─ helpers
    ........└─ widgets
    ....├─ app_module.dart
    ....├─ app_widget.dart
    ....└─ main.dart

> ## Dependencies:

Flutter version: 2.5.2;<br>
Packages:

    flutter_modular: ^5.0.2
    flutter_svg: ^1.0.3
    flutter_localizations: 
        sdk: flutter
    localization: ^2.1.0

> ## Framework and Tools:

* figma;
* vs code;
* flutter & dart;
* android emulator;

## Licença:

    MIT License

    Copyright (c) 2022 Matheus Ferreira

    Permission is hereby granted, free of charge, to any person obtaining a copy
    of this software and associated documentation files (the "Software"), to deal
    in the Software without restriction, including without limitation the rights
    to use, copy, modify, merge, publish, distribute, sublicense, and/or sell
    copies of the Software, and to permit persons to whom the Software is
    furnished to do so, subject to the following conditions:

    The above copyright notice and this permission notice shall be included in all
    copies or substantial portions of the Software.

    THE SOFTWARE IS PROVIDED "AS IS", WITHOUT WARRANTY OF ANY KIND, EXPRESS OR
    IMPLIED, INCLUDING BUT NOT LIMITED TO THE WARRANTIES OF MERCHANTABILITY,
    FITNESS FOR A PARTICULAR PURPOSE AND NONINFRINGEMENT. IN NO EVENT SHALL THE
    AUTHORS OR COPYRIGHT HOLDERS BE LIABLE FOR ANY CLAIM, DAMAGES OR OTHER
    LIABILITY, WHETHER IN AN ACTION OF CONTRACT, TORT OR OTHERWISE, ARISING FROM,
    OUT OF OR IN CONNECTION WITH THE SOFTWARE OR THE USE OR OTHER DEALINGS IN THE
    SOFTWARE.
