# CONTEXTO COMPLETO DEL PROYECTO

Generado automáticamente por export_context_flutter.dart


# ANÁLISIS DE ARQUITECTURA

## ACIERTOS

✅ Feature "auth" contiene data/domain/presentation.
✅ Feature "electoral" contiene data/domain/presentation.


# ESTRUCTURA DEL PROYECTO

📄 .flutter-plugins-dependencies
📄 .gitignore
📄 .metadata
📄 README.md
📄 analysis_options.yaml
📁 android
    📄 .gitignore
    📁 app
        📄 build.gradle.kts
        📁 src
            📁 debug
                📄 AndroidManifest.xml
            📁 main
                📄 AndroidManifest.xml
                📁 java
                    📁 io
                        📁 flutter
                            📁 plugins
                                📄 GeneratedPluginRegistrant.java
                📁 kotlin
                    📁 com
                        📁 example
                            📁 examenb2
                                📄 MainActivity.kt
                📁 res
                    📁 drawable
                        📄 launch_background.xml
                    📁 drawable-v21
                        📄 launch_background.xml
                    📁 mipmap-hdpi
                        📄 ic_launcher.png
                    📁 mipmap-mdpi
                        📄 ic_launcher.png
                    📁 mipmap-xhdpi
                        📄 ic_launcher.png
                    📁 mipmap-xxhdpi
                        📄 ic_launcher.png
                    📁 mipmap-xxxhdpi
                        📄 ic_launcher.png
                    📁 values
                        📄 styles.xml
                    📁 values-night
                        📄 styles.xml
            📁 profile
                📄 AndroidManifest.xml
    📄 build.gradle.kts
    📁 gradle
        📁 wrapper
            📄 gradle-wrapper.jar
            📄 gradle-wrapper.properties
    📄 gradle.properties
    📄 gradlew
    📄 gradlew.bat
    📄 local.properties
    📄 settings.gradle.kts
📁 assets
📁 ios
    📄 .gitignore
    📁 Flutter
        📄 AppFrameworkInfo.plist
        📄 Debug.xcconfig
        📄 Generated.xcconfig
        📄 Release.xcconfig
        📁 ephemeral
            📁 Packages
                📁 FlutterGeneratedPluginSwiftPackage
                    📄 Package.swift
                    📁 Sources
                        📁 FlutterGeneratedPluginSwiftPackage
                            📄 FlutterGeneratedPluginSwiftPackage.swift
            📄 flutter_lldb_helper.py
            📄 flutter_lldbinit
        📄 flutter_export_environment.sh
    📁 Runner
        📄 AppDelegate.swift
        📁 Assets.xcassets
            📁 AppIcon.appiconset
                📄 Contents.json
                📄 Icon-App-1024x1024@1x.png
                📄 Icon-App-20x20@1x.png
                📄 Icon-App-20x20@2x.png
                📄 Icon-App-20x20@3x.png
                📄 Icon-App-29x29@1x.png
                📄 Icon-App-29x29@2x.png
                📄 Icon-App-29x29@3x.png
                📄 Icon-App-40x40@1x.png
                📄 Icon-App-40x40@2x.png
                📄 Icon-App-40x40@3x.png
                📄 Icon-App-60x60@2x.png
                📄 Icon-App-60x60@3x.png
                📄 Icon-App-76x76@1x.png
                📄 Icon-App-76x76@2x.png
                📄 Icon-App-83.5x83.5@2x.png
            📁 LaunchImage.imageset
                📄 Contents.json
                📄 LaunchImage.png
                📄 LaunchImage@2x.png
                📄 LaunchImage@3x.png
                📄 README.md
        📁 Base.lproj
            📄 LaunchScreen.storyboard
            📄 Main.storyboard
        📄 GeneratedPluginRegistrant.h
        📄 GeneratedPluginRegistrant.m
        📄 Info.plist
        📄 Runner-Bridging-Header.h
        📄 SceneDelegate.swift
    📁 Runner.xcodeproj
        📄 project.pbxproj
        📁 project.xcworkspace
            📄 contents.xcworkspacedata
            📁 xcshareddata
                📄 IDEWorkspaceChecks.plist
                📄 WorkspaceSettings.xcsettings
        📁 xcshareddata
            📁 xcschemes
                📄 Runner.xcscheme
    📁 Runner.xcworkspace
        📄 contents.xcworkspacedata
        📁 xcshareddata
            📄 IDEWorkspaceChecks.plist
            📄 WorkspaceSettings.xcsettings
    📁 RunnerTests
        📄 RunnerTests.swift
📁 lib
    📁 core
        📄 appwrite_client.dart
        📄 appwrite_constants.dart
        📄 appwrite_service.dart
    📁 features
        📁 auth
            📁 data
                📄 auth_datasource.dart
                📄 auth_repository_impl.dart
            📁 domain
                📄 auth_repository.dart
                📄 usuario.dart
            📁 presentation
                📄 auth_controller.dart
                📄 cambiar_password_screen.dart
                📄 login_screen.dart
                📄 recuperar_password_screen.dart
        📁 electoral
            📁 data
                📁 datasources
                    📄 appwrite_datasource.dart
                📁 models
                    📄 models.dart
                📁 repositories
                📁 services
                    📄 blur_detection_service.dart
            📁 domain
                📁 entities
                    📄 acta_escrutinio.dart
                    📄 mesa_electoral.dart
                    📄 recinto.dart
                    📄 usuario_rol.dart
                    📄 veedor_electoral.dart
                    📄 voto_candidato.dart
                📁 repositories
                    📄 electoral_repository.dart
                    📄 electoral_repository_impl.dart
                📁 usecases
                    📄 get_mesas.dart
            📁 presentation
                📁 controllers
                    📄 electoral_controller.dart
                📁 screens
                    📄 acta_form_screen.dart
                    📄 home_screen.dart
                    📄 panel_coordinador_screen.dart
                    📄 panel_provincial_screen.dart
                    📄 panel_veedor_screen.dart
    📄 main.dart
📄 pubspec.yaml
📁 test
    📄 widget_test.dart


# CONTENIDO DE LOS ARCHIVOS

          
================================================
📄 ARCHIVO: .flutter-plugins-dependencies
================================================

