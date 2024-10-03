#!/bin/bash

version="v0.1.0"

# Function to display help message
function show_help {
    echo "Usage: sysopctl [command] [options]"
    echo ""
    echo "Commands:"
    echo "  --help                 Show this help message"
    echo "  --version              Show the version"
    echo "  service list           List all active services"
    echo "  system load            Show current system load averages"
    echo "  service start <name>   Start a service"
    echo "  service stop <name>    Stop a service"
    echo "  disk usage             Show disk usage statistics"
    echo "  process monitor        Monitor real-time process activity"
    echo "  logs analyze           Analyze recent critical log entries"
    echo "  backup <path>         Backup system files from the specified path"
    echo ""
}

# Check command line arguments
echo "Argument 1: '$1'"
echo "Argument 2: '$2'"

case "$1" in
  --help)
    show_help
    ;;
  --version)
    echo "sysopctl version $version"
    ;;
  service)
    case "$2" in
      list)
        echo "Listing active services:"
        systemctl list-units --type=service
        ;;
      start)
        if [ -z "$3" ]; then
            echo "Error: Service name is required."
        else
            echo "Starting service $3..."
            sudo systemctl start "$3"
        fi
        ;;
      stop)
        if [ -z "$3" ]; then
            echo "Error: Service name is required."
        else
            echo "Stopping service $3..."
            sudo systemctl stop "$3"
        fi
        ;;
      *)
        echo "Invalid service command. Use 'service list', 'service start <name>', or 'service stop <name>'."
        ;;
    esac
    ;;
  system)
    case "$2" in
      load)
        echo "Current system load averages:"
        uptime
        ;;
      *)
        echo "Invalid system command. Use 'system load'."
        ;;
    esac
    ;;
  disk)
    case "$2" in
      usage)
        echo "Disk usage statistics:"
        df -h
        ;;
      *)
        echo "Invalid disk command. Use 'disk usage'."
        ;;
    esac
    ;;
  process)
    case "$2" in
      monitor)
        echo "Monitoring processes (press CTRL+C to stop):"
        top
        ;;
      *)
        echo "Invalid process command. Use 'process monitor'."
        ;;
    esac
    ;;
  logs)
    case "$2" in
      analyze)
        echo "Analyzing recent critical log entries:"
        journalctl -p 2 -n 50  # Shows the last 50 critical messages
        ;;
      *)
        echo "Invalid logs command. Use 'logs analyze'."
        ;;
    esac
    ;;
  backup)
    if [ -z "$2" ]; then
        echo "Error: Path is required for backup."
    else
        echo "Backing up files from $2..."
        rsync -av --progress "$2" /path/to/backup/location  # Change this to your backup destination
    fi
    ;;
  *)
    echo "Invalid command. Use --help for available commands."
    ;;
esac
