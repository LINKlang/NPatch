-keep class top.nkbe.npatch.metaloader.** {
    *;
}

# HiddenApiBypass is bundled into both meta-loader and patch-loader.
# Do not independently obfuscate it into root-level short class names,
# otherwise the two separately-built dex files may define incompatible
# classes such as La;, Lb;, Lc;, Ld;, etc. in the same ClassLoader.
-keep class org.lsposed.hiddenapibypass.** { *; }
-dontwarn org.lsposed.hiddenapibypass.**

-keepattributes *Annotation*,Signature,InnerClasses,EnclosingMethod
-keep class * extends androidx.room.Entity {
    <fields>;
}
-keep interface * extends androidx.room.Dao {
    <methods>;
}

-dontwarn androidx.annotation.NonNull
-dontwarn androidx.annotation.Nullable
-dontwarn androidx.annotation.VisibleForTesting