{"info":"This is a generated file; do not edit or check into version control.","plugins":{"ios":[{"name":"camera_avfoundation","path":"C:\\\\Users\\\\APP MOVILES\\\\AppData\\\\Local\\\\Pub\\\\Cache\\\\hosted\\\\pub.dev\\\\camera_avfoundation-0.9.23+2\\\\","native_build":true,"dependencies":[],"dev_dependency":false},{"name":"device_info_plus","path":"C:\\\\Users\\\\APP MOVILES\\\\AppData\\\\Local\\\\Pub\\\\Cache\\\\hosted\\\\pub.dev\\\\device_info_plus-12.4.0\\\\","native_build":true,"dependencies":[],"dev_dependency":false},{"name":"flutter_web_auth_2","path":"C:\\\\Users\\\\APP MOVILES\\\\AppData\\\\Local\\\\Pub\\\\Cache\\\\hosted\\\\pub.dev\\\\flutter_web_auth_2-5.0.3\\\\","native_build":true,"dependencies":[],"dev_dependency":false},{"name":"geolocator_apple","path":"C:\\\\Users\\\\APP MOVILES\\\\AppData\\\\Local\\\\Pub\\\\Cache\\\\hosted\\\\pub.dev\\\\geolocator_apple-2.3.14\\\\","shared_darwin_source":true,"native_build":true,"dependencies":[],"dev_dependency":false},{"name":"image_picker_ios","path":"C:\\\\Users\\\\APP MOVILES\\\\AppData\\\\Local\\\\Pub\\\\Cache\\\\hosted\\\\pub.dev\\\\image_picker_ios-0.8.13+6\\\\","native_build":true,"dependencies":[],"dev_dependency":false},{"name":"package_info_plus","path":"C:\\\\Users\\\\APP MOVILES\\\\AppData\\\\Local\\\\Pub\\\\Cache\\\\hosted\\\\pub.dev\\\\package_info_plus-9.0.1\\\\","native_build":true,"dependencies":[],"dev_dependency":false},{"name":"path_provider_foundation","path":"C:\\\\Users\\\\APP MOVILES\\\\AppData\\\\Local\\\\Pub\\\\Cache\\\\hosted\\\\pub.dev\\\\path_provider_foundation-2.6.0\\\\","native_build":false,"dependencies":[],"dev_dependency":false},{"name":"permission_handler_apple","path":"C:\\\\Users\\\\APP MOVILES\\\\AppData\\\\Local\\\\Pub\\\\Cache\\\\hosted\\\\pub.dev\\\\permission_handler_apple-9.4.10\\\\","native_build":true,"dependencies":[],"dev_dependency":false},{"name":"shared_preferences_foundation","path":"C:\\\\Users\\\\APP MOVILES\\\\AppData\\\\Local\\\\Pub\\\\Cache\\\\hosted\\\\pub.dev\\\\shared_preferences_foundation-2.5.6\\\\","shared_darwin_source":true,"native_build":true,"dependencies":[],"dev_dependency":false},{"name":"url_launcher_ios","path":"C:\\\\Users\\\\APP MOVILES\\\\AppData\\\\Local\\\\Pub\\\\Cache\\\\hosted\\\\pub.dev\\\\url_launcher_ios-6.4.1\\\\","native_build":true,"dependencies":[],"dev_dependency":false}],"android":[{"name":"camera_android","path":"C:\\\\Users\\\\APP MOVILES\\\\AppData\\\\Local\\\\Pub\\\\Cache\\\\hosted\\\\pub.dev\\\\camera_android-0.10.10+18\\\\","native_build":true,"dependencies":["flutter_plugin_android_lifecycle"],"dev_dependency":false},{"name":"device_info_plus","path":"C:\\\\Users\\\\APP MOVILES\\\\AppData\\\\Local\\\\Pub\\\\Cache\\\\hosted\\\\pub.dev\\\\device_info_plus-12.4.0\\\\","native_build":true,"dependencies":[],"dev_dependency":false},{"name":"flutter_plugin_android_lifecycle","path":"C:\\\\Users\\\\APP MOVILES\\\\AppData\\\\Local\\\\Pub\\\\Cache\\\\hosted\\\\pub.dev\\\\flutter_plugin_android_lifecycle-2.0.35\\\\","native_build":true,"dependencies":[],"dev_dependency":false},{"name":"flutter_web_auth_2","path":"C:\\\\Users\\\\APP MOVILES\\\\AppData\\\\Local\\\\Pub\\\\Cache\\\\hosted\\\\pub.dev\\\\flutter_web_auth_2-5.0.3\\\\","native_build":true,"dependencies":[],"dev_dependency":false},{"name":"geolocator_android","path":"C:\\\\Users\\\\APP MOVILES\\\\AppData\\\\Local\\\\Pub\\\\Cache\\\\hosted\\\\pub.dev\\\\geolocator_android-4.6.2\\\\","native_build":true,"dependencies":[],"dev_dependency":false},{"name":"image_picker_android","path":"C:\\\\Users\\\\APP MOVILES\\\\AppData\\\\Local\\\\Pub\\\\Cache\\\\hosted\\\\pub.dev\\\\image_picker_android-0.8.13+17\\\\","native_build":true,"dependencies":["flutter_plugin_android_lifecycle"],"dev_dependency":false},{"name":"jni","path":"C:\\\\Users\\\\APP MOVILES\\\\AppData\\\\Local\\\\Pub\\\\Cache\\\\hosted\\\\pub.dev\\\\jni-1.0.0\\\\","native_build":true,"dependencies":[],"dev_dependency":false},{"name":"jni_flutter","path":"C:\\\\Users\\\\APP MOVILES\\\\AppData\\\\Local\\\\Pub\\\\Cache\\\\hosted\\\\pub.dev\\\\jni_flutter-1.0.1\\\\","native_build":true,"dependencies":["jni"],"dev_dependency":false},{"name":"package_info_plus","path":"C:\\\\Users\\\\APP MOVILES\\\\AppData\\\\Local\\\\Pub\\\\Cache\\\\hosted\\\\pub.dev\\\\package_info_plus-9.0.1\\\\","native_build":true,"dependencies":[],"dev_dependency":false},{"name":"path_provider_android","path":"C:\\\\Users\\\\APP MOVILES\\\\AppData\\\\Local\\\\Pub\\\\Cache\\\\hosted\\\\pub.dev\\\\path_provider_android-2.3.1\\\\","native_build":false,"dependencies":["jni","jni_flutter"],"dev_dependency":false},{"name":"permission_handler_android","path":"C:\\\\Users\\\\APP MOVILES\\\\AppData\\\\Local\\\\Pub\\\\Cache\\\\hosted\\\\pub.dev\\\\permission_handler_android-12.1.0\\\\","native_build":true,"dependencies":[],"dev_dependency":false},{"name":"shared_preferences_android","path":"C:\\\\Users\\\\APP MOVILES\\\\AppData\\\\Local\\\\Pub\\\\Cache\\\\hosted\\\\pub.dev\\\\shared_preferences_android-2.4.23\\\\","native_build":true,"dependencies":[],"dev_dependency":false},{"name":"url_launcher_android","path":"C:\\\\Users\\\\APP MOVILES\\\\AppData\\\\Local\\\\Pub\\\\Cache\\\\hosted\\\\pub.dev\\\\url_launcher_android-6.3.30\\\\","native_build":true,"dependencies":[],"dev_dependency":false}],"macos":[{"name":"desktop_webview_window","path":"C:\\\\Users\\\\APP MOVILES\\\\AppData\\\\Local\\\\Pub\\\\Cache\\\\hosted\\\\pub.dev\\\\desktop_webview_window-0.3.0\\\\","native_build":true,"dependencies":[],"dev_dependency":false},{"name":"device_info_plus","path":"C:\\\\Users\\\\APP MOVILES\\\\AppData\\\\Local\\\\Pub\\\\Cache\\\\hosted\\\\pub.dev\\\\device_info_plus-12.4.0\\\\","native_build":true,"dependencies":[],"dev_dependency":false},{"name":"file_selector_macos","path":"C:\\\\Users\\\\APP MOVILES\\\\AppData\\\\Local\\\\Pub\\\\Cache\\\\hosted\\\\pub.dev\\\\file_selector_macos-0.9.5\\\\","native_build":true,"dependencies":[],"dev_dependency":false},{"name":"flutter_web_auth_2","path":"C:\\\\Users\\\\APP MOVILES\\\\AppData\\\\Local\\\\Pub\\\\Cache\\\\hosted\\\\pub.dev\\\\flutter_web_auth_2-5.0.3\\\\","native_build":true,"dependencies":["desktop_webview_window","window_to_front"],"dev_dependency":false},{"name":"geolocator_apple","path":"C:\\\\Users\\\\APP MOVILES\\\\AppData\\\\Local\\\\Pub\\\\Cache\\\\hosted\\\\pub.dev\\\\geolocator_apple-2.3.14\\\\","shared_darwin_source":true,"native_build":true,"dependencies":[],"dev_dependency":false},{"name":"image_picker_macos","path":"C:\\\\Users\\\\APP MOVILES\\\\AppData\\\\Local\\\\Pub\\\\Cache\\\\hosted\\\\pub.dev\\\\image_picker_macos-0.2.2+1\\\\","native_build":false,"dependencies":["file_selector_macos"],"dev_dependency":false},{"name":"package_info_plus","path":"C:\\\\Users\\\\APP MOVILES\\\\AppData\\\\Local\\\\Pub\\\\Cache\\\\hosted\\\\pub.dev\\\\package_info_plus-9.0.1\\\\","native_build":true,"dependencies":[],"dev_dependency":false},{"name":"path_provider_foundation","path":"C:\\\\Users\\\\APP MOVILES\\\\AppData\\\\Local\\\\Pub\\\\Cache\\\\hosted\\\\pub.dev\\\\path_provider_foundation-2.6.0\\\\","native_build":false,"dependencies":[],"dev_dependency":false},{"name":"shared_preferences_foundation","path":"C:\\\\Users\\\\APP MOVILES\\\\AppData\\\\Local\\\\Pub\\\\Cache\\\\hosted\\\\pub.dev\\\\shared_preferences_foundation-2.5.6\\\\","shared_darwin_source":true,"native_build":true,"dependencies":[],"dev_dependency":false},{"name":"url_launcher_macos","path":"C:\\\\Users\\\\APP MOVILES\\\\AppData\\\\Local\\\\Pub\\\\Cache\\\\hosted\\\\pub.dev\\\\url_launcher_macos-3.2.5\\\\","native_build":true,"dependencies":[],"dev_dependency":false},{"name":"window_to_front","path":"C:\\\\Users\\\\APP MOVILES\\\\AppData\\\\Local\\\\Pub\\\\Cache\\\\hosted\\\\pub.dev\\\\window_to_front-0.0.4\\\\","native_build":true,"dependencies":[],"dev_dependency":false}],"linux":[{"name":"desktop_webview_window","path":"C:\\\\Users\\\\APP MOVILES\\\\AppData\\\\Local\\\\Pub\\\\Cache\\\\hosted\\\\pub.dev\\\\desktop_webview_window-0.3.0\\\\","native_build":true,"dependencies":[],"dev_dependency":false},{"name":"device_info_plus","path":"C:\\\\Users\\\\APP MOVILES\\\\AppData\\\\Local\\\\Pub\\\\Cache\\\\hosted\\\\pub.dev\\\\device_info_plus-12.4.0\\\\","native_build":false,"dependencies":[],"dev_dependency":false},{"name":"file_selector_linux","path":"C:\\\\Users\\\\APP MOVILES\\\\AppData\\\\Local\\\\Pub\\\\Cache\\\\hosted\\\\pub.dev\\\\file_selector_linux-0.9.4\\\\","native_build":true,"dependencies":[],"dev_dependency":false},{"name":"flutter_web_auth_2","path":"C:\\\\Users\\\\APP MOVILES\\\\AppData\\\\Local\\\\Pub\\\\Cache\\\\hosted\\\\pub.dev\\\\flutter_web_auth_2-5.0.3\\\\","native_build":false,"dependencies":["desktop_webview_window","window_to_front"],"dev_dependency":false},{"name":"image_picker_linux","path":"C:\\\\Users\\\\APP MOVILES\\\\AppData\\\\Local\\\\Pub\\\\Cache\\\\hosted\\\\pub.dev\\\\image_picker_linux-0.2.2\\\\","native_build":false,"dependencies":["file_selector_linux"],"dev_dependency":false},{"name":"jni","path":"C:\\\\Users\\\\APP MOVILES\\\\AppData\\\\Local\\\\Pub\\\\Cache\\\\hosted\\\\pub.dev\\\\jni-1.0.0\\\\","native_build":true,"dependencies":[],"dev_dependency":false},{"name":"package_info_plus","path":"C:\\\\Users\\\\APP MOVILES\\\\AppData\\\\Local\\\\Pub\\\\Cache\\\\hosted\\\\pub.dev\\\\package_info_plus-9.0.1\\\\","native_build":false,"dependencies":[],"dev_dependency":false},{"name":"path_provider_linux","path":"C:\\\\Users\\\\APP MOVILES\\\\AppData\\\\Local\\\\Pub\\\\Cache\\\\hosted\\\\pub.dev\\\\path_provider_linux-2.2.2\\\\","native_build":false,"dependencies":[],"dev_dependency":false},{"name":"shared_preferences_linux","path":"C:\\\\Users\\\\APP MOVILES\\\\AppData\\\\Local\\\\Pub\\\\Cache\\\\hosted\\\\pub.dev\\\\shared_preferences_linux-2.4.1\\\\","native_build":false,"dependencies":["path_provider_linux"],"dev_dependency":false},{"name":"url_launcher_linux","path":"C:\\\\Users\\\\APP MOVILES\\\\AppData\\\\Local\\\\Pub\\\\Cache\\\\hosted\\\\pub.dev\\\\url_launcher_linux-3.2.2\\\\","native_build":true,"dependencies":[],"dev_dependency":false},{"name":"window_to_front","path":"C:\\\\Users\\\\APP MOVILES\\\\AppData\\\\Local\\\\Pub\\\\Cache\\\\hosted\\\\pub.dev\\\\window_to_front-0.0.4\\\\","native_build":true,"dependencies":[],"dev_dependency":false}],"windows":[{"name":"desktop_webview_window","path":"C:\\\\Users\\\\APP MOVILES\\\\AppData\\\\Local\\\\Pub\\\\Cache\\\\hosted\\\\pub.dev\\\\desktop_webview_window-0.3.0\\\\","native_build":true,"dependencies":[],"dev_dependency":false},{"name":"device_info_plus","path":"C:\\\\Users\\\\APP MOVILES\\\\AppData\\\\Local\\\\Pub\\\\Cache\\\\hosted\\\\pub.dev\\\\device_info_plus-12.4.0\\\\","native_build":false,"dependencies":[],"dev_dependency":false},{"name":"file_selector_windows","path":"C:\\\\Users\\\\APP MOVILES\\\\AppData\\\\Local\\\\Pub\\\\Cache\\\\hosted\\\\pub.dev\\\\file_selector_windows-0.9.3+5\\\\","native_build":true,"dependencies":[],"dev_dependency":false},{"name":"flutter_web_auth_2","path":"C:\\\\Users\\\\APP MOVILES\\\\AppData\\\\Local\\\\Pub\\\\Cache\\\\hosted\\\\pub.dev\\\\flutter_web_auth_2-5.0.3\\\\","native_build":false,"dependencies":["desktop_webview_window","window_to_front"],"dev_dependency":false},{"name":"geolocator_windows","path":"C:\\\\Users\\\\APP MOVILES\\\\AppData\\\\Local\\\\Pub\\\\Cache\\\\hosted\\\\pub.dev\\\\geolocator_windows-0.2.5\\\\","native_build":true,"dependencies":[],"dev_dependency":false},{"name":"image_picker_windows","path":"C:\\\\Users\\\\APP MOVILES\\\\AppData\\\\Local\\\\Pub\\\\Cache\\\\hosted\\\\pub.dev\\\\image_picker_windows-0.2.2\\\\","native_build":false,"dependencies":["file_selector_windows"],"dev_dependency":false},{"name":"jni","path":"C:\\\\Users\\\\APP MOVILES\\\\AppData\\\\Local\\\\Pub\\\\Cache\\\\hosted\\\\pub.dev\\\\jni-1.0.0\\\\","native_build":true,"dependencies":[],"dev_dependency":false},{"name":"package_info_plus","path":"C:\\\\Users\\\\APP MOVILES\\\\AppData\\\\Local\\\\Pub\\\\Cache\\\\hosted\\\\pub.dev\\\\package_info_plus-9.0.1\\\\","native_build":false,"dependencies":[],"dev_dependency":false},{"name":"path_provider_windows","path":"C:\\\\Users\\\\APP MOVILES\\\\AppData\\\\Local\\\\Pub\\\\Cache\\\\hosted\\\\pub.dev\\\\path_provider_windows-2.3.0\\\\","native_build":false,"dependencies":[],"dev_dependency":false},{"name":"permission_handler_windows","path":"C:\\\\Users\\\\APP MOVILES\\\\AppData\\\\Local\\\\Pub\\\\Cache\\\\hosted\\\\pub.dev\\\\permission_handler_windows-0.2.1\\\\","native_build":true,"dependencies":[],"dev_dependency":false},{"name":"shared_preferences_windows","path":"C:\\\\Users\\\\APP MOVILES\\\\AppData\\\\Local\\\\Pub\\\\Cache\\\\hosted\\\\pub.dev\\\\shared_preferences_windows-2.4.1\\\\","native_build":false,"dependencies":["path_provider_windows"],"dev_dependency":false},{"name":"url_launcher_windows","path":"C:\\\\Users\\\\APP MOVILES\\\\AppData\\\\Local\\\\Pub\\\\Cache\\\\hosted\\\\pub.dev\\\\url_launcher_windows-3.1.5\\\\","native_build":true,"dependencies":[],"dev_dependency":false},{"name":"window_to_front","path":"C:\\\\Users\\\\APP MOVILES\\\\AppData\\\\Local\\\\Pub\\\\Cache\\\\hosted\\\\pub.dev\\\\window_to_front-0.0.4\\\\","native_build":true,"dependencies":[],"dev_dependency":false}],"web":[{"name":"camera_web","path":"C:\\\\Users\\\\APP MOVILES\\\\AppData\\\\Local\\\\Pub\\\\Cache\\\\hosted\\\\pub.dev\\\\camera_web-0.3.5+4\\\\","dependencies":[],"dev_dependency":false},{"name":"device_info_plus","path":"C:\\\\Users\\\\APP MOVILES\\\\AppData\\\\Local\\\\Pub\\\\Cache\\\\hosted\\\\pub.dev\\\\device_info_plus-12.4.0\\\\","dependencies":[],"dev_dependency":false},{"name":"flutter_web_auth_2","path":"C:\\\\Users\\\\APP MOVILES\\\\AppData\\\\Local\\\\Pub\\\\Cache\\\\hosted\\\\pub.dev\\\\flutter_web_auth_2-5.0.3\\\\","dependencies":[],"dev_dependency":false},{"name":"geolocator_web","path":"C:\\\\Users\\\\APP MOVILES\\\\AppData\\\\Local\\\\Pub\\\\Cache\\\\hosted\\\\pub.dev\\\\geolocator_web-4.1.4\\\\","dependencies":[],"dev_dependency":false},{"name":"image_picker_for_web","path":"C:\\\\Users\\\\APP MOVILES\\\\AppData\\\\Local\\\\Pub\\\\Cache\\\\hosted\\\\pub.dev\\\\image_picker_for_web-3.1.1\\\\","dependencies":[],"dev_dependency":false},{"name":"package_info_plus","path":"C:\\\\Users\\\\APP MOVILES\\\\AppData\\\\Local\\\\Pub\\\\Cache\\\\hosted\\\\pub.dev\\\\package_info_plus-9.0.1\\\\","dependencies":[],"dev_dependency":false},{"name":"permission_handler_html","path":"C:\\\\Users\\\\APP MOVILES\\\\AppData\\\\Local\\\\Pub\\\\Cache\\\\hosted\\\\pub.dev\\\\permission_handler_html-0.1.3+5\\\\","dependencies":[],"dev_dependency":false},{"name":"shared_preferences_web","path":"C:\\\\Users\\\\APP MOVILES\\\\AppData\\\\Local\\\\Pub\\\\Cache\\\\hosted\\\\pub.dev\\\\shared_preferences_web-2.4.3\\\\","dependencies":[],"dev_dependency":false},{"name":"url_launcher_web","path":"C:\\\\Users\\\\APP MOVILES\\\\AppData\\\\Local\\\\Pub\\\\Cache\\\\hosted\\\\pub.dev\\\\url_launcher_web-2.4.3\\\\","dependencies":[],"dev_dependency":false}]},"dependencyGraph":[{"name":"camera","dependencies":["camera_android","camera_avfoundation","camera_web","flutter_plugin_android_lifecycle"]},{"name":"camera_android","dependencies":["flutter_plugin_android_lifecycle"]},{"name":"camera_avfoundation","dependencies":[]},{"name":"camera_web","dependencies":[]},{"name":"desktop_webview_window","dependencies":[]},{"name":"device_info_plus","dependencies":[]},{"name":"file_selector_linux","dependencies":[]},{"name":"file_selector_macos","dependencies":[]},{"name":"file_selector_windows","dependencies":[]},{"name":"flutter_plugin_android_lifecycle","dependencies":[]},{"name":"flutter_web_auth_2","dependencies":["desktop_webview_window","path_provider","url_launcher","window_to_front"]},{"name":"geolocator","dependencies":["geolocator_android","geolocator_apple","geolocator_web","geolocator_windows"]},{"name":"geolocator_android","dependencies":[]},{"name":"geolocator_apple","dependencies":[]},{"name":"geolocator_web","dependencies":[]},{"name":"geolocator_windows","dependencies":[]},{"name":"image_picker","dependencies":["image_picker_android","image_picker_for_web","image_picker_ios","image_picker_linux","image_picker_macos","image_picker_windows"]},{"name":"image_picker_android","dependencies":["flutter_plugin_android_lifecycle"]},{"name":"image_picker_for_web","dependencies":[]},{"name":"image_picker_ios","dependencies":[]},{"name":"image_picker_linux","dependencies":["file_selector_linux"]},{"name":"image_picker_macos","dependencies":["file_selector_macos"]},{"name":"image_picker_windows","dependencies":["file_selector_windows"]},{"name":"jni","dependencies":[]},{"name":"jni_flutter","dependencies":["jni"]},{"name":"package_info_plus","dependencies":[]},{"name":"path_provider","dependencies":["path_provider_android","path_provider_foundation","path_provider_linux","path_provider_windows"]},{"name":"path_provider_android","dependencies":["jni","jni_flutter"]},{"name":"path_provider_foundation","dependencies":[]},{"name":"path_provider_linux","dependencies":[]},{"name":"path_provider_windows","dependencies":[]},{"name":"permission_handler","dependencies":["permission_handler_android","permission_handler_apple","permission_handler_html","permission_handler_windows"]},{"name":"permission_handler_android","dependencies":[]},{"name":"permission_handler_apple","dependencies":[]},{"name":"permission_handler_html","dependencies":[]},{"name":"permission_handler_windows","dependencies":[]},{"name":"shared_preferences","dependencies":["shared_preferences_android","shared_preferences_foundation","shared_preferences_linux","shared_preferences_web","shared_preferences_windows"]},{"name":"shared_preferences_android","dependencies":[]},{"name":"shared_preferences_foundation","dependencies":[]},{"name":"shared_preferences_linux","dependencies":["path_provider_linux"]},{"name":"shared_preferences_web","dependencies":[]},{"name":"shared_preferences_windows","dependencies":["path_provider_windows"]},{"name":"url_launcher","dependencies":["url_launcher_android","url_launcher_ios","url_launcher_linux","url_launcher_macos","url_launcher_web","url_launcher_windows"]},{"name":"url_launcher_android","dependencies":[]},{"name":"url_launcher_ios","dependencies":[]},{"name":"url_launcher_linux","dependencies":[]},{"name":"url_launcher_macos","dependencies":[]},{"name":"url_launcher_web","dependencies":[]},{"name":"url_launcher_windows","dependencies":[]},{"name":"window_to_front","dependencies":[]}],"date_created":"2026-06-25 16:01:35.104720","version":"3.41.6","swift_package_manager_enabled":{"ios":false,"macos":false}}

          
================================================
📄 ARCHIVO: .gitignore
================================================

# Miscellaneous
*.class
*.log
*.pyc
*.swp
.DS_Store
.atom/
.build/
.buildlog/
.history
.svn/
.swiftpm/
migrate_working_dir/

# IntelliJ related
*.iml
*.ipr
*.iws
.idea/

# The .vscode folder contains launch configuration and tasks you configure in
# VS Code which you may wish to be included in version control, so this line
# is commented out by default.
#.vscode/

# Flutter/Dart/Pub related
**/doc/api/
**/ios/Flutter/.last_build_id
.dart_tool/
.flutter-plugins-dependencies
.pub-cache/
.pub/
/build/
/coverage/

# Symbolication related
app.*.symbols

# Obfuscation related
app.*.map.json

# Android Studio will place build artifacts here
/android/app/debug
/android/app/profile
/android/app/release


          
================================================
📄 ARCHIVO: .metadata
================================================

# This file tracks properties of this Flutter project.
# Used by Flutter tool to assess capabilities and perform upgrades etc.
#
# This file should be version controlled and should not be manually edited.

version:
  revision: "c9a6c484230f8b5e408ec57be1ef71dee1e77020"
  channel: "stable"

project_type: app

# Tracks metadata for the flutter migrate command
migration:
  platforms:
    - platform: root
      create_revision: c9a6c484230f8b5e408ec57be1ef71dee1e77020
      base_revision: c9a6c484230f8b5e408ec57be1ef71dee1e77020
    - platform: android
      create_revision: c9a6c484230f8b5e408ec57be1ef71dee1e77020
      base_revision: c9a6c484230f8b5e408ec57be1ef71dee1e77020
    - platform: ios
      create_revision: c9a6c484230f8b5e408ec57be1ef71dee1e77020
      base_revision: c9a6c484230f8b5e408ec57be1ef71dee1e77020
    - platform: linux
      create_revision: c9a6c484230f8b5e408ec57be1ef71dee1e77020
      base_revision: c9a6c484230f8b5e408ec57be1ef71dee1e77020
    - platform: macos
      create_revision: c9a6c484230f8b5e408ec57be1ef71dee1e77020
      base_revision: c9a6c484230f8b5e408ec57be1ef71dee1e77020
    - platform: web
      create_revision: c9a6c484230f8b5e408ec57be1ef71dee1e77020
      base_revision: c9a6c484230f8b5e408ec57be1ef71dee1e77020
    - platform: windows
      create_revision: c9a6c484230f8b5e408ec57be1ef71dee1e77020
      base_revision: c9a6c484230f8b5e408ec57be1ef71dee1e77020

  # User provided section

  # List of Local paths (relative to this file) that should be
  # ignored by the migrate tool.
  #
  # Files that are not part of the templates will be ignored by default.
  unmanaged_files:
    - 'lib/main.dart'
    - 'ios/Runner.xcodeproj/project.pbxproj'


          
================================================
📄 ARCHIVO: analysis_options.yaml
================================================

# This file configures the analyzer, which statically analyzes Dart code to
# check for errors, warnings, and lints.
#
# The issues identified by the analyzer are surfaced in the UI of Dart-enabled
# IDEs (https://dart.dev/tools#ides-and-editors). The analyzer can also be
# invoked from the command line by running `flutter analyze`.

# The following line activates a set of recommended lints for Flutter apps,
# packages, and plugins designed to encourage good coding practices.
include: package:flutter_lints/flutter.yaml

