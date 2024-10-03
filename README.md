# Sysopctl

## Overview
**Sysopctl** is a command-line utility for Linux systems aimed at simplifying system administration tasks. It provides system administrators with easy access to manage system resources, processes, and services efficiently.

## Features
- **List Running Services**: View all active services on the system.
- **System Load Monitoring**: Retrieve current system load averages.
- **Service Management**: Start or stop system services easily.
- **Disk Usage Statistics**: Get detailed information about disk space usage.
- **Process Monitoring**: Real-time monitoring of running processes.
- **Log Analysis**: Review recent critical log entries.
- **File Backup**: Easily backup system files or directories.

## Installation

To install **sysopctl**, follow these steps:

1. **Clone the Repository:**

   ```bash
   git clone https://github.com/shankarthakur512/Custom_linuxcommand

   ```

   Replace `<your-username>` with your GitHub username.

2. **Navigate to the project directory:**

   ```bash
   cd sysopctl_project
   ```

3. **Make the script executable:**

   ```bash
   chmod +x sysopctl.sh
   ```

## Usage

Execute the **sysopctl** command followed by the desired command and options:

```bash
./sysopctl.sh [command] [options]
```

### Commands

- **Help Message**: Display usage instructions.

  ```bash
  ./sysopctl.sh --help
  ```

- **Version Information**: Show the current version of sysopctl.

  ```bash
  ./sysopctl.sh --version
  ```

- **Service Management**:
  - List services:
    
    ```bash
    ./sysopctl.sh service list
    ```

  - Start a service:
    
    ```bash
    sudo ./sysopctl.sh service start <service-name>
    ```

  - Stop a service:
    
    ```bash
    sudo ./sysopctl.sh service stop <service-name>
    ```

- **System Management**:
  - Check system load:
    
    ```bash
    ./sysopctl.sh system load
    ```

- **Disk Management**:
  - Check disk usage:
    
    ```bash
    ./sysopctl.sh disk usage
    ```

- **Process Monitoring**:
  - Monitor processes:
    
    ```bash
    ./sysopctl.sh process monitor
    ```

- **Log Analysis**:
  - Analyze logs:
    
    ```bash
    ./sysopctl.sh logs analyze
    ```

- **File Backup**:
  - Backup files:
    
    ```bash
    ./sysopctl.sh backup <path>
    ```

## Examples

1. **List all running services**:
   
   ```bash
   ./sysopctl.sh service list
   ```

2. **Check current system load averages**:
   
   ```bash
   ./sysopctl.sh system load
   ```

3. **Start the SSH service**:
   
   ```bash
   sudo ./sysopctl.sh service start ssh
   ```

4. **Stop the Apache service**:
   
   ```bash
   sudo ./sysopctl.sh service stop apache2
   ```

5. **Check disk usage statistics**:
   
   ```bash
   ./sysopctl.sh disk usage
   ```

6. **Monitor processes in real-time**:
   
   ```bash
   ./sysopctl.sh process monitor
   ```

7. **Analyze recent critical log entries**:
   
   ```bash
   ./sysopctl.sh logs analyze
   ```

8. **Backup the Documents directory**:
   
   ```bash
   ./sysopctl.sh backup ~/Documents
   ```

## Screenshots

### Listing Active Services

![Active Services](./WhatsApp%20Image%202024-10-03%20at%2019.23.01.jpeg)

### System Load and Disk Usage

![System Load and Disk Usage](./WhatsApp%20Image%202024-10-03%20at%2019.23.02.jpeg)

