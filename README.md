<!--
This README describes the package. If you publish this package to pub.dev,
this README's contents appear on the landing page for your package.

For information about how to write a good package README, see the guide for
[writing package pages](https://dart.dev/guides/libraries/writing-package-pages).

For general information about developing packages, see the Dart guide for
[creating packages](https://dart.dev/guides/libraries/create-library-packages)
and the Flutter guide for
[developing packages and plugins](https://flutter.dev/developing-packages).
-->

This is a very simple and useful button widget, you can use this button for any purpose, have a good rest

## Features

![](https://github.com/Umidjon-18/hope_button/blob/main/example/example_project/assets/sample.gif)


```dart
class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key, required this.title});

  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(widget.title),
      ),
      body: Center(
        child: HopeButton(
          width: 250,
          height: 70,
          onTap: () {
            print("Tapped");
          },
          title: const Text(
            "Test Button",
            style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
          ),
          borderGradient: const LinearGradient(
            colors: [
              Colors.blue,
              Colors.red,
              Colors.green,
              Colors.yellow,
            ],
          ),
          borderWidth: 5,
          borderRadius: 10,
        ),
      ),
    );
  }
}
```

## Additional information
These properties are available 
```dart
HopeButton({
    super.key,
    required this.width,
    required this.height,
    required this.onTap,
    required this.title,
    this.bgColor = Colors.white,
    this.borderColor,
    this.borderGradient,
    this.borderRadius = 0,
    this.borderWidth = 0,
    this.childrenAlignment = MainAxisAlignment.spaceEvenly,
    this.leading,
    this.margin = EdgeInsets.zero,
    this.padding = EdgeInsets.zero,
    this.trailing,
  });
```
