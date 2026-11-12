# bautista_mobprog

A new Flutter project.

1. What challenges did you encounter while installing or configuring Flutter?
The main challenges were [downloading and extracting the Flutter SDK, adding flutter\bin to the PATH, and installing Android Studio with the Android SDK and an emulator]. At first, the flutter command wasn’t recognized in my terminal because [the PATH wasn’t set correctly / I hadn’t restarted the terminal], so I had to fix my environment variables before anything else would work.

2. Did you encounter any errors when running flutter doctor?
Yes. Running flutter doctor showed [Android toolchain issues such as missing command-line tools or unaccepted licenses / no connected devices / Visual Studio or Chrome not found]. The specific error was: [paste exact message]. Seeing these marked clearly in the output helped me identify what was still missing from my setup.

3. How did you resolve installation, dependency, SDK, or device-related issues?
I resolved the missing command-line tools by installing them through Android Studio’s SDK Manager, and I fixed the license errors by running flutter doctor --android-licenses and accepting them. For the PATH problem, I added the Flutter bin folder to my environment variables and restarted the terminal. For device issues, I [created an AVD in Android Studio / enabled USB debugging on my phone / used Chrome as the target device]. When I got stuck, I also consulted the official Flutter documentation and [Stack Overflow / classmates / my instructor].

4. What did you learn about configuring a Flutter development environment?
I learned that Flutter depends on several tools working together: the Flutter SDK, the Dart SDK, the Android SDK, an IDE, and a device or emulator. flutter doctor is the main diagnostic tool because it shows exactly what is missing and often suggests the fix. I also learned that environment variables and SDK paths must be set correctly, and that [emulators need virtualization enabled in BIOS / tool versions must be compatible with each other].

5. What practices will you follow to make future Flutter development easier?
In the future, I will run flutter doctor first whenever something breaks, and keep Flutter, Android Studio, and the SDK tools updated with flutter upgrade. I will commit my work to Git regularly so I can recover from mistakes, read error messages fully before searching for solutions, and check the official docs first. I will also document my setup steps and fixes so I can repeat the process easily on another machine.