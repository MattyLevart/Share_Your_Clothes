# Share Your Clothes

## Project Description

"Share Your Clothes" is an application designed to create a platform where anyone can donate their unused, good-quality items to trusted institutions. The project is aimed at individuals who have items in good condition but no longer use them and wish to pass them on to those in need. Our application simplifies the donation process, offering an easy and trusted solution.

## Features

### Admin Profile:
- **Login**
- **Manage Administrators (CRUD)**
- **Manage Trusted Institutions (CRUD)**
- **View, Edit, and Delete Registered Users**
- **View Donated Items**
- **Set Donation Status (submitted/picked up/delivered)**

### User Profile:
- **Registration**
- **Login**
- **Edit Own Profile (basic information)**
- **Add Donations**
- **View, Edit, and Delete Donations**
- **Mark Donation as Given Away (archiving)**

## Project Goal

The goal of this project is to facilitate the process of donating items so that anyone can easily give away things that might be useful to others. With verified institutions, users can be assured that their donations will reach those truly in need.

## Getting Started

### Prerequisites
- Java 11+
- Maven
- MySQL or another supported database
- Hibernate

### Installation

1. **Clone the repository:**
    ```bash
    git clone https://github.com/yourusername/share-your-clothes.git
    ```
2. **Navigate to the project directory:**
    ```bash
    cd share-your-clothes
    ```
3. **Configure the database connection in `application.properties` or `hibernate.cfg.xml`**
4. **Build the project:**
    ```bash
    mvn clean install
    ```
5. **Run the application:**
    ```bash
    mvn spring-boot:run
    ```

### Usage

- **Admin Access:** Use the admin credentials to log in and manage administrators, institutions, users, and donations.
- **User Access:** Register as a user to add, view, edit, and manage your donations.

## Contributing

1. **Fork the repository**
2. **Create a new branch:**
    ```bash
    git checkout -b feature/your-feature
    ```
3. **Make your changes and commit them:**
    ```bash
    git commit -m 'Add some feature'
    ```
4. **Push to the branch:**
    ```bash
    git push origin feature/your-feature
    ```
5. **Create a pull request**

---

Author: MattyLevart

