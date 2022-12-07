#A Profile Page Application 
A new Flutter project.

## Getting Started

This project is a simple flutter application that appears to have the functionality of a user profile page. While running, the user may edit and save their name, phone number, email, and bio. While a page to edit the user's profile picture is present, it is not functional currently due to an unsolved exception. Since flutter SDK is for cross-platform mobile application development this project should work on any device with a few adjustments, but it was built using a windows machine.

## Running the Application

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


