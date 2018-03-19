# Eta Android Animation Example

![eta-android-animation preview](eta-android-animation.gif)

## Prerequisites
- JDK 8
- [Eta](https://eta-lang.org/docs/eta-concepts/getting-started/install-eta#source-installation) (Build from source)
- [gradle-eta](https://github.com/typelead/gradle-eta)

## Running

```
$ git clone https://github.com/Jyothsnasrinivas/eta-android-animation.git
$ cd eta-android-animation
$ ./gradlew assembleDebug
```
## Testing on mobile or emulator

If you want to test it on your phone first enable the developer mode, connect your phone via USB and run the command. Similarly for testing on emulator.

```
$ ./gradlew installDebug
```

## Release APK

If you want to build the release apk which has proguard enabled, run the command below:

```
$ ./gradlew assembleRelease
```
