# Meowdifiedevice: Counter-Forensic Solution for Android Devices

## Overview

Meowdifiedevice is a counter-forensic mechanism designed for Android devices. It secures sensitive data by automatically triggering a system reboot and OS downgrade if a specific network connection is lost. Upon reboot, the device performs a cryptographic key deletion, rendering data irretrievable and effectively protecting it against unauthorized access attempts. This project explores innovative approaches for data security, particularly in regulated environments such as military or corporate settings where safeguarding information is critical.

**Disclaimer:** This research is conducted solely to explore and understand various counter-forensic mechanisms as a means of enhancing data security on mobile devices. The Meowdifiedevice project is designed to provide insight into potential applications in regulated environments, such as military and corporate security settings, where safeguarding sensitive information from unauthorized access is crucial. This technology is not intended for criminal use, and any unauthorized application for evading law enforcement or obstructing legal investigations is strictly discouraged and contrary to the authors' objectives. The project aims to contribute to the advancement of mobile security techniques under ethical and legally compliant guidelines.

## Features

- **Network-Based Data Protection**: Monitors network connectivity and triggers a system reboot and data wipe if the device disconnects from a designated network.
- **OS Downgrade & Key Deletion**: Executes an OS downgrade on reboot, ensuring the loss of cryptographic keys, which permanently blocks data retrieval.
- **Continuous Monitoring**: Runs a lightweight script in the background to periodically check network connectivity with minimal resource usage.

## Use Cases

1. **Military High-Security Zones**: Prevents unauthorized data access when devices are removed from secure zones.
2. **Countermeasures for Illicit Activities**: Activates a data wipe if the device is seized and loses network connection, ensuring that any information becomes inaccessible, even in forensic examination scenarios.
3. **Corporate Espionage Defense**: Ensures sensitive data is unrecoverable if devices are taken outside corporate premises or disconnected from trusted networks.

## Prerequisites

- Rooted Android device.
- [Termux](https://termux.com/) installed for running scripts with superuser privileges.
- Custom bash script (see below).

## Installation

1. **Root the Device**: Meowdifiedevice requires root access to enable device-level operations.
2. **Install Downgrade Package**: Install a downgrade flash package compatible with the Android version.
3. **Deploy Script**: Copy the provided `detection.sh` to the `/system/bin/` directory on your Android device.

## Script Details

The `detection.sh` script runs continuously, checking the device’s connection to a predefined IP address. If the ping test fails, it initiates a device reboot, activating the OS downgrade and data wipe process.

## Evaluation & Testing

The solution is evaluated based on its ability to protect sensitive data in situations requiring absolute data loss if unauthorized access is attempted. Testing should be performed in controlled environments to verify successful key deletion and data wipe on reboot.


