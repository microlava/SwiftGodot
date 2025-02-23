 
import 'package:flutter/material.dart'; 
import 'package:flutter/services.dart'; 
 
class GodotWidget extends StatelessWidget { 
  @override 
  Widget build(BuildContext context) { 
    return SizedBox( 
      width: 300, 
      height: 300, 
      child: PlatformViewLink( 
        viewType: 'godot_view', 
        surfaceFactory: (context, controller) { 
          return AndroidViewSurface( 
            controller: controller as AndroidViewController, 
            hitTestBehavior: PlatformViewHitTestBehavior.opaque, 
          ); 
        }, 
        onCreatePlatformView: (params) { 
          return PlatformViewsService.initSurfaceAndroidView( 
            id: params.id, 
            viewType: 'godot_view', 
            layoutDirection: TextDirection.ltr, 
            creationParams: {}, 
            creationParamsCodec: StandardMessageCodec(), 
          ) 
            ..addOnPlatformViewCreatedListener(params.onPlatformViewCreated) 
            ..create(); 
        }, 
      ), 
    ); 
  } 
} 
