-- AniTec database diagram script
-- Purpose: import this file into an ERD tool to visualize the current AniTec data model.
-- DBMS: MySQL

CREATE DATABASE IF NOT EXISTS anitec;
USE anitec;

CREATE TABLE users (
    id INT AUTO_INCREMENT PRIMARY KEY,
    username VARCHAR(80) NOT NULL,
    full_name VARCHAR(120) NOT NULL,
    role VARCHAR(40) NOT NULL,
    password_hash TEXT NOT NULL,
    CONSTRAINT uq_users_username UNIQUE (username)
);

CREATE TABLE profiles (
    id INT AUTO_INCREMENT PRIMARY KEY,
    first_name VARCHAR(80) NOT NULL,
    last_name VARCHAR(80) NOT NULL,
    email_address VARCHAR(120) NOT NULL,
    address_street VARCHAR(120) NOT NULL,
    address_number VARCHAR(20) NOT NULL,
    address_city VARCHAR(80) NOT NULL,
    address_postal_code VARCHAR(20) NOT NULL,
    address_country VARCHAR(80) NOT NULL
);

CREATE TABLE veterinarian_clients (
    id INT AUTO_INCREMENT PRIMARY KEY,
    veterinarian_id INT NOT NULL,
    rancher_id INT NOT NULL,
    status VARCHAR(30) NOT NULL,
    requested_at DATETIME NOT NULL,
    accepted_at DATETIME NULL,
    CONSTRAINT uq_veterinarian_clients_pair UNIQUE (veterinarian_id, rancher_id),
    CONSTRAINT fk_veterinarian_clients_veterinarian
        FOREIGN KEY (veterinarian_id) REFERENCES users(id),
    CONSTRAINT fk_veterinarian_clients_rancher
        FOREIGN KEY (rancher_id) REFERENCES users(id)
);

CREATE TABLE herds (
    id INT AUTO_INCREMENT PRIMARY KEY,
    name VARCHAR(80) NOT NULL,
    location VARCHAR(80) NOT NULL,
    owner VARCHAR(80) NOT NULL,
    owner_id INT NOT NULL,
    veterinarian_id INT NULL,
    main_type VARCHAR(40) NOT NULL,
    CONSTRAINT fk_herds_owner
        FOREIGN KEY (owner_id) REFERENCES users(id),
    CONSTRAINT fk_herds_veterinarian
        FOREIGN KEY (veterinarian_id) REFERENCES users(id)
);

CREATE TABLE animals (
    id INT AUTO_INCREMENT PRIMARY KEY,
    tag VARCHAR(30) NOT NULL,
    name VARCHAR(80) NOT NULL,
    species VARCHAR(40) NOT NULL,
    breed VARCHAR(60) NOT NULL,
    gender VARCHAR(20) NOT NULL,
    birth_date DATE NULL,
    weight DECIMAL(10,2) NOT NULL,
    status VARCHAR(30) NOT NULL,
    herd_id INT NOT NULL,
    CONSTRAINT uq_animals_tag UNIQUE (tag),
    CONSTRAINT fk_animals_herd
        FOREIGN KEY (herd_id) REFERENCES herds(id)
);

CREATE TABLE health_events (
    id INT AUTO_INCREMENT PRIMARY KEY,
    animal_id INT NOT NULL,
    type VARCHAR(40) NOT NULL,
    date DATE NOT NULL,
    description VARCHAR(500) NOT NULL,
    veterinarian VARCHAR(80) NULL,
    diagnosis TEXT NULL,
    treatment TEXT NULL,
    prescription TEXT NULL,
    follow_up TEXT NULL,
    next_due_date DATE NULL,
    CONSTRAINT fk_health_events_animal
        FOREIGN KEY (animal_id) REFERENCES animals(id)
);