linter:
  # The lint rules applied to this project can be customized in the
  # section below to disable rules from the `package:flutter_lints/flutter.yaml`
  # included above or to enable additional rules. A list of all available lints
  # and their documentation is published at https://dart.dev/lints.
  #
  # Instead of disabling a lint rule for the entire project in the
  # section below, it can also be suppressed for a single line of code
  # or a specific dart file by using the `// ignore: name_of_lint` and
  # `// ignore_for_file: name_of_lint` syntax on the line or in the file
  # producing the lint.
  rules:
    # avoid_print: false  # Uncomment to disable the `avoid_print` rule
    # prefer_single_quotes: true  # Uncomment to enable the `prefer_single_quotes` rule

# Additional information about this file can be found at
# https://dart.dev/guides/language/analysis-options


          
================================================
📄 ARCHIVO: android\.gitignore
================================================

gradle-wrapper.jar
/.gradle
/captures/
/gradlew
/gradlew.bat
/local.properties
GeneratedPluginRegistrant.java
.cxx/

# Remember to never publicly share your keystore.
# See https://flutter.dev/to/reference-keystore
key.properties
**/*.keystore
**/*.jks


          
================================================
📄 ARCHIVO: ios\.gitignore
================================================

**/dgph
*.mode1v3
*.mode2v3
*.moved-aside
*.pbxuser
*.perspectivev3
**/*sync/
.sconsign.dblite
.tags*
**/.vagrant/
**/DerivedData/
Icon?
**/Pods/
**/.symlinks/
profile
xcuserdata
**/.generated/
Flutter/App.framework
Flutter/Flutter.framework
Flutter/Flutter.podspec
Flutter/Generated.xcconfig
Flutter/ephemeral/
Flutter/app.flx
Flutter/app.zip
Flutter/flutter_assets/
Flutter/flutter_export_environment.sh
ServiceDefinitions.json
Runner/GeneratedPluginRegistrant.*

# Exceptions to above rules.
!default.mode1v3
!default.mode2v3
!default.pbxuser
!default.perspectivev3


          
================================================
📄 ARCHIVO: ios\Flutter\Debug.xcconfig
================================================

#include "Generated.xcconfig"


          
================================================
📄 ARCHIVO: ios\Flutter\Generated.xcconfig
================================================

// This is a generated file; do not edit or check into version control.
FLUTTER_ROOT=C:\Flutter\flutter
FLUTTER_APPLICATION_PATH=C:\Users\APP MOVILES\Downloads\exb2
COCOAPODS_PARALLEL_CODE_SIGN=true
FLUTTER_TARGET=lib\main.dart
FLUTTER_BUILD_DIR=build
FLUTTER_BUILD_NAME=1.0.0
FLUTTER_BUILD_NUMBER=1
EXCLUDED_ARCHS[sdk=iphonesimulator*]=i386
EXCLUDED_ARCHS[sdk=iphoneos*]=armv7
DART_OBFUSCATION=false
TRACK_WIDGET_CREATION=true
TREE_SHAKE_ICONS=false
PACKAGE_CONFIG=.dart_tool/package_config.json


          
================================================
📄 ARCHIVO: ios\Flutter\Release.xcconfig
================================================

#include "Generated.xcconfig"


          
================================================
📄 ARCHIVO: ios\Runner\Assets.xcassets\AppIcon.appiconset\Contents.json
================================================

{
  "images" : [
    {
      "size" : "20x20",
      "idiom" : "iphone",
      "filename" : "Icon-App-20x20@2x.png",
      "scale" : "2x"
    },
    {
      "size" : "20x20",
      "idiom" : "iphone",
      "filename" : "Icon-App-20x20@3x.png",
      "scale" : "3x"
    },
    {
      "size" : "29x29",
      "idiom" : "iphone",
      "filename" : "Icon-App-29x29@1x.png",
      "scale" : "1x"
    },
    {
      "size" : "29x29",
      "idiom" : "iphone",
      "filename" : "Icon-App-29x29@2x.png",
      "scale" : "2x"
    },
    {
      "size" : "29x29",
      "idiom" : "iphone",
      "filename" : "Icon-App-29x29@3x.png",
      "scale" : "3x"
    },
    {
      "size" : "40x40",
      "idiom" : "iphone",
      "filename" : "Icon-App-40x40@2x.png",
      "scale" : "2x"
    },
    {
      "size" : "40x40",
      "idiom" : "iphone",
      "filename" : "Icon-App-40x40@3x.png",
      "scale" : "3x"
    },
    {
      "size" : "60x60",
      "idiom" : "iphone",
      "filename" : "Icon-App-60x60@2x.png",
      "scale" : "2x"
    },
    {
      "size" : "60x60",
      "idiom" : "iphone",
      "filename" : "Icon-App-60x60@3x.png",
      "scale" : "3x"
    },
    {
      "size" : "20x20",
      "idiom" : "ipad",
      "filename" : "Icon-App-20x20@1x.png",
      "scale" : "1x"
    },
    {
      "size" : "20x20",
      "idiom" : "ipad",
      "filename" : "Icon-App-20x20@2x.png",
      "scale" : "2x"
    },
    {
      "size" : "29x29",
      "idiom" : "ipad",
      "filename" : "Icon-App-29x29@1x.png",
      "scale" : "1x"
    },
    {
      "size" : "29x29",
      "idiom" : "ipad",
      "filename" : "Icon-App-29x29@2x.png",
      "scale" : "2x"
    },
    {
      "size" : "40x40",
      "idiom" : "ipad",
      "filename" : "Icon-App-40x40@1x.png",
      "scale" : "1x"
    },
    {
      "size" : "40x40",
      "idiom" : "ipad",
      "filename" : "Icon-App-40x40@2x.png",
      "scale" : "2x"
    },
    {
      "size" : "76x76",
      "idiom" : "ipad",
      "filename" : "Icon-App-76x76@1x.png",
      "scale" : "1x"
    },
    {
      "size" : "76x76",
      "idiom" : "ipad",
      "filename" : "Icon-App-76x76@2x.png",
      "scale" : "2x"
    },
    {
      "size" : "83.5x83.5",
      "idiom" : "ipad",
      "filename" : "Icon-App-83.5x83.5@2x.png",
      "scale" : "2x"
    },
    {
      "size" : "1024x1024",
      "idiom" : "ios-marketing",
      "filename" : "Icon-App-1024x1024@1x.png",
      "scale" : "1x"
    }
  ],
  "info" : {
    "version" : 1,
    "author" : "xcode"
  }
}


          
================================================
📄 ARCHIVO: ios\Runner\Assets.xcassets\LaunchImage.imageset\Contents.json
================================================

{
  "images" : [
    {
      "idiom" : "universal",
      "filename" : "LaunchImage.png",
      "scale" : "1x"
    },
    {
      "idiom" : "universal",
      "filename" : "LaunchImage@2x.png",
      "scale" : "2x"
    },
    {
      "idiom" : "universal",
      "filename" : "LaunchImage@3x.png",
      "scale" : "3x"
    }
  ],
  "info" : {
    "version" : 1,
    "author" : "xcode"
  }
}


          
================================================
📄 ARCHIVO: ios\Runner\Assets.xcassets\LaunchImage.imageset\README.md
================================================

# Launch Screen Assets

You can customize the launch screen with your own desired assets by replacing the image files in this directory.

You can also do it by opening your Flutter project's Xcode project with `open ios/Runner.xcworkspace`, selecting `Runner/Assets.xcassets` in the Project Navigator and dropping in the desired images.

          
================================================
📄 ARCHIVO: lib\core\appwrite_client.dart
================================================

import 'package:appwrite/appwrite.dart';
import 'appwrite_constants.dart';

/// Instancia única del Client de Appwrite para toda la app.
/// Nadie más debe crear un `Client()` en otro archivo.
class AppwriteClient {
  AppwriteClient._();

  static final Client client = Client()
    ..setEndpoint(AppwriteConstants.endpoint)
    ..setProject(AppwriteConstants.projectId)
    ..setSelfSigned(status: true); // quítalo si usas certificado válido en producción
}

          
================================================
📄 ARCHIVO: lib\core\appwrite_constants.dart
================================================

/// Única fuente de verdad para los IDs de Appwrite.
/// Si en algún momento cambias de proyecto/colección, SOLO se edita aquí.
class AppwriteConstants {
  AppwriteConstants._(); // no se instancia

  // Conexión
  static const String endpoint = 'https://fra.cloud.appwrite.io/v1';
  static const String projectId = '6a3d497700308cb1890e';

  // Database (confirmado: igual al projectId en este proyecto)
  static const String databaseId = '6a3d497700308cb1890e';

  // Colecciones (deben coincidir EXACTO con el nombre/ID en tu consola Appwrite)
  static const String usuariosCollectionId = 'usuarios';
  static const String recintosCollectionId = 'recintos';
  static const String mesasCollectionId = 'actas';
  static const String actasCollectionId = 'mesas';
  static const String organizacionesCollectionId = 'organizaciones_politicas';

  // Storage (confirmado)
  static const String actasFotosBucketId = '6a3d52810008f4bb6f83';

  // Dominio "fake email" para login con cédula
  static const String emailDomain = '@actasapp.local';
}

          
================================================
📄 ARCHIVO: lib\core\appwrite_service.dart
================================================

import 'package:appwrite/appwrite.dart';
import 'appwrite_client.dart';
import 'appwrite_constants.dart';

/// Punto único de acceso a los servicios de Appwrite.
/// Todas las features (auth, electoral, etc.) inyectan/usan ESTA clase.
/// Ya no debe existir ningún otro `AppwriteDatasource` con IDs propios.
class AppwriteService {
  final Databases databases;
  final Storage storage;
  final Account account;

  AppwriteService()
      : databases = Databases(AppwriteClient.client),
        storage = Storage(AppwriteClient.client),
        account = Account(AppwriteClient.client);

  // Re-exportamos los IDs aquí para que el resto del código no tenga
  // que importar AppwriteConstants directamente en cada archivo.
  static const String databaseId = AppwriteConstants.databaseId;
  static const String usuariosCollectionId =
      AppwriteConstants.usuariosCollectionId;
  static const String recintosCollectionId =
      AppwriteConstants.recintosCollectionId;
  static const String mesasCollectionId = AppwriteConstants.mesasCollectionId;
  static const String actasCollectionId = AppwriteConstants.actasCollectionId;
  static const String organizacionesCollectionId =
      AppwriteConstants.organizacionesCollectionId;
  static const String actasFotosBucketId =
      AppwriteConstants.actasFotosBucketId;
}

          
================================================
📄 ARCHIVO: lib\features\auth\data\auth_datasource.dart
================================================

import 'package:appwrite/appwrite.dart';
import '../../../core/appwrite_constants.dart';
import '../../../core/appwrite_service.dart';
import '../domain/usuario.dart';

class AuthDatasource {
  final AppwriteService appwrite;

  AuthDatasource(this.appwrite);

  String _emailDesdeCedula(String cedula) =>
      '$cedula${AppwriteConstants.emailDomain}';

  Future<Usuario> login(String cedula, String password) async {
    final email = _emailDesdeCedula(cedula);

    // 1. Crear sesión en Appwrite Auth
    await appwrite.account.createEmailPasswordSession(
      email: email,
      password: password,
    );

    // 2. Obtener el usuario de Auth recién logueado
    final authUser = await appwrite.account.get();

    // 3. Buscar su perfil extendido en la colección 'usuarios'
    final result = await appwrite.databases.listDocuments(
      databaseId: AppwriteService.databaseId,
      collectionId: AppwriteService.usuariosCollectionId,
      queries: [Query.equal('auth_user_id', authUser.$id)],
    );

    if (result.documents.isEmpty) {
      // Si esto pasa, el usuario existe en Auth pero no tiene perfil en
      // 'usuarios' -> error de datos, no de credenciales.
      throw Exception(
        'No se encontró un perfil para este usuario. Contacta al administrador.',
      );
    }

    return Usuario.fromMap(result.documents.first.data);
  }

  Future<void> logout() async {
    await appwrite.account.deleteSession(sessionId: 'current');
  }

  Future<void> cambiarPassword(
    String passwordActual,
    String passwordNueva,
  ) async {
    // Cambia la password en Appwrite Auth
    await appwrite.account.updatePassword(
      password: passwordNueva,
      oldPassword: passwordActual,
    );

    // Marca debe_cambiar_password = false en el documento del usuario
    final authUser = await appwrite.account.get();

    final result = await appwrite.databases.listDocuments(
      databaseId: AppwriteService.databaseId,
      collectionId: AppwriteService.usuariosCollectionId,
      queries: [Query.equal('auth_user_id', authUser.$id)],
    );

    if (result.documents.isNotEmpty) {
      await appwrite.databases.updateDocument(
        databaseId: AppwriteService.databaseId,
        collectionId: AppwriteService.usuariosCollectionId,
        documentId: result.documents.first.$id,
        data: {'debe_cambiar_password': false},
      );
    }
  }

  Future<void> recuperarPassword(String email) async {
    // URL a la que Appwrite redirige tras el click en el correo.
    // Debe ser una página/deeplink que tu app maneje para capturar el token.
    await appwrite.account.createRecovery(
      email: email,
      url: 'https://tuapp.com/reset-password', // TODO: ajustar a tu deeplink real
    );
  }

  Future<Usuario?> usuarioActual() async {
    try {
      final authUser = await appwrite.account.get();

      final result = await appwrite.databases.listDocuments(
        databaseId: AppwriteService.databaseId,
        collectionId: AppwriteService.usuariosCollectionId,
        queries: [Query.equal('auth_user_id', authUser.$id)],
      );

      if (result.documents.isEmpty) return null;

      return Usuario.fromMap(result.documents.first.data);
    } catch (_) {
      // No hay sesión activa
      return null;
    }
  }
}

          
================================================
📄 ARCHIVO: lib\features\auth\data\auth_repository_impl.dart
================================================

import '../domain/auth_repository.dart';
import '../domain/usuario.dart';
import 'auth_datasource.dart';

class AuthRepositoryImpl implements AuthRepository {
  final AuthDatasource datasource;

  AuthRepositoryImpl(this.datasource);

  @override
  Future<Usuario> login(String cedula, String password) {
    return datasource.login(cedula, password);
  }

  @override
  Future<void> logout() {
    return datasource.logout();
  }

  @override
  Future<void> cambiarPassword(String passwordActual, String passwordNueva) {
    return datasource.cambiarPassword(passwordActual, passwordNueva);
  }

  @override
  Future<void> recuperarPassword(String email) {
    return datasource.recuperarPassword(email);
  }

  @override
  Future<Usuario?> usuarioActual() {
    return datasource.usuarioActual();
  }
}

          
================================================
📄 ARCHIVO: lib\features\auth\domain\auth_repository.dart
================================================

import 'usuario.dart';

abstract class AuthRepository {
  /// Inicia sesión con cédula + password.
  /// Internamente convierte la cédula a un email ficticio para Appwrite Auth.
  Future<Usuario> login(String cedula, String password);

  Future<void> logout();

  /// Obliga a cambiar la password en el primer login.
  Future<void> cambiarPassword(String passwordActual, String passwordNueva);

  /// Envía el correo de recuperación usando el mecanismo nativo de Appwrite.
  Future<void> recuperarPassword(String email);

  /// Usuario actualmente logueado (null si no hay sesión activa).
  Future<Usuario?> usuarioActual();
}

          
================================================
📄 ARCHIVO: lib\features\auth\domain\usuario.dart
================================================

export '../../electoral/domain/entities/usuario_rol.dart';
import '../../electoral/domain/entities/usuario_rol.dart';

class Usuario {
  final String id;
  final String cedula;
  final String nombres;
  final String apellidos;
  final String telefono;
  final String email;
  final RolUsuario rol;
  final String? recintoId;
  final bool debeCambiarPassword;
  final String authUserId;

  const Usuario({
    required this.id,
    required this.cedula,
    required this.nombres,
    required this.apellidos,
    required this.telefono,
    required this.email,
    required this.rol,
    required this.debeCambiarPassword,
    required this.authUserId,
    this.recintoId,
  });

  String get nombreCompleto => '$nombres $apellidos';

  factory Usuario.fromMap(Map<String, dynamic> map) => Usuario(
        id: map['\$id'] ?? '',
        cedula: map['cedula'] ?? '',
        nombres: map['nombres'] ?? '',
        apellidos: map['apellidos'] ?? '',
        telefono: map['telefono'] ?? '',
        email: map['email'] ?? '',
        rol: RolUsuario.fromString(map['rol'] ?? 'veedor'),
        recintoId: map['recinto_id'],
        debeCambiarPassword: map['debe_cambiar_password'] ?? true,
        authUserId: map['auth_user_id'] ?? '',
      );

  Map<String, dynamic> toMap() => {
        'cedula': cedula,
        'nombres': nombres,
        'apellidos': apellidos,
        'telefono': telefono,
        'email': email,
        'rol': rol.toApiString(),
        'recinto_id': recintoId,
        'debe_cambiar_password': debeCambiarPassword,
        'auth_user_id': authUserId,
      };
}

          
================================================
📄 ARCHIVO: lib\features\auth\presentation\auth_controller.dart
================================================

import 'package:flutter/foundation.dart';
import '../domain/auth_repository.dart';
import '../domain/usuario.dart';

enum AuthStatus { idle, loading, success, error }

