# Letter Tracer — ProGuard Rules
# WebView interface — keep all public methods accessible from JS
-keepclassmembers class com.lettertracer.** {
    public *;
}
-keep class com.lettertracer.MainActivity { *; }

# Suppress warnings for unused classes
-dontwarn android.webkit.**
