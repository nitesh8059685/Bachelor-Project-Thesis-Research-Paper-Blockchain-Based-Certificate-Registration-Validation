# Blockchain-Based Birth/Death Certificate Registration and Validation

## Project Overview

This project aims to provide a secure, decentralized solution for issuing and validating Birth and Death Certificates using **Blockchain** technology. The solution includes:

- **Flutter application** (Mobile app for users)
- **Angular web application** (Web app for administrators)
- **Django backend** (For managing data and interactions)
- **MongoDB** (For data storage)
- **Blockcerts** (For blockchain-based certificate issuance and validation)

By using **Blockcerts** and **Blockchain**, we ensure the certificates are tamper-proof, easily verifiable, and stored securely.

## Problem Statement

Birth and Death certificates are vital for identity verification, inheritance, insurance claims, and more. However, the current process for obtaining and verifying these certificates is cumbersome and prone to errors. Many individuals still lack access to birth certificates, and physical certificates can be lost, forged, or damaged.

The current digital certificates are also vulnerable to tampering. This project addresses these issues by using blockchain to create secure, verifiable, and tamper-proof certificates.

## Solution

We use **Blockcerts** to issue and verify certificates based on blockchain technology. Blockchain provides a secure, distributed, and tamper-resistant system for managing data. It ensures that certificates cannot be altered once issued and provides a reliable way to validate them.

## Project Structure

The project is divided into the following components:

- **`ProjectFile_FlutterApp_&_AngularWebApp/`**  
  Contains the Flutter mobile app and Angular web app for certificate registration and validation.

- **`Bachelor's PROJECT THESIS_ NiteshSharma/`**  
  The thesis document explaining the project's methodology, objectives, and implementation.

- **`Research Paper based on Blockchain Technology/`**  
  A research paper that discusses the use of blockchain in certificate validation.

- **`README.md`**  
  This readme file with an overview of the project.

## Technologies Used

- **Frontend**: 
  - **Flutter** for mobile application development.
  - **Angular** for web application development.

- **Backend**: 
  - **Django** for API and server-side logic.
  - **MongoDB** for database management.

- **Blockchain**: 
  - **Blockcerts** for issuing and verifying blockchain-based certificates.

## Setup Instructions

### Prerequisites

- **Flutter** (for the mobile app)
- **Angular** (for the web app)
- **Django** (for the backend)
- **MongoDB** (for the database)

### Running the Flutter App

1. Clone the repository.
2. Navigate to the `flutter_app/` directory.
3. Run `flutter pub get` to install dependencies.
4. Use `flutter run` to start the app on an emulator or device.

### Running the Angular Web App

1. Navigate to the `angular_web_app/` directory.
2. Run `npm install` to install dependencies.
3. Use `ng serve` to start the web app.

### Running the Django Backend

1. Navigate to the `backend/` directory.
2. Install required dependencies with `pip install -r requirements.txt`.
3. Set up the database with `python manage.py migrate`.
4. Start the server using `python manage.py runserver`.

### Configuring MongoDB

- Ensure MongoDB is running locally or use a remote MongoDB instance.
- Update the database configuration in the Django settings.

## Conclusion

This project provides a robust and secure solution for Birth and Death Certificate issuance and validation, utilizing blockchain to enhance security, transparency, and accessibility. 

---

For more information or questions, feel free to open an issue.