/// Maneja el estado de login y expone explícitamente loading/success/error
/// para que la UI nunca se quede "en blanco" sin feedback.
class AuthController extends ChangeNotifier {
  final AuthRepository repository;

  AuthController(this.repository);

  AuthStatus status = AuthStatus.idle;
  String? errorMessage;
  Usuario? usuario;

  Future<bool> login(String cedula, String password) async {
    status = AuthStatus.loading;
    errorMessage = null;
    notifyListeners();

    try {
      usuario = await repository.login(cedula, password);
      status = AuthStatus.success;
      notifyListeners();
      return true;
    } catch (e) {
      status = AuthStatus.error;
      errorMessage = _mensajeAmigable(e);
      notifyListeners();
      return false;
    }
  }

  Future<bool> cambiarPassword(String actual, String nueva) async {
    status = AuthStatus.loading;
    errorMessage = null;
    notifyListeners();

    try {
      await repository.cambiarPassword(actual, nueva);
      // Refrescamos el usuario para que debeCambiarPassword quede en false
      usuario = await repository.usuarioActual();
      status = AuthStatus.success;
      notifyListeners();
      return true;
    } catch (e) {
      status = AuthStatus.error;
      errorMessage = _mensajeAmigable(e);
      notifyListeners();
      return false;
    }
  }

  Future<void> logout() async {
    await repository.logout();
    usuario = null;
    status = AuthStatus.idle;
    notifyListeners();
  }

  String _mensajeAmigable(Object e) {
    final msg = e.toString();
    if (msg.contains('Invalid credentials')) {
      return 'Cédula o contraseña incorrectas.';
    }
    if (msg.contains('SocketException') || msg.contains('Connection')) {
      return 'Sin conexión a internet. Verifica tu red e intenta de nuevo.';
    }
    return 'Ocurrió un error. Intenta de nuevo.';
  }
}

          
================================================
📄 ARCHIVO: lib\features\auth\presentation\cambiar_password_screen.dart
================================================

import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'auth_controller.dart';

class CambiarPasswordScreen extends StatefulWidget {
  const CambiarPasswordScreen({super.key});

  @override
  State<CambiarPasswordScreen> createState() => _CambiarPasswordScreenState();
}

class _CambiarPasswordScreenState extends State<CambiarPasswordScreen> {
  final _formKey = GlobalKey<FormState>();
  final actualCtrl = TextEditingController();
  final nuevaCtrl = TextEditingController();
  final confirmarCtrl = TextEditingController();

  @override
  void dispose() {
    actualCtrl.dispose();
    nuevaCtrl.dispose();
    confirmarCtrl.dispose();
    super.dispose();
  }

  Future<void> _onGuardar(AuthController controller) async {
    if (!_formKey.currentState!.validate()) return;

    final ok = await controller.cambiarPassword(
      actualCtrl.text.trim(),
      nuevaCtrl.text.trim(),
    );

    if (!mounted || !ok) return;

    final usuario = controller.usuario!;
    switch (usuario.rol.toApiString()) {
      case 'provincial':
        Navigator.pushReplacementNamed(context, '/provincial');
        break;
      case 'coordinador_recinto':
        Navigator.pushReplacementNamed(context, '/coordinador');
        break;
      case 'veedor':
        Navigator.pushReplacementNamed(context, '/veedor');
        break;
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Cambia tu contraseña'),
        automaticallyImplyLeading: false, // no puede regresar al login
      ),
      body: SafeArea(
        child: Center(
          child: SingleChildScrollView(
            padding: const EdgeInsets.all(24),
            child: Consumer<AuthController>(
              builder: (context, controller, _) {
                final loading = controller.status == AuthStatus.loading;

                return Form(
                  key: _formKey,
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.stretch,
                    children: [
                      const Text(
                        'Por seguridad, debes cambiar tu contraseña '
                        'temporal antes de continuar.',
                        style: TextStyle(fontSize: 15),
                      ),
                      const SizedBox(height: 24),

                      TextFormField(
                        controller: actualCtrl,
                        obscureText: true,
                        decoration: const InputDecoration(
                          labelText: 'Contraseña actual (Ecuador2026)',
                          border: OutlineInputBorder(),
                        ),
                        validator: (v) =>
                            (v == null || v.isEmpty) ? 'Requerido' : null,
                      ),
                      const SizedBox(height: 16),

                      TextFormField(
                        controller: nuevaCtrl,
                        obscureText: true,
                        decoration: const InputDecoration(
                          labelText: 'Nueva contraseña',
                          border: OutlineInputBorder(),
                        ),
                        validator: (v) {
                          if (v == null || v.length < 8) {
                            return 'Mínimo 8 caracteres';
                          }
                          return null;
                        },
                      ),
                      const SizedBox(height: 16),

                      TextFormField(
                        controller: confirmarCtrl,
                        obscureText: true,
                        decoration: const InputDecoration(
                          labelText: 'Confirmar nueva contraseña',
                          border: OutlineInputBorder(),
                        ),
                        validator: (v) {
                          if (v != nuevaCtrl.text) {
                            return 'Las contraseñas no coinciden';
                          }
                          return null;
                        },
                      ),
                      const SizedBox(height: 24),

                      if (controller.status == AuthStatus.error) ...[
                        Container(
                          padding: const EdgeInsets.all(12),
                          decoration: BoxDecoration(
                            color: Colors.red.shade50,
                            borderRadius: BorderRadius.circular(8),
                          ),
                          child: Text(
                            controller.errorMessage ?? 'Error',
                            style: const TextStyle(color: Colors.red),
                          ),
                        ),
                        const SizedBox(height: 16),
                      ],

                      ElevatedButton(
                        onPressed:
                            loading ? null : () => _onGuardar(controller),
                        child: loading
                            ? const SizedBox(
                                height: 20,
                                width: 20,
                                child: CircularProgressIndicator(
                                  strokeWidth: 2,
                                  color: Colors.white,
                                ),
                              )
                            : const Text('Guardar y continuar'),
                      ),
                    ],
                  ),
                );
              },
            ),
          ),
        ),
      ),
    );
  }
}

          
================================================
📄 ARCHIVO: lib\features\auth\presentation\login_screen.dart
================================================

import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'auth_controller.dart';
import '../../electoral/domain/entities/usuario_rol.dart';

class LoginScreen extends StatefulWidget {
  const LoginScreen({super.key});

  @override
  State<LoginScreen> createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  final _formKey = GlobalKey<FormState>();
  final cedulaCtrl = TextEditingController();
  final passCtrl = TextEditingController();
  bool _obscure = true;

  @override
  void dispose() {
    cedulaCtrl.dispose();
    passCtrl.dispose();
    super.dispose();
  }

  Future<void> _onLogin(AuthController controller) async {
    if (!_formKey.currentState!.validate()) return;

    final ok = await controller.login(
      cedulaCtrl.text.trim(),
      passCtrl.text.trim(),
    );

    if (!mounted || !ok) return;

    final usuario = controller.usuario!;

    if (usuario.debeCambiarPassword) {
      Navigator.pushReplacementNamed(context, '/cambiar-password');
      return;
    }

    switch (usuario.rol) {
      case RolUsuario.provincial:
        Navigator.pushReplacementNamed(context, '/provincial');
        break;
      case RolUsuario.coordinadorRecinto:
        Navigator.pushReplacementNamed(context, '/coordinador');
        break;
      case RolUsuario.veedor:
        Navigator.pushReplacementNamed(context, '/veedor');
        break;
    }
  }

  @override
  Widget build(BuildContext context) {
    final colorScheme = Theme.of(context).colorScheme;

    return Scaffold(
      body: SafeArea(
        child: Center(
          child: SingleChildScrollView(
            padding: const EdgeInsets.all(28),
            child: Consumer<AuthController>(
              builder: (context, controller, _) {
                final loading = controller.status == AuthStatus.loading;

                return Form(
                  key: _formKey,
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.stretch,
                    children: [
                      Icon(
                        Icons.how_to_vote_rounded,
                        size: 72,
                        color: colorScheme.primary,
                      ),
                      const SizedBox(height: 16),
                      Text(
                        'Control Electoral',
                        textAlign: TextAlign.center,
                        style: Theme.of(context).textTheme.headlineMedium
                            ?.copyWith(fontWeight: FontWeight.bold),
                      ),
                      const SizedBox(height: 8),
                      Text(
                        'Ingresa con tu cédula y contraseña',
                        textAlign: TextAlign.center,
                        style: Theme.of(context).textTheme.bodyMedium
                            ?.copyWith(color: Colors.grey[600]),
                      ),
                      const SizedBox(height: 36),

                      TextFormField(
                        controller: cedulaCtrl,
                        keyboardType: TextInputType.number,
                        decoration: const InputDecoration(
                          labelText: 'Cédula de identidad',
                          prefixIcon: Icon(Icons.badge_outlined),
                          border: OutlineInputBorder(),
                        ),
                        validator: (v) {
                          if (v == null || v.isEmpty) return 'Requerido';
                          if (v.length < 8) return 'Cédula inválida';
                          return null;
                        },
                      ),
                      const SizedBox(height: 16),

                      TextFormField(
                        controller: passCtrl,
                        obscureText: _obscure,
                        decoration: InputDecoration(
                          labelText: 'Contraseña',
                          prefixIcon: const Icon(Icons.lock_outline),
                          border: const OutlineInputBorder(),
                          suffixIcon: IconButton(
                            icon: Icon(
                              _obscure
                                  ? Icons.visibility_outlined
                                  : Icons.visibility_off_outlined,
                            ),
                            onPressed: () =>
                                setState(() => _obscure = !_obscure),
                          ),
                        ),
                        validator: (v) =>
                            (v == null || v.isEmpty) ? 'Requerido' : null,
                      ),
                      const SizedBox(height: 8),

                      Align(
                        alignment: Alignment.centerRight,
                        child: TextButton(
                          onPressed: () => Navigator.pushNamed(
                              context, '/recuperar-password'),
                          child: const Text('¿Olvidaste tu contraseña?'),
                        ),
                      ),
                      const SizedBox(height: 8),

                      if (controller.status == AuthStatus.error) ...[
                        Container(
                          padding: const EdgeInsets.all(12),
                          decoration: BoxDecoration(
                            color: Colors.red.shade50,
                            borderRadius: BorderRadius.circular(8),
                            border: Border.all(color: Colors.red.shade200),
                          ),
                          child: Row(
                            children: [
                              const Icon(Icons.error_outline,
                                  color: Colors.red, size: 18),
                              const SizedBox(width: 8),
                              Expanded(
                                child: Text(
                                  controller.errorMessage ?? 'Error',
                                  style: const TextStyle(color: Colors.red),
                                ),
                              ),
                            ],
                          ),
                        ),
                        const SizedBox(height: 16),
                      ],

                      FilledButton(
                        onPressed:
                            loading ? null : () => _onLogin(controller),
                        style: FilledButton.styleFrom(
                          padding: const EdgeInsets.symmetric(vertical: 16),
                        ),
                        child: loading
                            ? const SizedBox(
                                height: 20,
                                width: 20,
                                child: CircularProgressIndicator(
                                  strokeWidth: 2,
                                  color: Colors.white,
                                ),
                              )
                            : const Text('Ingresar',
                                style: TextStyle(fontSize: 16)),
                      ),
                    ],
                  ),
                );
              },
            ),
          ),
        ),
      ),
    );
  }
}

          
================================================
📄 ARCHIVO: lib\features\auth\presentation\recuperar_password_screen.dart
================================================

import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import '../domain/auth_repository.dart';

enum _RecuperarStatus { idle, loading, success, error }

class RecuperarPasswordScreen extends StatefulWidget {
  const RecuperarPasswordScreen({super.key});

  @override
  State<RecuperarPasswordScreen> createState() =>
      _RecuperarPasswordScreenState();
}

class _RecuperarPasswordScreenState extends State<RecuperarPasswordScreen> {
  final _formKey = GlobalKey<FormState>();
  final emailCtrl = TextEditingController();
  _RecuperarStatus status = _RecuperarStatus.idle;
  String? errorMessage;

