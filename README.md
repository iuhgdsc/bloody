# Bloody - GDSC Solution Challenge 2023

## Getting Started

Bloody is a blood donation app that displays blood events created by hospitals or blood donation centers. Users can register for these events and donate blood through the app.

## 17 SDGs

Bloody is a intended to solve Goal 3: Good Health and Well-Being of the United Nations Sustainable Development Goals.

## Problem Statement

The problem statement is that the shortage of blood supply in the medical field is a significant issue, particularly in areas with low levels of economic and medical development. This shortage can lead to severe consequences, including a risk of accidents and death, health system stress, impact on labor productivity, and health disparities between ethnic and economic groups. There are several reasons for this shortage, including a lack of blood donors, medical staff, high costs of organizing blood donation activities, limited knowledge of blood donors, and inefficient blood donation applications in the market. This problem needs to be addressed to ensure that patients receive the necessary blood supply and prevent potential accidents and deaths.

## Features

- Users can register and login to the app.
- Users can view blood events (regular and emergency).
- Users can register for blood events.
- Users can view their registered events.
- Users can view their profile.

## Demo

[Youtube](https://youtu.be/EDCIDU-hPrU)

## Tech Stack

The app is built using the following technologies:

![Bloody](images/SC_Presentation.png)

## How we named the app and why

We chose the name Bloody because it is short and easy to remember. It's combination of the words blood and ready. When you are ready to donate blood, you can use Bloody to find blood donation events.

On the other hand, when the blood supply is low or there is an emergency, hospitals and blood donation centers will create blood donation events that could help save lives and reduce the shortage of blood.

## Team

Our team comes from the [Google Developer Student Clubs](https://developers.google.com/community/dsc) at Industrial University of Ho Chi Minh City.

- [Nguyen Xuan Long](https://github.com/longnguyen-cyber)
- [Nguyen Duc Chien](https://github.com/Kaiwinn)
- [Hoa Xuan Sang](https://github.com/HXSang)
- [Phong Dang Ngoc](https://github.com/PhonggDangg)

## Architecture

### Backend

Our backend is a REST API written in Node.js. It uses the Express framework and is connected to Firestore.

The backend is located in the `server` directory.

From the root of the project, cd into the backend directory:

```bash
cd server
```

To run the backend locally, you need to install the dependencies with:

```bash
yarn install
```

> Note: You need to have Node.js and Yarn installed on your machine.

Then, you can run the backend with:

```bash
yarn start
```

The backend will be running on `http://localhost:8000`.

Unfortunately, the backend is running locally and cannot be accessed from the frontend. To solve this, we use [ngrok](https://ngrok.com/). Ngrok allows us to expose our local server to the internet.

To run ngrok, you need to install it first. You can find the instructions [here](https://ngrok.com/download).

Once you have ngrok installed, you can start tunneling your local server which runs on port 8000 with:

```bash
ngrok http 8000
```

After running this command, you will see a URL that looks like this: `http://<random_string>.ngrok.io`. This is the URL that you need to use in the frontend.

### Frontend

Our frontend is a Flutter app. To run it, first you need to install Flutter development tools. You can find the instructions [here](https://flutter.dev/docs/get-started/install).

The frontend is located in the `app` directory.

From the root of the project, cd into the frontend directory:

```bash
cd app
```

Now, install the dependencies with:

```bash
flutter pub get
```

After that, you need to update the `baseUrl` in `lib/services/api_service.dart` to the URL that you got from ngrok.

```dart
  final String baseUrl = "<replace_with_ngrok_url>";
```

Then, you can run the app with:

```bash
flutter run lib/main.dart
```
