package com.change.mvvmbasic

import io.flutter.embedding.android.FlutterActivity
import io.flutter.embedding.engine.FlutterEngine
import io.flutter.plugin.common.MethodCall
import io.flutter.plugin.common.MethodChannel

class MainActivity: FlutterActivity() {
    private val channel = "your_channel_name"
    override fun configureFlutterEngine(flutterEngine: FlutterEngine) {
        MethodChannel(flutterEngine.dartExecutor.binaryMessenger, channel)
            .setMethodCallHandler { call: MethodCall,result:MethodChannel.Result ->
                if (call.method == "nativeMethod") {
                    // Call your native Android method here
                    // For example: nativeMethodImplementation()
                    result.success("null")
                } else {
                    result.notImplemented()
                }
            }
    }
}