  Future<void> _onEnviar() async {
    if (!_formKey.currentState!.validate()) return;

    setState(() {
      status = _RecuperarStatus.loading;
      errorMessage = null;
    });

    try {
      final repo = context.read<AuthRepository>();
      await repo.recuperarPassword(emailCtrl.text.trim());
      setState(() => status = _RecuperarStatus.success);
    } catch (e) {
      setState(() {
        status = _RecuperarStatus.error;
        errorMessage = 'No se pudo enviar el correo. Verifica el email e intenta de nuevo.';
      });
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Recuperar contraseña')),
      body: SafeArea(
        child: Center(
          child: SingleChildScrollView(
            padding: const EdgeInsets.all(24),
            child: Form(
              key: _formKey,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.stretch,
                children: [
                  const Text(
                    'Ingresa el correo con el que se creó tu cuenta. '
                    'Te enviaremos un enlace para restablecer tu contraseña.',
                  ),
                  const SizedBox(height: 20),

                  TextFormField(
                    controller: emailCtrl,
                    keyboardType: TextInputType.emailAddress,
                    decoration: const InputDecoration(
                      labelText: 'Correo electrónico',
                      border: OutlineInputBorder(),
                    ),
                    validator: (v) {
                      if (v == null || !v.contains('@')) {
                        return 'Ingresa un correo válido';
                      }
                      return null;
                    },
                  ),
                  const SizedBox(height: 20),

                  if (status == _RecuperarStatus.success)
                    Container(
                      padding: const EdgeInsets.all(12),
                      decoration: BoxDecoration(
                        color: Colors.green.shade50,
                        borderRadius: BorderRadius.circular(8),
                      ),
                      child: const Text(
                        'Correo enviado. Revisa tu bandeja de entrada.',
                        style: TextStyle(color: Colors.green),
                      ),
                    ),

                  if (status == _RecuperarStatus.error)
                    Container(
                      padding: const EdgeInsets.all(12),
                      decoration: BoxDecoration(
                        color: Colors.red.shade50,
                        borderRadius: BorderRadius.circular(8),
                      ),
                      child: Text(
                        errorMessage ?? 'Error',
                        style: const TextStyle(color: Colors.red),
                      ),
                    ),

                  const SizedBox(height: 12),

                  ElevatedButton(
                    onPressed:
                        status == _RecuperarStatus.loading ? null : _onEnviar,
                    child: status == _RecuperarStatus.loading
                        ? const SizedBox(
                            height: 20,
                            width: 20,
                            child: CircularProgressIndicator(
                              strokeWidth: 2,
                              color: Colors.white,
                            ),
                          )
                        : const Text('Enviar enlace'),
                  ),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}

          
================================================
📄 ARCHIVO: lib\features\electoral\data\datasources\appwrite_datasource.dart
================================================

import 'package:appwrite/appwrite.dart';

class AppwriteDatasource {
  final Client client = Client();
  late Databases db;
  late Storage storage;
  late Account account;

  final String databaseId = 'TU_DATABASE_ID';
  final String mesasCollection = 'TU_MESAS_COLLECTION_ID';
  final String actasCollection = 'TU_ACTAS_COLLECTION_ID';
  final String bucketId = 'actas_fotos';

  AppwriteDatasource() {
    client
        .setEndpoint('https://fra.cloud.appwrite.io/v1')
        .setProject('TU_PROJECT_ID');

    db = Databases(client);
    storage = Storage(client);
    account = Account(client);
  }

  // 📌 subir imagen
  Future<String> uploadImage(String filePath) async {
    final file = await storage.createFile(
      bucketId: bucketId,
      fileId: ID.unique(),
      file: InputFile.fromPath(path: filePath),
    );

    return file.$id;
  }

  // 📌 url imagen
  String getImageUrl(String fileId) {
    return 'https://fra.cloud.appwrite.io/v1/storage/buckets/$bucketId/files/$fileId/view?project=TU_PROJECT_ID';
  }

  // 📌 guardar acta
  Future<void> saveActa(Map<String, dynamic> data) async {
    await db.createDocument(
      databaseId: databaseId,
      collectionId: actasCollection,
      documentId: ID.unique(),
      data: data,
    );
  }

  // 📌 obtener mesas
  Future<List<Map<String, dynamic>>> getMesas() async {
    final res = await db.listDocuments(
      databaseId: databaseId,
      collectionId: mesasCollection,
    );

    return res.documents.map((e) => e.data).toList();
  }
}

          
================================================
📄 ARCHIVO: lib\features\electoral\data\models\models.dart
================================================

// ─── Mesa Electoral ───────────────────────────────────────────────────────────
class MesaElectoral {
  final String  id;
  final String  numero;
  final String  recinto;
  final String  municipio;
  final String  departamento;
  final int     totalHabilitados;
  final String  estado; // 'activa' | 'cerrada' | 'escrutada'

  const MesaElectoral({
    required this.id,
    required this.numero,
    required this.recinto,
    required this.municipio,
    required this.departamento,
    required this.totalHabilitados,
    this.estado = 'activa',
  });

  factory MesaElectoral.fromMap(Map<String, dynamic> map) => MesaElectoral(
    id:               map['\$id']            ?? '',
    numero:           map['numero']          ?? '',
    recinto:          map['recinto']         ?? '',
    municipio:        map['municipio']       ?? '',
    departamento:     map['departamento']    ?? '',
    totalHabilitados: map['total_habilitados'] ?? 0,
    estado:           map['estado']          ?? 'activa',
  );

  Map<String, dynamic> toMap() => {
    'numero':            numero,
    'recinto':           recinto,
    'municipio':         municipio,
    'departamento':      departamento,
    'total_habilitados': totalHabilitados,
    'estado':            estado,
  };
}

// ─── Acta de Escrutinio ───────────────────────────────────────────────────────
class ActaEscrutinio {
  final String  id;
  final String  mesaId;
  final String  mesaNumero;
  final int     votosEmitidos;
  final int     votosNulos;
  final int     votosEnBlanco;
  final List<VotoCandidato> votosPorCandidato;
  final String? fotoFileId;     // ID del archivo en Appwrite Storage
  final String  estado;         // 'borrador' | 'enviada' | 'validada'
  final DateTime? creadaEn;

  const ActaEscrutinio({
    required this.id,
    required this.mesaId,
    required this.mesaNumero,
    required this.votosEmitidos,
    required this.votosNulos,
    required this.votosEnBlanco,
    required this.votosPorCandidato,
    this.fotoFileId,
    this.estado = 'borrador',
    this.creadaEn,
  });

  factory ActaEscrutinio.fromMap(Map<String, dynamic> map) => ActaEscrutinio(
    id:            map['\$id']           ?? '',
    mesaId:        map['mesa_id']        ?? '',
    mesaNumero:    map['mesa_numero']    ?? '',
    votosEmitidos: map['votos_emitidos'] ?? 0,
    votosNulos:    map['votos_nulos']    ?? 0,
    votosEnBlanco: map['votos_en_blanco'] ?? 0,
    fotoFileId:    map['foto_file_id'],
    estado:        map['estado']         ?? 'borrador',
    votosPorCandidato: (map['votos_candidatos'] as List<dynamic>? ?? [])
        .map((e) => VotoCandidato.fromMap(e as Map<String, dynamic>))
        .toList(),
    creadaEn: map['\$createdAt'] != null
        ? DateTime.tryParse(map['\$createdAt'])
        : null,
  );

  Map<String, dynamic> toMap() => {
    'mesa_id':         mesaId,
    'mesa_numero':     mesaNumero,
    'votos_emitidos':  votosEmitidos,
    'votos_nulos':     votosNulos,
    'votos_en_blanco': votosEnBlanco,
    'foto_file_id':    fotoFileId,
    'estado':          estado,
    'votos_candidatos': votosPorCandidato.map((v) => v.toMap()).toList(),
  };
}

// ─── Voto por Candidato ───────────────────────────────────────────────────────
class VotoCandidato {
  final String candidato;
  final String partido;
  final int    votos;

  const VotoCandidato({
    required this.candidato,
    required this.partido,
    required this.votos,
  });

  factory VotoCandidato.fromMap(Map<String, dynamic> map) => VotoCandidato(
    candidato: map['candidato'] ?? '',
    partido:   map['partido']   ?? '',
    votos:     map['votos']     ?? 0,
  );

  Map<String, dynamic> toMap() => {
    'candidato': candidato,
    'partido':   partido,
    'votos':     votos,
  };
}

// ─── Veedor Electoral ─────────────────────────────────────────────────────────
class VeedorElectoral {
  final String id;
  final String nombre;
  final String cedula;
  final String partido;
  final String mesaAsignada;
  final String email;

  const VeedorElectoral({
    required this.id,
    required this.nombre,
    required this.cedula,
    required this.partido,
    required this.mesaAsignada,
    required this.email,
  });

  factory VeedorElectoral.fromMap(Map<String, dynamic> map) => VeedorElectoral(
    id:            map['\$id']           ?? '',
    nombre:        map['nombre']         ?? '',
    cedula:        map['cedula']         ?? '',
    partido:       map['partido']        ?? '',
    mesaAsignada:  map['mesa_asignada']  ?? '',
    email:         map['email']          ?? '',
  );
}


          
================================================
📄 ARCHIVO: lib\features\electoral\data\services\blur_detection_service.dart
================================================

import 'dart:math';

class BlurDetectionService {
  static double calculateBlur(List<double> pixels) {
    double mean = pixels.reduce((a, b) => a + b) / pixels.length;

    double variance = pixels
        .map((p) => pow(p - mean, 2))
        .reduce((a, b) => a + b)
        .toDouble();

    return variance / pixels.length;
  }

  static bool isBlurry(double value) {
    return value < 120;
  }
}

          
================================================
📄 ARCHIVO: lib\features\electoral\domain\entities\acta_escrutinio.dart
================================================

import 'voto_candidato.dart';

class ActaEscrutinio {
  final String id;
  final String mesaId;
  final String mesaNumero;
  final String dignidad; // 'alcalde' | 'prefecto'
  final int votosEmitidos;
  final int votosNulos;
  final int votosEnBlanco;
  final List<VotoCandidato> votosPorCandidato;
  final String? fotoFileId;
  final String estado; // 'borrador' | 'enviada' | 'validada'
  final DateTime? creadaEn;
  final double? latitud;
  final double? longitud;

  const ActaEscrutinio({
    required this.id,
    required this.mesaId,
    required this.mesaNumero,
    required this.dignidad,
    required this.votosEmitidos,
    required this.votosNulos,
    required this.votosEnBlanco,
    required this.votosPorCandidato,
    this.fotoFileId,
    this.estado = 'borrador',
    this.creadaEn,
    this.latitud,
    this.longitud,
  });

  int get totalVotos =>
      votosPorCandidato.fold(0, (s, v) => s + v.votos) + votosNulos + votosEnBlanco;

  bool get totalCoincide => totalVotos == votosEmitidos;

  factory ActaEscrutinio.fromMap(Map<String, dynamic> map) => ActaEscrutinio(
        id: map['\$id'] ?? '',
        mesaId: map['mesa_id'] ?? '',
        mesaNumero: map['mesa_numero'] ?? '',
        dignidad: map['dignidad'] ?? 'alcalde',
        votosEmitidos: map['votos_emitidos'] ?? 0,
        votosNulos: map['votos_nulos'] ?? 0,
        votosEnBlanco: map['votos_en_blanco'] ?? 0,
        fotoFileId: map['foto_file_id'],
        estado: map['estado'] ?? 'borrador',
        latitud: (map['latitud'] as num?)?.toDouble(),
        longitud: (map['longitud'] as num?)?.toDouble(),
        votosPorCandidato: (map['votos_candidatos'] as List<dynamic>? ?? [])
            .map((e) => VotoCandidato.fromMap(e as Map<String, dynamic>))
            .toList(),
        creadaEn: map['\$createdAt'] != null
            ? DateTime.tryParse(map['\$createdAt'])
            : null,
      );

  Map<String, dynamic> toMap() => {
        'mesa_id': mesaId,
        'mesa_numero': mesaNumero,
        'dignidad': dignidad,
        'votos_emitidos': votosEmitidos,
        'votos_nulos': votosNulos,
        'votos_en_blanco': votosEnBlanco,
        'foto_file_id': fotoFileId,
        'estado': estado,
        'latitud': latitud,
        'longitud': longitud,
        'votos_candidatos':
            votosPorCandidato.map((v) => v.toMap()).toList(),
      };
}

          
================================================
📄 ARCHIVO: lib\features\electoral\domain\entities\mesa_electoral.dart
================================================

class MesaElectoral {
  final String id;
  final String numero;
  final String recinto;
  final String recintoId;
  final String municipio;
  final String departamento;
  final int totalHabilitados;
  final String estado; // 'activa' | 'cerrada' | 'escrutada'
  final String? veedorAuthId;

  const MesaElectoral({
    required this.id,
    required this.numero,
    required this.recinto,
    required this.recintoId,
    required this.municipio,
    required this.departamento,
    required this.totalHabilitados,
    this.estado = 'activa',
    this.veedorAuthId,
  });
}

          
================================================
📄 ARCHIVO: lib\features\electoral\domain\entities\recinto.dart
================================================

class Recinto {
  final String id;
  final String canton;
  final String parroquia;
  final String nombre;
  final int numMesas;
  final String? coordinadorId;

  const Recinto({
    required this.id,
    required this.canton,
    required this.parroquia,
    required this.nombre,
    required this.numMesas,
    this.coordinadorId,
  });

  factory Recinto.fromMap(Map<String, dynamic> map) => Recinto(
        id: map['\$id'] ?? '',
        canton: map['canton'] ?? '',
        parroquia: map['parroquia'] ?? '',
        nombre: map['nombre'] ?? '',
        numMesas: map['num_mesas'] ?? 0,
        coordinadorId: map['coordinador_id'],
      );


  Map<String, dynamic> toMap() => {
        'canton': canton,
        'parroquia': parroquia,
        'nombre': nombre,
        'num_mesas': numMesas,
        'coordinador_id': coordinadorId,
      };
}

          
================================================
📄 ARCHIVO: lib\features\electoral\domain\entities\usuario_rol.dart
================================================

enum RolUsuario {
  provincial,
  coordinadorRecinto,
  veedor;

  static RolUsuario fromString(String value) {
    switch (value) {
      case 'provincial':
        return RolUsuario.provincial;
      case 'coordinador_recinto':
        return RolUsuario.coordinadorRecinto;
      case 'veedor':
        return RolUsuario.veedor;
      default:
        throw ArgumentError('Rol desconocido: $value');
    }
  }

  String toApiString() {
    switch (this) {
      case RolUsuario.provincial:
        return 'provincial';
      case RolUsuario.coordinadorRecinto:
        return 'coordinador_recinto';
      case RolUsuario.veedor:
        return 'veedor';
    }
  }

  String get displayName {
    switch (this) {
      case RolUsuario.provincial:
        return 'Coordinador Provincial';
      case RolUsuario.coordinadorRecinto:
        return 'Coordinador de Recinto';
      case RolUsuario.veedor:
        return 'Veedor de Mesa';
    }
  }
}

          
================================================
📄 ARCHIVO: lib\features\electoral\domain\entities\veedor_electoral.dart
================================================

class VeedorElectoral {
  final String id;
  final String nombre;
  final String cedula;
  final String partido;
  final String mesaAsignada;
  final String email;

  const VeedorElectoral({
    required this.id,
    required this.nombre,
    required this.cedula,
    required this.partido,
    required this.mesaAsignada,
    required this.email,
  });
}

          
================================================
📄 ARCHIVO: lib\features\electoral\domain\entities\voto_candidato.dart
================================================

class VotoCandidato {
  final String candidato;
  final String partido;
  final int votos;

  const VotoCandidato({
    required this.candidato,
    required this.partido,
    required this.votos,
  });

  factory VotoCandidato.fromMap(Map<String, dynamic> map) => VotoCandidato(
        candidato: map['candidato'] ?? '',
        partido: map['partido'] ?? '',
        votos: map['votos'] ?? 0,
      );

  Map<String, dynamic> toMap() => {
        'candidato': candidato,
        'partido': partido,
        'votos': votos,
      };
}

          
================================================
📄 ARCHIVO: lib\features\electoral\domain\repositories\electoral_repository.dart
================================================

import '../entities/mesa_electoral.dart';
import '../entities/acta_escrutinio.dart';
import '../entities/recinto.dart';
import '../../../auth/domain/usuario.dart';

abstract class ElectoralRepository {
  // ── Mesas ──────────────────────────────────────────────────────────────────
  Future<List<MesaElectoral>> getMesas();
  Future<List<MesaElectoral>> getMesasByRecinto(String recintoId);
  Future<List<MesaElectoral>> getMesasByVeedor(String authUserId);

  // ── Recintos ───────────────────────────────────────────────────────────────
  Future<List<Recinto>> getRecintos();
  Future<Recinto> createRecinto({
    required String canton,
    required String parroquia,
    required String nombre,
    required int numMesas,
  });

  // ── Actas ──────────────────────────────────────────────────────────────────
  Future<void> saveActa(ActaEscrutinio acta);
  Future<void> updateActa(ActaEscrutinio acta);
  Future<List<ActaEscrutinio>> getActasByMesa(String mesaId);

  // ── Usuarios ───────────────────────────────────────────────────────────────
  Future<Usuario> createUsuario({
    required String cedula,
    required String nombres,
    required String apellidos,
    required String telefono,
    required String email,
    required RolUsuario rol,
    String? recintoId,
  });
  Future<List<Usuario>> getCoordinadoresByRecinto(String recintoId);
  Future<List<Usuario>> getVeedoresByRecinto(String recintoId);
  Future<void> asignarVeedorAMesa(String authUserId, String mesaId);

  // ── Organizaciones políticas ───────────────────────────────────────────────
  Future<List<OrganizacionPolitica>> getOrganizaciones(String dignidad);
}

class OrganizacionPolitica {
  final String id;
  final String nombre;
  final String candidato;
  final String dignidad; // 'alcalde' | 'prefecto'

  const OrganizacionPolitica({
    required this.id,
    required this.nombre,
    required this.candidato,
    required this.dignidad,
  });

  factory OrganizacionPolitica.fromMap(Map<String, dynamic> map) =>
      OrganizacionPolitica(
        id: map['\$id'] ?? '',
        nombre: map['nombre'] ?? '',
        candidato: map['candidato'] ?? '',
        dignidad: map['dignidad'] ?? '',
      );
}

          
================================================
📄 ARCHIVO: lib\features\electoral\domain\repositories\electoral_repository_impl.dart
================================================

import 'package:appwrite/appwrite.dart';
import '../../../../core/appwrite_service.dart';
import '../../../../core/appwrite_constants.dart';
import '../../../auth/domain/usuario.dart';
import '../../domain/entities/acta_escrutinio.dart';
import '../../domain/entities/mesa_electoral.dart';
import '../../domain/entities/recinto.dart';
import '../../domain/repositories/electoral_repository.dart';

class ElectoralRepositoryImpl implements ElectoralRepository {
  final AppwriteService _svc;

  ElectoralRepositoryImpl(this._svc);

  // ── Mesas ──────────────────────────────────────────────────────────────────

  @override
  Future<List<MesaElectoral>> getMesas() async {
    final result = await _svc.databases.listDocuments(
      databaseId: AppwriteService.databaseId,
      collectionId: AppwriteService.mesasCollectionId,
    );
    return result.documents.map(_mesaFromDoc).toList();
  }

  @override
  Future<List<MesaElectoral>> getMesasByRecinto(String recintoId) async {
    final result = await _svc.databases.listDocuments(
      databaseId: AppwriteService.databaseId,
      collectionId: AppwriteService.mesasCollectionId,
      queries: [Query.equal('recinto_id', recintoId)],
    );
    return result.documents.map(_mesaFromDoc).toList();
  }

  @override
  Future<List<MesaElectoral>> getMesasByVeedor(String authUserId) async {
    final result = await _svc.databases.listDocuments(
      databaseId: AppwriteService.databaseId,
      collectionId: AppwriteService.mesasCollectionId,
      queries: [Query.equal('veedor_auth_id', authUserId)],
    );
    return result.documents.map(_mesaFromDoc).toList();
  }

  MesaElectoral _mesaFromDoc(doc) => MesaElectoral(
        id: doc.$id,
        numero: doc.data['numero'] ?? '',
        recinto: doc.data['recinto'] ?? '',
        recintoId: doc.data['recinto_id'] ?? '',
        municipio: doc.data['municipio'] ?? '',
        departamento: doc.data['departamento'] ?? '',
        totalHabilitados: doc.data['total_habilitados'] ?? 0,
        estado: doc.data['estado'] ?? 'activa',
        veedorAuthId: doc.data['veedor_auth_id'],
      );

  // ── Recintos ───────────────────────────────────────────────────────────────

  @override
  Future<List<Recinto>> getRecintos() async {
    final result = await _svc.databases.listDocuments(
      databaseId: AppwriteService.databaseId,
      collectionId: AppwriteService.recintosCollectionId,
    );
    return result.documents
        .map((doc) => Recinto.fromMap({...doc.data, '\$id': doc.$id}))
        .toList();
  }

  @override
  Future<Recinto> createRecinto({
    required String canton,
    required String parroquia,
    required String nombre,
    required int numMesas,
  }) async {
    final doc = await _svc.databases.createDocument(
      databaseId: AppwriteService.databaseId,
      collectionId: AppwriteService.recintosCollectionId,
      documentId: ID.unique(),
      data: {
        'canton': canton,
        'parroquia': parroquia,
        'nombre': nombre,
        'num_mesas': numMesas,
      },
    );
    return Recinto.fromMap({...doc.data, '\$id': doc.$id});
  }

  // ── Actas ──────────────────────────────────────────────────────────────────

  @override
  Future<void> saveActa(ActaEscrutinio acta) async {
    await _svc.databases.createDocument(
      databaseId: AppwriteService.databaseId,
      collectionId: AppwriteService.actasCollectionId,
      documentId: ID.unique(),
      data: acta.toMap(),
    );
  }

  @override
  Future<void> updateActa(ActaEscrutinio acta) async {
    await _svc.databases.updateDocument(
      databaseId: AppwriteService.databaseId,
      collectionId: AppwriteService.actasCollectionId,
      documentId: acta.id,
      data: acta.toMap(),
    );
  }

  @override
  Future<List<ActaEscrutinio>> getActasByMesa(String mesaId) async {
    final result = await _svc.databases.listDocuments(
      databaseId: AppwriteService.databaseId,
      collectionId: AppwriteService.actasCollectionId,
      queries: [Query.equal('mesa_id', mesaId)],
    );
    return result.documents
        .map((doc) => ActaEscrutinio.fromMap({...doc.data, '\$id': doc.$id}))
        .toList();
  }

  // ── Usuarios ───────────────────────────────────────────────────────────────

  @override
  Future<Usuario> createUsuario({
    required String cedula,
    required String nombres,
    required String apellidos,
    required String telefono,
    required String email,
    required RolUsuario rol,
    String? recintoId,
  }) async {
    const password = 'Ecuador2026';
    final fakeEmail = '$cedula${AppwriteConstants.emailDomain}';

    // 1. Crear en Appwrite Auth
    final authUser = await _svc.account.create(
      userId: ID.unique(),
      email: fakeEmail,
      password: password,
      name: '$nombres $apellidos',
    );

    // 2. Guardar perfil en colección usuarios
    final doc = await _svc.databases.createDocument(
      databaseId: AppwriteService.databaseId,
      collectionId: AppwriteService.usuariosCollectionId,
      documentId: ID.unique(),
      data: {
        'cedula': cedula,
        'nombres': nombres,
        'apellidos': apellidos,
        'telefono': telefono,
        'email': email,
        'rol': rol.toApiString(),
        'recinto_id': recintoId,
        'debe_cambiar_password': true,
        'auth_user_id': authUser.$id,
      },
    );

    return Usuario.fromMap({...doc.data, '\$id': doc.$id});
  }

  @override
  Future<List<Usuario>> getCoordinadoresByRecinto(String recintoId) async {
    final result = await _svc.databases.listDocuments(
      databaseId: AppwriteService.databaseId,
      collectionId: AppwriteService.usuariosCollectionId,
      queries: [
        Query.equal('rol', 'coordinador_recinto'),
        Query.equal('recinto_id', recintoId),
      ],
    );
    return result.documents
        .map((doc) => Usuario.fromMap({...doc.data, '\$id': doc.$id}))
        .toList();
  }

  @override
  Future<List<Usuario>> getVeedoresByRecinto(String recintoId) async {
    final result = await _svc.databases.listDocuments(
      databaseId: AppwriteService.databaseId,
      collectionId: AppwriteService.usuariosCollectionId,
      queries: [
        Query.equal('rol', 'veedor'),
        Query.equal('recinto_id', recintoId),
      ],
    );
    return result.documents
        .map((doc) => Usuario.fromMap({...doc.data, '\$id': doc.$id}))
        .toList();
  }

  @override
  Future<void> asignarVeedorAMesa(String authUserId, String mesaId) async {
    await _svc.databases.updateDocument(
      databaseId: AppwriteService.databaseId,
      collectionId: AppwriteService.mesasCollectionId,
      documentId: mesaId,
      data: {'veedor_auth_id': authUserId},
    );
  }

  // ── Organizaciones ─────────────────────────────────────────────────────────

  @override
  Future<List<OrganizacionPolitica>> getOrganizaciones(
      String dignidad) async {
    final result = await _svc.databases.listDocuments(
      databaseId: AppwriteService.databaseId,
      collectionId: AppwriteService.organizacionesCollectionId,
      queries: [Query.equal('dignidad', dignidad)],
    );
    return result.documents
        .map((doc) =>
            OrganizacionPolitica.fromMap({...doc.data, '\$id': doc.$id}))
        .toList();
  }

  // ── Storage ────────────────────────────────────────────────────────────────

  Future<String> uploadActaFoto(String filePath) async {
    final file = await _svc.storage.createFile(
      bucketId: AppwriteService.actasFotosBucketId,
      fileId: ID.unique(),
      file: InputFile.fromPath(path: filePath),
    );
    return file.$id;
  }
}

          
================================================
📄 ARCHIVO: lib\features\electoral\domain\usecases\get_mesas.dart
================================================

import '../entities/mesa_electoral.dart';
import '../repositories/electoral_repository.dart';

class GetMesas {
  final ElectoralRepository repository;

  GetMesas(this.repository);

  Future<List<MesaElectoral>> call() {
    return repository.getMesas();
  }
}

          
================================================
📄 ARCHIVO: lib\features\electoral\presentation\controllers\electoral_controller.dart
================================================

import 'package:flutter/foundation.dart';
import '../../domain/entities/acta_escrutinio.dart';
import '../../domain/entities/mesa_electoral.dart';
import '../../domain/entities/recinto.dart';
import '../../domain/repositories/electoral_repository.dart';
import '../../../auth/domain/usuario.dart';

enum OpStatus { idle, loading, success, error }

class ElectoralController extends ChangeNotifier {
  final ElectoralRepository _repo;

  ElectoralController(this._repo);

  // ── Estado ─────────────────────────────────────────────────────────────────
  OpStatus status = OpStatus.idle;
  String? errorMessage;

  List<MesaElectoral> mesas = [];
  List<Recinto> recintos = [];
  List<OrganizacionPolitica> orgAlcalde = [];
  List<OrganizacionPolitica> orgPrefecto = [];
  List<ActaEscrutinio> actasMesa = [];
  List<Usuario> usuarios = [];

  // ── Helpers ────────────────────────────────────────────────────────────────

  void _setLoading() {
    status = OpStatus.loading;
    errorMessage = null;
    notifyListeners();
  }

  void _setError(Object e) {
    status = OpStatus.error;
    errorMessage = e.toString();
    notifyListeners();
  }

  void _setSuccess() {
    status = OpStatus.success;
    notifyListeners();
  }

  // ── Mesas ──────────────────────────────────────────────────────────────────

  Future<void> loadMesasByRecinto(String recintoId) async {
    _setLoading();
    try {
      mesas = await _repo.getMesasByRecinto(recintoId);
      _setSuccess();
    } catch (e) {
      _setError(e);
    }
  }

  Future<void> loadMesasByVeedor(String authUserId) async {
    _setLoading();
    try {
      mesas = await _repo.getMesasByVeedor(authUserId);
      _setSuccess();
    } catch (e) {
      _setError(e);
    }
  }

  // ── Recintos ───────────────────────────────────────────────────────────────

  Future<void> loadRecintos() async {
    _setLoading();
    try {
      recintos = await _repo.getRecintos();
      _setSuccess();
    } catch (e) {
      _setError(e);
    }
  }

  Future<bool> createRecinto({
    required String canton,
    required String parroquia,
    required String nombre,
    required int numMesas,
  }) async {
    _setLoading();
    try {
      final r = await _repo.createRecinto(
        canton: canton,
        parroquia: parroquia,
        nombre: nombre,
        numMesas: numMesas,
      );
      recintos = [...recintos, r];
      _setSuccess();
      return true;
    } catch (e) {
      _setError(e);
      return false;
    }
  }

  // ── Actas ──────────────────────────────────────────────────────────────────

  Future<void> loadActasByMesa(String mesaId) async {
    _setLoading();
    try {
      actasMesa = await _repo.getActasByMesa(mesaId);
      _setSuccess();
    } catch (e) {
      _setError(e);
    }
  }

  Future<bool> saveActa(ActaEscrutinio acta) async {
    _setLoading();
    try {
      if (acta.id.isEmpty) {
        await _repo.saveActa(acta);
      } else {
        await _repo.updateActa(acta);
      }
      _setSuccess();
      return true;
    } catch (e) {
      _setError(e);
      return false;
    }
  }

  // ── Organizaciones ─────────────────────────────────────────────────────────

  Future<void> loadOrganizaciones() async {
    _setLoading();
    try {
      orgAlcalde = await _repo.getOrganizaciones('alcalde');
      orgPrefecto = await _repo.getOrganizaciones('prefecto');
      _setSuccess();
    } catch (e) {
      _setError(e);
    }
  }

  // ── Usuarios ───────────────────────────────────────────────────────────────

  Future<bool> createUsuario({
    required String cedula,
    required String nombres,
    required String apellidos,
    required String telefono,
    required String email,
    required RolUsuario rol,
    String? recintoId,
  }) async {
    _setLoading();
    try {
      final u = await _repo.createUsuario(
        cedula: cedula,
        nombres: nombres,
        apellidos: apellidos,
        telefono: telefono,
        email: email,
        rol: rol,
        recintoId: recintoId,
      );
      usuarios = [...usuarios, u];
      _setSuccess();
      return true;
    } catch (e) {
      _setError(e);
      return false;
    }
  }

  Future<void> loadVeedores(String recintoId) async {
    _setLoading();
    try {
      usuarios = await _repo.getVeedoresByRecinto(recintoId);
      _setSuccess();
    } catch (e) {
      _setError(e);
    }
  }

  Future<bool> asignarVeedor(String authUserId, String mesaId) async {
    _setLoading();
    try {
      await _repo.asignarVeedorAMesa(authUserId, mesaId);
      _setSuccess();
      return true;
    } catch (e) {
      _setError(e);
      return false;
    }
  }
}

          
================================================
📄 ARCHIVO: lib\features\electoral\presentation\screens\acta_form_screen.dart
================================================

import 'dart:io';
import 'dart:math';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:geolocator/geolocator.dart';
import 'package:image_picker/image_picker.dart';
import 'package:image/image.dart' as img;
import 'package:provider/provider.dart';
import '../controllers/electoral_controller.dart';
import '../../domain/entities/acta_escrutinio.dart';
import '../../domain/entities/mesa_electoral.dart';
import '../../domain/entities/voto_candidato.dart';
import '../../domain/repositories/electoral_repository.dart';
import '../../../../core/appwrite_service.dart';
import 'package:appwrite/appwrite.dart';

class ActaFormScreen extends StatefulWidget {
  final MesaElectoral mesa;
  final String dignidad; // 'alcalde' | 'prefecto'
  final bool puedeEditar; // coordinador puede editar cualquier acta
  final ActaEscrutinio? actaExistente;

  const ActaFormScreen({
    super.key,
    required this.mesa,
    this.dignidad = 'alcalde',
    this.puedeEditar = false,
    this.actaExistente,
  });

  @override
  State<ActaFormScreen> createState() => _ActaFormScreenState();
}

class _ActaFormScreenState extends State<ActaFormScreen> {
  final _formKey = GlobalKey<FormState>();
  final _sufragantesCtrl = TextEditingController();
  final _nulosCtrl = TextEditingController();
  final _blancoCtrl = TextEditingController();

  List<OrganizacionPolitica> _orgs = [];
  final Map<String, TextEditingController> _votosCtrls = {};

  File? _foto;
  double? _lat, _lng;
  String? _fotoFileId;

  bool _loadingOrgs = true;
  bool _guardando = false;
  String? _error;

  @override
  void initState() {
    super.initState();
    _loadOrgs();
    if (widget.actaExistente != null) _cargarActaExistente();
  }

  void _cargarActaExistente() {
    final a = widget.actaExistente!;
    _sufragantesCtrl.text = a.votosEmitidos.toString();
    _nulosCtrl.text = a.votosNulos.toString();
    _blancoCtrl.text = a.votosEnBlanco.toString();
    _lat = a.latitud;
    _lng = a.longitud;
    _fotoFileId = a.fotoFileId;
  }

  Future<void> _loadOrgs() async {
    final ec = context.read<ElectoralController>();
    await ec.loadOrganizaciones();
    if (!mounted) return;
    setState(() {
      _orgs = widget.dignidad == 'alcalde'
          ? ec.orgAlcalde
          : ec.orgPrefecto;
      for (final o in _orgs) {
        final ctrl = TextEditingController(text: '0');
        _votosCtrls[o.id] = ctrl;
        // rellenar si hay acta existente
        if (widget.actaExistente != null) {
          final voto = widget.actaExistente!.votosPorCandidato
              .where((v) => v.candidato == o.candidato)
              .firstOrNull;
          if (voto != null) ctrl.text = voto.votos.toString();
        }
      }
      _loadingOrgs = false;
    });
  }

  @override
  void dispose() {
    _sufragantesCtrl.dispose();
    _nulosCtrl.dispose();
    _blancoCtrl.dispose();
    for (final c in _votosCtrls.values) {
      c.dispose();
    }
    super.dispose();
  }

  // ── GPS ────────────────────────────────────────────────────────────────────

  Future<bool> _obtenerGPS() async {
    LocationPermission perm = await Geolocator.checkPermission();
    if (perm == LocationPermission.denied) {
      perm = await Geolocator.requestPermission();
    }
    if (perm == LocationPermission.deniedForever ||
        perm == LocationPermission.denied) {
      if (mounted) {
        ScaffoldMessenger.of(context).showSnackBar(
          const SnackBar(
            content: Text(
              'Permiso de ubicación denegado. '
              'Debes habilitarlo en ajustes para continuar.',
            ),
            backgroundColor: Colors.red,
            duration: Duration(seconds: 4),
          ),
        );
      }
      return false;
    }
    final pos = await Geolocator.getCurrentPosition();
    setState(() {
      _lat = pos.latitude;
      _lng = pos.longitude;
    });
    return true;
  }

  // ── Cámara + Blur ──────────────────────────────────────────────────────────

  Future<void> _tomarFoto() async {
    // 1. GPS primero
    final gpsOk = await _obtenerGPS();
    if (!gpsOk) return;

    // 2. Cámara
    final picker = ImagePicker();
    final picked = await picker.pickImage(
      source: ImageSource.camera,
      imageQuality: 85,
    );
    if (picked == null) return;

    final file = File(picked.path);
    final bytes = await file.readAsBytes();
    final decoded = img.decodeImage(bytes);

    if (decoded == null) {
      if (mounted) {
        ScaffoldMessenger.of(context).showSnackBar(
          const SnackBar(content: Text('No se pudo procesar la imagen.')),
        );
      }
      return;
    }

    // 3. Validación de nitidez con varianza del Laplaciano
    final blurScore = _laplacianVariance(decoded);
    if (blurScore < 120) {
      if (mounted) {
        ScaffoldMessenger.of(context).showSnackBar(
          SnackBar(
            content: Text(
              'Imagen borrosa (nitidez: ${blurScore.toStringAsFixed(1)}). '
              'Por favor, toma la foto de nuevo.',
            ),
            backgroundColor: Colors.orange,
            duration: const Duration(seconds: 4),
          ),
        );
      }
      return;
    }

    setState(() => _foto = file);
  }

  /// Varianza del Laplaciano: mide bordes de alta frecuencia.
  /// Valor bajo → imagen borrosa. Umbral recomendado: 120.
  double _laplacianVariance(img.Image image) {
    final gray = img.grayscale(image);
    final pixels = <double>[];

    for (int y = 1; y < gray.height - 1; y++) {
      for (int x = 1; x < gray.width - 1; x++) {
        final center = img.getLuminance(gray.getPixel(x, y));
        final top = img.getLuminance(gray.getPixel(x, y - 1));
        final bottom = img.getLuminance(gray.getPixel(x, y + 1));
        final left = img.getLuminance(gray.getPixel(x - 1, y));
        final right = img.getLuminance(gray.getPixel(x + 1, y));
        final lap = (4 * center - top - bottom - left - right).abs().toDouble();
        pixels.add(lap);
      }
    }

    final mean = pixels.reduce((a, b) => a + b) / pixels.length;
    final variance =
        pixels.map((p) => pow(p - mean, 2)).reduce((a, b) => a + b) /
            pixels.length;
    return variance.toDouble();
  }

  // ── Subir foto ─────────────────────────────────────────────────────────────

  Future<String?> _uploadFoto(File foto) async {
    final svc = context.read<AppwriteService>();
    final file = await svc.storage.createFile(
      bucketId: AppwriteService.actasFotosBucketId,
      fileId: ID.unique(),
      file: InputFile.fromPath(path: foto.path),
    );
    return file.$id;
  }

  // ── Validación y guardado ──────────────────────────────────────────────────

  Future<void> _guardar() async {
    if (!_formKey.currentState!.validate()) return;

    if (_foto == null && _fotoFileId == null) {
      setState(() => _error = 'Debes fotografiar el acta antes de guardar.');
      return;
    }

    final sufragantes = int.tryParse(_sufragantesCtrl.text) ?? 0;
    final nulos = int.tryParse(_nulosCtrl.text) ?? 0;
    final blanco = int.tryParse(_blancoCtrl.text) ?? 0;

    final votos = _orgs.map((o) {
      final v = int.tryParse(_votosCtrls[o.id]?.text ?? '0') ?? 0;
      return VotoCandidato(
          candidato: o.candidato, partido: o.nombre, votos: v);
    }).toList();

    final totalCalculado =
        votos.fold(0, (s, v) => s + v.votos) + nulos + blanco;

    if (totalCalculado != sufragantes) {
      setState(() => _error =
          'Los votos no coinciden con el total de sufragantes. '
          'Total calculado: $totalCalculado');
      return;
    }

    setState(() {
      _guardando = true;
      _error = null;
    });

    try {
      String? fileId = _fotoFileId;
      if (_foto != null) {
        fileId = await _uploadFoto(_foto!);
      }

      final acta = ActaEscrutinio(
        id: widget.actaExistente?.id ?? '',
        mesaId: widget.mesa.id,
        mesaNumero: widget.mesa.numero,
        dignidad: widget.dignidad,
        votosEmitidos: sufragantes,
        votosNulos: nulos,
        votosEnBlanco: blanco,
        votosPorCandidato: votos,
        fotoFileId: fileId,
        estado: 'enviada',
        latitud: _lat,
        longitud: _lng,
      );

      final ec = context.read<ElectoralController>();
      final ok = await ec.saveActa(acta);

      if (!mounted) return;

      if (ok) {
        ScaffoldMessenger.of(context).showSnackBar(
          const SnackBar(
            content: Text('Acta guardada exitosamente'),
            backgroundColor: Colors.green,
          ),
        );
        Navigator.pop(context);
      } else {
        setState(() => _error = ec.errorMessage);
      }
    } catch (e) {
      setState(() => _error = 'Error: $e');
    } finally {
      if (mounted) setState(() => _guardando = false);
    }
  }

  // ── UI ─────────────────────────────────────────────────────────────────────

  @override
  Widget build(BuildContext context) {
    final titulo = widget.dignidad == 'alcalde'
        ? 'Acta de Alcalde'
        : 'Acta de Prefecto';

    return Scaffold(
      appBar: AppBar(
        title: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(titulo),
            Text('Mesa ${widget.mesa.numero}',
                style: const TextStyle(fontSize: 12)),
          ],
        ),
      ),
      body: _loadingOrgs
          ? const Center(child: CircularProgressIndicator())
          : Form(
              key: _formKey,
              child: ListView(
                padding: const EdgeInsets.all(16),
                children: [
                  // ── Totales ────────────────────────────────────────────
                  _sectionTitle('Datos del acta'),
                  const SizedBox(height: 12),
                  _numField(_sufragantesCtrl, 'Total de sufragantes'),
                  const SizedBox(height: 12),
                  _numField(_nulosCtrl, 'Votos nulos'),
                  const SizedBox(height: 12),
                  _numField(_blancoCtrl, 'Votos en blanco'),
                  const SizedBox(height: 24),

                  // ── Votos por organización ─────────────────────────────
                  _sectionTitle('Votos por organización política'),
                  const SizedBox(height: 12),
                  ..._orgs.map((o) => Padding(
                        padding: const EdgeInsets.only(bottom: 12),
                        child: _numField(
                          _votosCtrls[o.id]!,
                          '${o.nombre} — ${o.candidato}',
                        ),
                      )),

                  // ── Error de validación ────────────────────────────────
                  if (_error != null) ...[
                    Container(
                      padding: const EdgeInsets.all(12),
                      decoration: BoxDecoration(
                        color: Colors.red.shade50,
                        borderRadius: BorderRadius.circular(8),
                        border: Border.all(color: Colors.red.shade200),
                      ),
                      child: Text(_error!,
                          style: const TextStyle(color: Colors.red)),
                    ),
                    const SizedBox(height: 16),
                  ],

                  // ── GPS ────────────────────────────────────────────────
                  if (_lat != null)
                    Container(
                      padding: const EdgeInsets.all(10),
                      decoration: BoxDecoration(
                        color: Colors.green.shade50,
                        borderRadius: BorderRadius.circular(8),
                      ),
                      child: Row(
                        children: [
                          const Icon(Icons.location_on,
                              color: Colors.green, size: 18),
                          const SizedBox(width: 6),
                          Text(
                            'GPS: ${_lat!.toStringAsFixed(5)}, '
                            '${_lng!.toStringAsFixed(5)}',
                            style: const TextStyle(
                                fontSize: 12, color: Colors.green),
                          ),
                        ],
                      ),
                    ),
                  const SizedBox(height: 16),

                  // ── Foto ───────────────────────────────────────────────
                  _sectionTitle('Fotografía del acta'),
                  const SizedBox(height: 12),
                  if (_foto != null)
                    ClipRRect(
                      borderRadius: BorderRadius.circular(12),
                      child: Image.file(_foto!,
                          height: 200, fit: BoxFit.cover),
                    )
                  else if (_fotoFileId != null)
                    Container(
                      height: 60,
                      decoration: BoxDecoration(
                        color: Colors.green.shade50,
                        borderRadius: BorderRadius.circular(8),
                      ),
                      child: const Center(
                        child: Row(
                          mainAxisSize: MainAxisSize.min,
                          children: [
                            Icon(Icons.check_circle, color: Colors.green),
                            SizedBox(width: 8),
                            Text('Foto cargada previamente'),
                          ],
                        ),
                      ),
                    )
                  else
                    Container(
                      height: 120,
                      decoration: BoxDecoration(
                        color: Colors.grey.shade100,
                        borderRadius: BorderRadius.circular(12),
                        border: Border.all(color: Colors.grey.shade300),
                      ),
                      child: const Center(
                        child: Text('Sin foto',
                            style: TextStyle(color: Colors.grey)),
                      ),
                    ),
                  const SizedBox(height: 12),
                  OutlinedButton.icon(
                    icon: const Icon(Icons.camera_alt),
                    label: const Text('Fotografiar acta'),
                    onPressed: _tomarFoto,
                  ),
                  const SizedBox(height: 24),

                  // ── Guardar ────────────────────────────────────────────
                  FilledButton(
                    onPressed: _guardando ? null : _guardar,
                    style: FilledButton.styleFrom(
                        padding:
                            const EdgeInsets.symmetric(vertical: 16)),
                    child: _guardando
                        ? const SizedBox(
                            height: 20,
                            width: 20,
                            child: CircularProgressIndicator(
                                strokeWidth: 2, color: Colors.white),
                          )
                        : const Text('Guardar acta',
                            style: TextStyle(fontSize: 16)),
                  ),
                  const SizedBox(height: 32),
                ],
              ),
            ),
    );
  }

  Widget _sectionTitle(String text) => Text(
        text,
        style: const TextStyle(
            fontSize: 16, fontWeight: FontWeight.bold),
      );

  Widget _numField(TextEditingController ctrl, String label) =>
      TextFormField(
        controller: ctrl,
        keyboardType: TextInputType.number,
        inputFormatters: [FilteringTextInputFormatter.digitsOnly],
        decoration: InputDecoration(
            labelText: label, border: const OutlineInputBorder()),
        validator: (v) {
          if (v == null || v.isEmpty) return 'Requerido';
          if (int.tryParse(v) == null) return 'Número inválido';
          return null;
        },
      );
}

          
================================================
📄 ARCHIVO: lib\features\electoral\presentation\screens\home_screen.dart
================================================

import 'package:flutter/material.dart';
import '../../data/datasources/appwrite_datasource.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  final datasource = AppwriteDatasource();
  late Future mesas;

  @override
  void initState() {
    super.initState();
    mesas = datasource.getMesas();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text("Mesas Electorales")),
      body: FutureBuilder(
        future: mesas,
        builder: (context, snapshot) {
          if (!snapshot.hasData) {
            return const Center(child: CircularProgressIndicator());
          }

          final data = snapshot.data as List;

          return ListView.builder(
            itemCount: data.length,
            itemBuilder: (context, i) {
              final mesa = data[i];

              return ListTile(
                title: Text("Mesa ${mesa['numero']}"),
                subtitle: Text(mesa['recinto']),
              );
            },
          );
        },
      ),
    );
  }
}

          
================================================
📄 ARCHIVO: lib\features\electoral\presentation\screens\panel_coordinador_screen.dart
================================================

import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import '../../../auth/presentation/auth_controller.dart';
import '../controllers/electoral_controller.dart';
import '../../../auth/domain/usuario.dart';
import 'panel_provincial_screen.dart' show showCrearUsuario;
import 'acta_form_screen.dart';

class PanelCoordinadorScreen extends StatefulWidget {
  const PanelCoordinadorScreen({super.key});

  @override
  State<PanelCoordinadorScreen> createState() =>
      _PanelCoordinadorScreenState();
}

class _PanelCoordinadorScreenState extends State<PanelCoordinadorScreen>
    with SingleTickerProviderStateMixin {
  late TabController _tabs;

  @override
  void initState() {
    super.initState();
    _tabs = TabController(length: 2, vsync: this);
    WidgetsBinding.instance.addPostFrameCallback((_) {
      final auth = context.read<AuthController>();
      final ec = context.read<ElectoralController>();
      final recintoId = auth.usuario?.recintoId ?? '';
      ec.loadMesasByRecinto(recintoId);
      ec.loadVeedores(recintoId);
    });
  }

  @override
  void dispose() {
    _tabs.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    final auth = context.read<AuthController>();

    return Scaffold(
      appBar: AppBar(
        title: const Text('Panel Coordinador'),
        actions: [
          IconButton(
            icon: const Icon(Icons.logout),
            onPressed: () async {
              await auth.logout();
              if (mounted) Navigator.pushReplacementNamed(context, '/');
            },
          ),
        ],
        bottom: TabBar(
          controller: _tabs,
          tabs: const [
            Tab(icon: Icon(Icons.table_chart), text: 'Mesas'),
            Tab(icon: Icon(Icons.people), text: 'Veedores'),
          ],
        ),
      ),
      body: TabBarView(
        controller: _tabs,
        children: [
          _MesasCoordTab(recintoId: auth.usuario?.recintoId ?? ''),
          _VeedoresTab(recintoId: auth.usuario?.recintoId ?? ''),
        ],
      ),
      floatingActionButton: Consumer<ElectoralController>(
        builder: (ctx, ec, _) => FloatingActionButton.extended(
          onPressed: () {
            if (_tabs.index == 1) {
              showCrearUsuario(
                context, ec, RolUsuario.veedor,
                recintoId: auth.usuario?.recintoId,
              );
            }
          },
          icon: const Icon(Icons.add),
          label: Text(_tabs.index == 1 ? 'Nuevo veedor' : ''),
        ),
      ),
    );
  }
}

class _MesasCoordTab extends StatelessWidget {
  final String recintoId;
  const _MesasCoordTab({required this.recintoId});

  Color _colorEstado(String estado) {
    switch (estado) {
      case 'escrutada':
        return Colors.green;
      case 'cerrada':
        return Colors.orange;
      default:
        return Colors.grey;
    }
  }

  @override
  Widget build(BuildContext context) {
    return Consumer<ElectoralController>(
      builder: (_, ec, __) {
        if (ec.status == OpStatus.loading && ec.mesas.isEmpty) {
          return const Center(child: CircularProgressIndicator());
        }
        final total = ec.mesas.length;
        final conActa = ec.mesas
            .where((m) => m.estado == 'escrutada')
            .length;

        return Column(
          children: [
            Container(
              margin: const EdgeInsets.all(16),
              padding: const EdgeInsets.all(16),
              decoration: BoxDecoration(
                color: Theme.of(context).colorScheme.primaryContainer,
                borderRadius: BorderRadius.circular(12),
              ),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  _stat('Total', '$total'),
                  _stat('Con acta', '$conActa'),
                  _stat('Pendientes', '${total - conActa}'),
                ],
              ),
            ),
            Expanded(
              child: RefreshIndicator(
                onRefresh: () => ec.loadMesasByRecinto(recintoId),
                child: ListView.separated(
                  padding: const EdgeInsets.symmetric(horizontal: 16),
                  itemCount: ec.mesas.length,
                  separatorBuilder: (_, __) => const SizedBox(height: 8),
                  itemBuilder: (_, i) {
                    final m = ec.mesas[i];
                    return Card(
                      child: ListTile(
                        leading: CircleAvatar(
                          backgroundColor: _colorEstado(m.estado),
                          child: Text(m.numero,
                              style: const TextStyle(color: Colors.white)),
                        ),
                        title: Text('Mesa ${m.numero}'),
                        subtitle: Text(m.estado.toUpperCase()),
                        trailing: const Icon(Icons.chevron_right),
                        onTap: () => Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (_) =>
                                ActaFormScreen(mesa: m, puedeEditar: true),
                          ),
                        ),
                      ),
                    );
                  },
                ),
              ),
            ),
          ],
        );
      },
    );
  }

  Widget _stat(String label, String value) => Column(
        children: [
          Text(value,
              style: const TextStyle(
                  fontSize: 24, fontWeight: FontWeight.bold)),
          Text(label, style: const TextStyle(fontSize: 12)),
        ],
      );
}

