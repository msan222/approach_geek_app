#A Profile Page Application 
A new Flutter project.

# Getting Started

This project is a simple flutter application that appears to have the functionality of a user profile page. While running, the user may edit and save their name, phone number, email, and bio. While a page to edit the user's profile picture is present, it is not functional currently due to an unsolved exception. Since flutter SDK is for cross-platform mobile application development this project should work on any device with a few adjustments, but it was built using a windows machine.

## Running the Application

### Windows Machine

To run the application on windows, flutter (sdk >=2.18.5 <3.0.0), an IDE (preferably VS Code), and google chrome must first be installed. Follow the steps below to run the project. 

1. Clone the project using the following commands:

```
$ git clone https://github.com/msan222/approach_geek_app.git
$ cd approach_geek_app
```
2. Make sure that the app dependencies are downloaded:

```
$ flutter pub get
```
3. Build the project for web:

```
$ flutter build web  --web-renderer=html  
```
4. Run the project on chrome (most reliable):

```
$ flutter run -d chrome --web-renderer html
```
5. To quit out of the project fully: Use ctrl+c

### MacOS

To run the application on a machine that uses MacOS you must have Xcode, flutter, and commandline tools installed. Android Studio and VS Code may also be used, but I specifically used the macOS terminal to run the project. Follow the instructions below, and if there are any issues with the maching not finding flutter please follow the links provided. 

https://docs.flutter.dev/get-started/install/macos#update-your-path

https://docs.flutter.dev/get-started/install/macos

1. Open a MacOS terminal session. 

2. If you do not have flutter already installed see the following steps, if you regularly use flutter with your Mac skip to step 3 *(I've included them since I do not use a Mac and it is the process I followed to get a successful run of my project, I recognize other users may have flutter permanently set on their enviroment variables):
  1a. Download the latest version of flutter.
  2a. navigate to the folder you are going to clone the project in (ex: Developer) then unzip the flutter download:
    ```
    $ cd ~/Developer
    $ unzip ~/Downloads/flutter_macos_3.3.9-stable.zip
    ```
   3a. Add the flutter tool to your path:
   ```
   $ export PATH="$PATH:`pwd`/flutter/bin"
   ```
   4a. Run flutter doctor to check dependencies and repair as necessary:
   ```
   $ flutter doctor
   ```

3. Clone my repository using git:
```
$ git clone https://github.com/msan222/approach_geek_app.git
```

4. Navigate into the project folder:
```
$ cd approach_geek_app
```

5. Check for dependencies:
```
$ flutter pub get
```

6. Build: **Please build for web render specifically to avoid ImageCodecException with the image I use
```
$ flutter build web  --web-renderer=html
```

7. Run Project: **Again, please use this specific run command to avoid conflicts with image loading. Other Run methods will not break the program but will not properly load my selected image.
```
$ flutter run -d chrome --web-renderer html
```

8. To exit the program simply exit the window. Thank you for trying it out!

   


