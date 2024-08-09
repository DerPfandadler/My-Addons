# Home Assistant Add-ons

Welcome to my Home Assistant Add-ons repository! This repository contains custom add-ons for Home Assistant, which you can easily add to your Home Assistant installation.

## Add-ons Included

### Filestash with OnlyOffice

**Filestash** is a powerful, web-based file manager that integrates seamlessly with various backend storage systems. This addon also includes **OnlyOffice Document Server**, enabling in-browser document editing directly within Filestash.

- **Version:** 1.0
- **Supported Architectures:** `armv7`, `armhf`, `aarch64`, `amd64`, `i386`
- **Description:** Manage your files and edit documents directly from Home Assistant using Filestash with integrated OnlyOffice Document Server.

## Installation

### Step 1: Add the Repository to Home Assistant

1. In Home Assistant, navigate to **Settings > Add-ons > Add-on Store**.
2. Click the three-dot menu in the top-right corner and select **Repositories**.
3. Add the following URL:
   - [https://github.com/yourusername/home-assistant-addons](https://github.com/yourusername/home-assistant-addons)

4. Click **Add** and return to the Add-on Store. You should now see the custom add-ons listed under this repository.

### Step 2: Install the Filestash with OnlyOffice Addon

1. Click on the **Filestash with OnlyOffice** addon from the list.
2. Click **Install** to install the addon.

### Step 3: Configure the Addon

1. After installation, click on **Configuration** to set up the addon. You can configure options such as:
   - **port**: The port on which Filestash will run (default: 8334).
   - **application_url**: The base URL for accessing Filestash.
   - **gdrive_client_id**: Your Google Drive Client ID for integration.
   - **gdrive_client_secret**: Your Google Drive Client Secret.
   - **dropbox_client_id**: Your Dropbox Client ID.
   - **onlyoffice_url**: The URL where OnlyOffice Document Server will be accessed (default: `http://localhost:8088`).

2. Save the configuration.

### Step 4: Start the Addon

1. Go back to the **Info** tab and click **Start** to launch the addon.
2. Check the logs to ensure that both Filestash and OnlyOffice Document Server are running correctly.

### Step 5: Access the Addon

- **Filestash:** `http://<your-home-assistant-ip>:8334`
- **OnlyOffice Document Server:** `http://<your-home-assistant-ip>:8088`

## Updating the Addon

To update the addon, simply update this repository with any changes, and Home Assistant will prompt you to update the addon from the Add-on Store.