class _VeedoresTab extends StatelessWidget {
  final String recintoId;
  const _VeedoresTab({required this.recintoId});

  @override
  Widget build(BuildContext context) {
    return Consumer<ElectoralController>(
      builder: (_, ec, __) {
        if (ec.status == OpStatus.loading && ec.usuarios.isEmpty) {
          return const Center(child: CircularProgressIndicator());
        }
        if (ec.usuarios.isEmpty) {
          return const Center(child: Text('Sin veedores registrados.'));
        }
        return ListView.separated(
          padding: const EdgeInsets.all(16),
          itemCount: ec.usuarios.length,
          separatorBuilder: (_, __) => const SizedBox(height: 8),
          itemBuilder: (_, i) {
            final u = ec.usuarios[i];
            return Card(
              child: ListTile(
                leading: const CircleAvatar(child: Icon(Icons.person)),
                title: Text(u.nombreCompleto),
                subtitle: Text('Cédula: ${u.cedula}'),
                trailing: TextButton(
                  onPressed: () => _showAsignarMesa(context, ec, u),
                  child: const Text('Asignar mesa'),
                ),
              ),
            );
          },
        );
      },
    );
  }

  void _showAsignarMesa(
      BuildContext context, ElectoralController ec, Usuario veedor) {
    showDialog(
      context: context,
      builder: (_) => AlertDialog(
        title: Text('Asignar mesa a ${veedor.nombreCompleto}'),
        content: SizedBox(
          width: 300,
          child: ListView.builder(
            shrinkWrap: true,
            itemCount: ec.mesas.length,
            itemBuilder: (_, i) {
              final m = ec.mesas[i];
              return ListTile(
                title: Text('Mesa ${m.numero}'),
                subtitle: Text(m.estado),
                onTap: () async {
                  Navigator.pop(context);
                  await ec.asignarVeedor(veedor.authUserId, m.id);
                  if (context.mounted) {
                    ScaffoldMessenger.of(context).showSnackBar(
                      SnackBar(
                          content: Text(
                              'Veedor asignado a mesa ${m.numero}')),
                    );
                  }
                },
              );
            },
          ),
        ),
        actions: [
          TextButton(
            onPressed: () => Navigator.pop(context),
            child: const Text('Cancelar'),
          ),
        ],
      ),
    );
  }
}

          
================================================
📄 ARCHIVO: lib\features\electoral\presentation\screens\panel_provincial_screen.dart
================================================

