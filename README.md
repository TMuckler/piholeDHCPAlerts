
# DHCP Lease Notifier

This Bash script sends a Pushover notification with the IP address and hostname of the latest DHCP lease from a Pi-hole server.

## Requirements

- A Pi-hole server with DHCP enabled
- Pushover account with user key and API token
- `curl` installed on your system

## Configuration

1. **Set your Pushover user key and API token:**

    Open the script file and replace `XXXXXX` with your actual Pushover user key and API token:

    ```bash
    USER_KEY="your_user_key"
    API_TOKEN="your_api_token"
    ```

## Usage

1. **Save the script:**

    Save the script to a file, for example, `piholeDHCPAlerts.sh`.

2. **Make the script executable:**

    ```bash
    chmod +x piholeDHCPAlerts.sh
    ```

3. **Run the script:**

    ```bash
    ./piholeDHCPAlerts.sh
    ```

## Script Details

The script performs the following steps:

1. Retrieves the latest DHCP lease file from the Pi-hole server.
2. Extracts the IP address and hostname of the most recent lease.
3. Sends a Pushover notification with the extracted IP address and hostname.

## License

This project is licensed under the MIT License. See the [LICENSE](LICENSE) file for details.

## Contributing

1. Fork the repository.
2. Create your feature branch (`git checkout -b feature/new-feature`).
3. Commit your changes (`git commit -am 'Add new feature'`).
4. Push to the branch (`git push origin feature/new-feature`).
5. Create a new Pull Request.

## Acknowledgments

- [Pushover](https://pushover.net/)
- [Pi-hole](https://pi-hole.net/)
- [curl](https://curl.se/)