CREATE TABLE farm_activities (
    id INT AUTO_INCREMENT PRIMARY KEY,
    owner_id INT NULL,
    veterinarian_id INT NULL,
    title VARCHAR(120) NOT NULL,
    type VARCHAR(40) NOT NULL,
    date DATE NOT NULL,
    priority VARCHAR(20) NOT NULL,
    status VARCHAR(30) NOT NULL,
    CONSTRAINT fk_farm_activities_owner
        FOREIGN KEY (owner_id) REFERENCES users(id),
    CONSTRAINT fk_farm_activities_veterinarian
        FOREIGN KEY (veterinarian_id) REFERENCES users(id)
);

CREATE TABLE financial_records (
    id INT AUTO_INCREMENT PRIMARY KEY,
    owner_id INT NOT NULL,
    type VARCHAR(20) NOT NULL,
    category VARCHAR(80) NOT NULL,
    amount DECIMAL(10,2) NOT NULL,
    date DATE NOT NULL,
    description TEXT NULL,
    CONSTRAINT fk_financial_records_owner
        FOREIGN KEY (owner_id) REFERENCES users(id)
);

CREATE TABLE report_metrics (
    id INT AUTO_INCREMENT PRIMARY KEY,
    label VARCHAR(80) NOT NULL,
    value VARCHAR(40) NOT NULL,
    trend VARCHAR(80) NULL
);

CREATE TABLE devices (
    id INT AUTO_INCREMENT PRIMARY KEY,
    name VARCHAR(80) NOT NULL,
    type VARCHAR(60) NOT NULL,
    serial_number VARCHAR(80) NOT NULL,
    status VARCHAR(30) NOT NULL,
    herd_id INT NULL,
    animal_id INT NULL,
    CONSTRAINT uq_devices_serial_number UNIQUE (serial_number),
    CONSTRAINT fk_devices_herd
        FOREIGN KEY (herd_id) REFERENCES herds(id),
    CONSTRAINT fk_devices_animal
        FOREIGN KEY (animal_id) REFERENCES animals(id)
);

CREATE TABLE device_metrics (
    id INT AUTO_INCREMENT PRIMARY KEY,
    device_id INT NOT NULL,
    type VARCHAR(60) NOT NULL,
    value DECIMAL(12,2) NOT NULL,
    unit VARCHAR(20) NOT NULL,
    recorded_at DATETIME NOT NULL,
    CONSTRAINT fk_device_metrics_device
        FOREIGN KEY (device_id) REFERENCES devices(id)
);

CREATE TABLE subscription_plans (
    id INT AUTO_INCREMENT PRIMARY KEY,
    name VARCHAR(80) NOT NULL,
    price DECIMAL(10,2) NOT NULL,
    stripe_price_id VARCHAR(120) NULL,
    max_animals INT NOT NULL,
    is_active BOOLEAN NOT NULL
);

CREATE TABLE subscriptions (
    id INT AUTO_INCREMENT PRIMARY KEY,
    user_id INT NOT NULL,
    plan_id INT NOT NULL,
    stripe_customer_id VARCHAR(120) NULL,
    stripe_subscription_id VARCHAR(120) NULL,
    status VARCHAR(40) NOT NULL,
    started_at DATE NOT NULL,
    ends_at DATE NULL,
    CONSTRAINT fk_subscriptions_user
        FOREIGN KEY (user_id) REFERENCES users(id),
    CONSTRAINT fk_subscriptions_plan
        FOREIGN KEY (plan_id) REFERENCES subscription_plans(id)
);

CREATE TABLE payments (
    id INT AUTO_INCREMENT PRIMARY KEY,
    user_id INT NOT NULL,
    subscription_id INT NOT NULL,
    amount DECIMAL(10,2) NOT NULL,
    currency VARCHAR(10) NOT NULL,
    provider VARCHAR(40) NOT NULL,
    provider_payment_id VARCHAR(120) NOT NULL,
    status VARCHAR(40) NOT NULL,
    paid_at DATETIME NOT NULL,
    CONSTRAINT fk_payments_user
        FOREIGN KEY (user_id) REFERENCES users(id),
    CONSTRAINT fk_payments_subscription
        FOREIGN KEY (subscription_id) REFERENCES subscriptions(id)
);