import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import '../../../auth/presentation/auth_controller.dart';
import '../controllers/electoral_controller.dart';
import '../../../auth/domain/usuario.dart';

class PanelProvincialScreen extends StatefulWidget {
  const PanelProvincialScreen({super.key});

  @override
  State<PanelProvincialScreen> createState() => _PanelProvincialScreenState();
}

class _PanelProvincialScreenState extends State<PanelProvincialScreen>
    with SingleTickerProviderStateMixin {
  late TabController _tabs;

  @override
  void initState() {
    super.initState();
    _tabs = TabController(length: 2, vsync: this);
    WidgetsBinding.instance.addPostFrameCallback((_) {
      context.read<ElectoralController>().loadRecintos();
    });
  }

  @override
  void dispose() {
    _tabs.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    final auth = context.read<AuthController>();

    return Scaffold(
      appBar: AppBar(
        title: const Text('Panel Provincial'),
        actions: [
          IconButton(
            icon: const Icon(Icons.logout),
            onPressed: () async {
              await auth.logout();
              if (mounted) Navigator.pushReplacementNamed(context, '/');
            },
          ),
        ],
        bottom: TabBar(
          controller: _tabs,
          tabs: const [
            Tab(icon: Icon(Icons.location_city), text: 'Recintos'),
            Tab(icon: Icon(Icons.people), text: 'Coordinadores'),
          ],
        ),
      ),
      body: TabBarView(
        controller: _tabs,
        children: const [
          _RecintosTab(),
          _CoordinadoresTab(),
        ],
      ),
      floatingActionButton: Consumer<ElectoralController>(
        builder: (ctx, ec, _) {
          return FloatingActionButton.extended(
            onPressed: () => _tabs.index == 0
                ? _showCrearRecinto(context, ec)
                : _showCrearCoordinador(context, ec),
            icon: const Icon(Icons.add),
            label: Text(_tabs.index == 0 ? 'Nuevo recinto' : 'Nuevo coordinador'),
          );
        },
      ),
    );
  }

  void _showCrearRecinto(BuildContext context, ElectoralController ec) {
    final cantonCtrl = TextEditingController();
    final parroquiaCtrl = TextEditingController();
    final nombreCtrl = TextEditingController();
    final mesasCtrl = TextEditingController(text: '1');
    final formKey = GlobalKey<FormState>();

    showModalBottomSheet(
      context: context,
      isScrollControlled: true,
      builder: (_) => Padding(
        padding: EdgeInsets.only(
          left: 20, right: 20, top: 20,
          bottom: MediaQuery.of(context).viewInsets.bottom + 20,
        ),
        child: Form(
          key: formKey,
          child: Column(
            mainAxisSize: MainAxisSize.min,
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: [
              Text('Nuevo Recinto',
                  style: Theme.of(context).textTheme.titleLarge),
              const SizedBox(height: 16),
              _field(cantonCtrl, 'Cantón'),
              const SizedBox(height: 12),
              _field(parroquiaCtrl, 'Parroquia'),
              const SizedBox(height: 12),
              _field(nombreCtrl, 'Nombre del recinto'),
              const SizedBox(height: 12),
              TextFormField(
                controller: mesasCtrl,
                keyboardType: TextInputType.number,
                decoration: const InputDecoration(
                    labelText: 'Número de mesas (JRV)',
                    border: OutlineInputBorder()),
                validator: (v) =>
                    (v == null || int.tryParse(v) == null) ? 'Inválido' : null,
              ),
              const SizedBox(height: 20),
              FilledButton(
                onPressed: () async {
                  if (!formKey.currentState!.validate()) return;
                  Navigator.pop(context);
                  await ec.createRecinto(
                    canton: cantonCtrl.text.trim(),
                    parroquia: parroquiaCtrl.text.trim(),
                    nombre: nombreCtrl.text.trim(),
                    numMesas: int.parse(mesasCtrl.text.trim()),
                  );
                },
                child: const Text('Crear recinto'),
              ),
            ],
          ),
        ),
      ),
    );
  }

  void _showCrearCoordinador(BuildContext context, ElectoralController ec) {
    showCrearUsuario(context, ec, RolUsuario.coordinadorRecinto);
  }

  Widget _field(TextEditingController ctrl, String label) => TextFormField(
        controller: ctrl,
        decoration:
            InputDecoration(labelText: label, border: const OutlineInputBorder()),
        validator: (v) => (v == null || v.isEmpty) ? 'Requerido' : null,
      );
}

