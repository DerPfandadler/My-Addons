# Filestash with OnlyOffice Home Assistant Addon

This addon integrates Filestash, a web-based file manager, with OnlyOffice Document Server for in-browser document editing.

## Installation

1. Copy the addon folder to your Home Assistant `addons` directory.
2. Navigate to Supervisor > Add-on Store in Home Assistant.
3. Click on "Add Repository" and add the repository containing this addon.
4. Install the "Filestash with OnlyOffice" addon.

## Configuration

After installation, configure the addon using the options provided in the Home Assistant UI. 

- **port**: The port on which Filestash will run (default: 8334).
- **application_url**: The base URL for accessing Filestash.
- **gdrive_client_id**: Your Google Drive Client ID for integration.
- **gdrive_client_secret**: Your Google Drive Client Secret.
- **dropbox_client_id**: Your Dropbox Client ID.
- **onlyoffice_url**: The URL where OnlyOffice Document Server will be accessed (default: `http://localhost:8088`).

## Usage

Start the addon, and access Filestash at `http://<your-home-assistant-ip>:8334`.

OnlyOffice will be accessible at `http://<your-home-assistant-ip>:8088`.
