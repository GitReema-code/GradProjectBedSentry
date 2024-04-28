# BedSentry - IoT-Based Emergency Room Patient Tracking

NewLogo.png

## Overview

**BedSentry** is an innovative Internet of Things (IoT) solution designed to optimize Emergency Room (ER) efficiency by automating patient entry and exit tracking. By leveraging strategically placed sensors and real-time data collection, BedSentry estimates patient stay duration, streamlines patient flow management, and enhances decision-making for healthcare providers.

## Features

- **Automated Tracking**: BedSentry eliminates manual patient tracking by using weight sensors to detect patient entry and exit.
- **Real-Time Data**: The system continuously collects data, providing up-to-date information on patient occupancy and bed availability.
- **Patient Stay Estimation**: Based on historical data and current occupancy, BedSentry estimates how long a patient is likely to stay.
- **Decision Support**: Healthcare providers can make informed decisions about bed allocation, resource allocation, and patient prioritization.
- **Scalable and Adaptable**: BedSentry can be deployed in various healthcare settings, from small clinics to large hospitals.

## Technologies Used

- **Programming Language**: Dart (for the BedSentry application)
- **Database**: Connects to a database (e.g., MySQL, PostgreSQL) to store patient data and occupancy information.
- **Weight Sensors**: Interacts with weight sensors placed on hospital beds.
- **IoT Communication**: Utilizes MQTT or other protocols for communication between sensors and the central system.
- **Frontend**: Built using Flutter for a responsive and user-friendly interface.

## Installation

1. Clone this repository: `git clone https://github.com/GitReema-code/bedsentry.git`
2. Install dependencies: `flutter pub get`
3. Configure your database connection in `lib/config.dart`.
4. Run the app: `flutter run`

## Usage

1. Place weight sensors on hospital beds.
2. Launch the BedSentry app.
3. The app will automatically detect patient entry and exit.
4. View real-time occupancy data and estimated patient stay duration.

## Contributing

Contributions are welcome! If you'd like to contribute to BedSentry, please follow these steps:

1. Fork the repository.
2. Create a new branch: `git checkout -b feature/my-feature`
3. Make your changes and commit: `git commit -m "Add my feature"`
4. Push to your fork: `git push origin feature/my-feature`
5. Create a pull request.

## License

This project is licensed under the MIT License - see the LICENSE file for details.