void showCrearUsuario(
    BuildContext context, ElectoralController ec, RolUsuario rol,
    {String? recintoId}) {
  final cedulaCtrl = TextEditingController();
  final nombresCtrl = TextEditingController();
  final apellidosCtrl = TextEditingController();
  final telefonoCtrl = TextEditingController();
  final emailCtrl = TextEditingController();
  final formKey = GlobalKey<FormState>();

  String? recintoSeleccionado = recintoId;

  showModalBottomSheet(
    context: context,
    isScrollControlled: true,
    builder: (ctx) => StatefulBuilder(
      builder: (ctx, setS) => Padding(
        padding: EdgeInsets.only(
          left: 20, right: 20, top: 20,
          bottom: MediaQuery.of(context).viewInsets.bottom + 20,
        ),
        child: Form(
          key: formKey,
          child: SingleChildScrollView(
            child: Column(
              mainAxisSize: MainAxisSize.min,
              crossAxisAlignment: CrossAxisAlignment.stretch,
              children: [
                Text(
                  rol == RolUsuario.coordinadorRecinto
                      ? 'Nuevo Coordinador de Recinto'
                      : 'Nuevo Veedor',
                  style: Theme.of(context).textTheme.titleLarge,
                ),
                const SizedBox(height: 16),
                _buildField(cedulaCtrl, 'Cédula',
                    type: TextInputType.number),
                const SizedBox(height: 10),
                _buildField(nombresCtrl, 'Nombres'),
                const SizedBox(height: 10),
                _buildField(apellidosCtrl, 'Apellidos'),
                const SizedBox(height: 10),
                _buildField(telefonoCtrl, 'Teléfono',
                    type: TextInputType.phone),
                const SizedBox(height: 10),
                _buildField(emailCtrl, 'Correo electrónico',
                    type: TextInputType.emailAddress),
                const SizedBox(height: 10),
                // Selector de recinto si es coordinador y no viene predefinido
                if (rol == RolUsuario.coordinadorRecinto && recintoId == null)
                  Consumer<ElectoralController>(
                    builder: (_, ec2, __) => DropdownButtonFormField<String>(
                      decoration: const InputDecoration(
                          labelText: 'Recinto asignado',
                          border: OutlineInputBorder()),
                      items: ec2.recintos
                          .map((r) => DropdownMenuItem(
                                value: r.id,
                                child: Text(r.nombre),
                              ))
                          .toList(),
                      onChanged: (v) => setS(() => recintoSeleccionado = v),
                      validator: (v) =>
                          v == null ? 'Selecciona un recinto' : null,
                    ),
                  ),
                const SizedBox(height: 20),
                FilledButton(
                  onPressed: () async {
                    if (!formKey.currentState!.validate()) return;
                    Navigator.pop(ctx);
                    await ec.createUsuario(
                      cedula: cedulaCtrl.text.trim(),
                      nombres: nombresCtrl.text.trim(),
                      apellidos: apellidosCtrl.text.trim(),
                      telefono: telefonoCtrl.text.trim(),
                      email: emailCtrl.text.trim(),
                      rol: rol,
                      recintoId: recintoSeleccionado,
                    );
                  },
                  child: const Text('Crear usuario'),
                ),
              ],
            ),
          ),
        ),
      ),
    ),
  );
}

Widget _buildField(TextEditingController ctrl, String label,
    {TextInputType? type}) =>
    TextFormField(
      controller: ctrl,
      keyboardType: type,
      decoration: InputDecoration(
          labelText: label, border: const OutlineInputBorder()),
      validator: (v) => (v == null || v.isEmpty) ? 'Requerido' : null,
    );

// ── Tab Recintos ───────────────────────────────────────────────────────────

class _RecintosTab extends StatelessWidget {
  const _RecintosTab();

  @override
  Widget build(BuildContext context) {
    return Consumer<ElectoralController>(
      builder: (_, ec, __) {
        if (ec.status == OpStatus.loading && ec.recintos.isEmpty) {
          return const Center(child: CircularProgressIndicator());
        }
        if (ec.recintos.isEmpty) {
          return const Center(child: Text('Sin recintos registrados.'));
        }
        return RefreshIndicator(
          onRefresh: () => ec.loadRecintos(),
          child: ListView.separated(
            padding: const EdgeInsets.all(16),
            itemCount: ec.recintos.length,
            separatorBuilder: (_, __) => const SizedBox(height: 8),
            itemBuilder: (_, i) {
              final r = ec.recintos[i];
              return Card(
                child: ListTile(
                  leading: CircleAvatar(
                    child: Text('${i + 1}',
                        style: const TextStyle(fontWeight: FontWeight.bold)),
                  ),
                  title: Text(r.nombre,
                      style:
                          const TextStyle(fontWeight: FontWeight.w600)),
                  subtitle: Text(
                      '${r.parroquia}, ${r.canton} · ${r.numMesas} mesas'),
                  trailing: const Icon(Icons.chevron_right),
                  onTap: () => Navigator.pushNamed(
                    context,
                    '/recinto-detalle',
                    arguments: r,
                  ),
                ),
              );
            },
          ),
        );
      },
    );
  }
}

// ── Tab Coordinadores ──────────────────────────────────────────────────────

class _CoordinadoresTab extends StatelessWidget {
  const _CoordinadoresTab();

  @override
  Widget build(BuildContext context) {
    return Consumer<ElectoralController>(
      builder: (_, ec, __) {
        if (ec.status == OpStatus.loading && ec.usuarios.isEmpty) {
          return const Center(child: CircularProgressIndicator());
        }
        if (ec.usuarios.isEmpty) {
          return const Center(
              child: Text('Sin coordinadores registrados.'));
        }
        return ListView.separated(
          padding: const EdgeInsets.all(16),
          itemCount: ec.usuarios.length,
          separatorBuilder: (_, __) => const SizedBox(height: 8),
          itemBuilder: (_, i) {
            final u = ec.usuarios[i];
            return Card(
              child: ListTile(
                leading: const CircleAvatar(
                    child: Icon(Icons.person)),
                title: Text(u.nombreCompleto),
                subtitle: Text('Cédula: ${u.cedula}'),
              ),
            );
          },
        );
      },
    );
  }
}

          
================================================
📄 ARCHIVO: lib\features\electoral\presentation\screens\panel_veedor_screen.dart
================================================

import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import '../../../auth/presentation/auth_controller.dart';
import '../controllers/electoral_controller.dart';
import 'acta_form_screen.dart';

class PanelVeedorScreen extends StatefulWidget {
  const PanelVeedorScreen({super.key});

  @override
  State<PanelVeedorScreen> createState() => _PanelVeedorScreenState();
}

class _PanelVeedorScreenState extends State<PanelVeedorScreen> {
  @override
  void initState() {
    super.initState();
    WidgetsBinding.instance.addPostFrameCallback((_) {
      final auth = context.read<AuthController>();
      context
          .read<ElectoralController>()
          .loadMesasByVeedor(auth.usuario?.authUserId ?? '');
    });
  }

  @override
  Widget build(BuildContext context) {
    final auth = context.read<AuthController>();

    return Scaffold(
      appBar: AppBar(
        title: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const Text('Mis Mesas'),
            Text(
              auth.usuario?.nombreCompleto ?? '',
              style: const TextStyle(fontSize: 12),
            ),
          ],
        ),
        actions: [
          IconButton(
            icon: const Icon(Icons.logout),
            onPressed: () async {
              await auth.logout();
              if (mounted) Navigator.pushReplacementNamed(context, '/');
            },
          ),
        ],
      ),
      body: Consumer<ElectoralController>(
        builder: (_, ec, __) {
          if (ec.status == OpStatus.loading && ec.mesas.isEmpty) {
            return const Center(child: CircularProgressIndicator());
          }

          if (ec.status == OpStatus.error) {
            return Center(
              child: Column(
                mainAxisSize: MainAxisSize.min,
                children: [
                  const Icon(Icons.error_outline,
                      size: 48, color: Colors.red),
                  const SizedBox(height: 8),
                  Text(ec.errorMessage ?? 'Error al cargar mesas'),
                  const SizedBox(height: 16),
                  FilledButton(
                    onPressed: () => ec.loadMesasByVeedor(
                        auth.usuario?.authUserId ?? ''),
                    child: const Text('Reintentar'),
                  ),
                ],
              ),
            );
          }

          if (ec.mesas.isEmpty) {
            return const Center(
              child: Text('No tienes mesas asignadas todavía.'),
            );
          }

          return RefreshIndicator(
            onRefresh: () => ec
                .loadMesasByVeedor(auth.usuario?.authUserId ?? ''),
            child: ListView.separated(
              padding: const EdgeInsets.all(16),
              itemCount: ec.mesas.length,
              separatorBuilder: (_, __) => const SizedBox(height: 12),
              itemBuilder: (_, i) {
                final mesa = ec.mesas[i];
                return Card(
                  elevation: 2,
                  child: Padding(
                    padding: const EdgeInsets.all(16),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Row(
                          children: [
                            CircleAvatar(
                              backgroundColor:
                                  Theme.of(context).colorScheme.primary,
                              child: Text(
                                mesa.numero,
                                style: const TextStyle(color: Colors.white),
                              ),
                            ),
                            const SizedBox(width: 12),
                            Expanded(
                              child: Column(
                                crossAxisAlignment:
                                    CrossAxisAlignment.start,
                                children: [
                                  Text(
                                    'Mesa ${mesa.numero}',
                                    style: const TextStyle(
                                        fontWeight: FontWeight.bold,
                                        fontSize: 16),
                                  ),
                                  Text(mesa.recinto,
                                      style: TextStyle(
                                          color: Colors.grey[600])),
                                ],
                              ),
                            ),
                            _estadoChip(mesa.estado),
                          ],
                        ),
                        const SizedBox(height: 16),
                        Row(
                          children: [
                            Expanded(
                              child: OutlinedButton.icon(
                                icon: const Icon(Icons.how_to_vote),
                                label: const Text('Acta Alcalde'),
                                onPressed: () => Navigator.push(
                                  context,
                                  MaterialPageRoute(
                                    builder: (_) => ActaFormScreen(
                                      mesa: mesa,
                                      dignidad: 'alcalde',
                                    ),
                                  ),
                                ),
                              ),
                            ),
                            const SizedBox(width: 8),
                            Expanded(
                              child: OutlinedButton.icon(
                                icon: const Icon(Icons.how_to_vote),
                                label: const Text('Acta Prefecto'),
                                onPressed: () => Navigator.push(
                                  context,
                                  MaterialPageRoute(
                                    builder: (_) => ActaFormScreen(
                                      mesa: mesa,
                                      dignidad: 'prefecto',
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
                );
              },
            ),
          );
        },
      ),
    );
  }

  Widget _estadoChip(String estado) {
    Color color;
    switch (estado) {
      case 'escrutada':
        color = Colors.green;
        break;
      case 'cerrada':
        color = Colors.orange;
        break;
      default:
        color = Colors.blue;
    }
    return Chip(
      label: Text(estado.toUpperCase(),
          style: const TextStyle(fontSize: 11, color: Colors.white)),
      backgroundColor: color,
      padding: EdgeInsets.zero,
    );
  }
}

          
================================================
📄 ARCHIVO: lib\main.dart
================================================

import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'core/appwrite_service.dart';
import 'features/auth/data/auth_datasource.dart';
import 'features/auth/data/auth_repository_impl.dart';
import 'features/auth/presentation/auth_controller.dart';
import 'features/auth/presentation/login_screen.dart';
import 'features/auth/presentation/cambiar_password_screen.dart';
import 'features/auth/presentation/recuperar_password_screen.dart';
import 'features/electoral/domain/repositories/electoral_repository_impl.dart';
import 'features/electoral/presentation/controllers/electoral_controller.dart';
import 'features/electoral/presentation/screens/panel_provincial_screen.dart';
import 'features/electoral/presentation/screens/panel_coordinador_screen.dart';
import 'features/electoral/presentation/screens/panel_veedor_screen.dart';

void main() {
  WidgetsFlutterBinding.ensureInitialized();
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    final appwriteService = AppwriteService();
    final authRepository = AuthRepositoryImpl(
      AuthDatasource(appwriteService),
    );
    final electoralRepository = ElectoralRepositoryImpl(appwriteService);

    return MultiProvider(
      providers: [
        Provider<AppwriteService>.value(value: appwriteService),
        ChangeNotifierProvider(
          create: (_) => AuthController(authRepository),
        ),
        ChangeNotifierProvider(
          create: (_) => ElectoralController(electoralRepository),
        ),
      ],
      child: MaterialApp(
        initialRoute: '/',
        routes: {
          '/': (_) => const LoginScreen(),
          '/cambiar-password': (_) => const CambiarPasswordScreen(),
          '/recuperar-password': (_) => const RecuperarPasswordScreen(),
          '/provincial': (_) => const PanelProvincialScreen(),
          '/coordinador': (_) => const PanelCoordinadorScreen(),
          '/veedor': (_) => const PanelVeedorScreen(),
        },
      ),
    );
  }
}


          
================================================
📄 ARCHIVO: pubspec.yaml
================================================

name: examenb2
description: Sistema de captura y validación de actas electorales

publish_to: 'none'

version: 1.0.0+1

environment:
  sdk: ">=3.0.0 <4.0.0"

dependencies:
  flutter:
    sdk: flutter

  # 🔥 Appwrite backend
  appwrite: ^25.2.0

  # 📸 Cámara y galería
  image_picker: ^1.1.2
  camera: ^0.10.5+9

  # 🧠 Procesamiento de imagen (borrosidad / análisis)
  image: ^4.1.7

  # 🎨 UI
  cupertino_icons: ^1.0.6
  flutter_svg: ^2.0.10+1

  # 🧭 Estado y navegación
  provider: ^6.1.2
  go_router: ^14.0.2
  geolocator: ^13.0.1

  # 🧰 Utilidades
  permission_handler: ^11.3.1
  uuid: ^4.4.2
  intl: ^0.19.0
  shared_preferences: ^2.3.1

dev_dependencies:
  flutter_test:
    sdk: flutter

  flutter_lints: ^4.0.0

flutter:
  uses-material-design: true

  assets:
    - assets/

          
================================================
📄 ARCHIVO: README.md
================================================

# examenb2

A new Flutter project.

## Getting Started

This project is a starting point for a Flutter application.

A few resources to get you started if this is your first Flutter project:

- [Learn Flutter](https://docs.flutter.dev/get-started/learn-flutter)
- [Write your first Flutter app](https://docs.flutter.dev/get-started/codelab)
- [Flutter learning resources](https://docs.flutter.dev/reference/learning-resources)

For help getting started with Flutter development, view the
[online documentation](https://docs.flutter.dev/), which offers tutorials,
samples, guidance on mobile development, and a full API reference.


          
================================================
📄 ARCHIVO: test\widget_test.dart
================================================

import 'package:flutter_test/flutter_test.dart';
import 'package:examenb2/main.dart';

void main() {
  testWidgets('App renders login screen', (WidgetTester tester) async {
    await tester.pumpWidget(const MyApp());
    expect(find.text('Control Electoral'), findsOneWidget);
  });
}


