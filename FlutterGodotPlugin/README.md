 
# Flutter Godot Plugin 
 
This plugin integrates Godot games into Flutter apps for iOS using SwiftGodot. 
 
## Features 
- Real-time communication between Flutter and Godot. 
- Resizable Godot widget. 
- Uses SwiftGodot and XCFramework for iOS integration. 
 
## Installation 
1. Add the plugin to your `pubspec.yaml`: 
   ```yaml 
   dependencies: 
     flutter_godot_plugin: 
       path: ./FlutterGodotPlugin 
   ``` 
 
2. Add the Godot XCFramework to your iOS project. 
 
3. Use the plugin in your Flutter app: 
   ```dart 
   import 'package:flutter_godot_plugin/flutter_godot_widget.dart'; 
 
   class MyApp extends StatelessWidget { 
     @override 
     Widget build(BuildContext context) { 
       return MaterialApp( 
         home: Scaffold( 
           body: GodotWidget(), 
         ), 
       ); 
     } 
   } 
   ``` 
 
## Example 
Check out the `example/` folder for a complete Flutter app demonstrating how to use this plugin. 
