## steps to connect to server with ngok

### 1. Download and install ngrok from the official website (https://ngrok.com/).

### 2. Open your terminal or command prompt and navigate to the directory where you installed ngrok.

### 3. Connect your account

### `ngrok config add-authtoken your-authtoken`

### 4. To start ngrok, run the following command:

### `ngrok http <port>`

### Replace <port> with the port number of your server. For example, if your server is running on port 8000, you would run ngrok http 8000.

### 5. Ngrok will generate a public URL that you can use to access your server from the internet. Copy the public URL and paste it into your baseURL in file api with path app\lib\services\api_service.dart
