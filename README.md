# AF_Notification

  

A beautiful and modern notification system for FiveM servers, featuring multiple notification types, smooth animations, and easy integration.

  

![Author](https://img.shields.io/badge/author-AmirAli%20Fayaz-blue.svg)

![Version](https://img.shields.io/badge/version-1.0.0-green.svg)

![License](https://img.shields.io/badge/license-MIT-red.svg)

  

## Features

  

- 🎨 Beautiful modern UI with smooth animations

- 🎯 Multiple notification types (success, error, info, debug)

- ⚡ Easy integration with other resources

- 🔧 Customizable duration and styling

- 📱 Responsive design

- 🛠️ Simple API for both client and server-side usage

  

## Preview

![Success Notification](https://i.ibb.co/ZRz5WPg0/image.png)

![Error Notification](https://i.ibb.co/0ykkrKR3/image.png)

  

## Installation

  

1. Download the resource

2. Place it in your server's resources folder

3. Add `ensure AF_Notification` to your `server.cfg`

4. Restart your FiveM server

  

## Usage

  

### Client-Side Usage

  

```lua

-- Using exports

exports['AF_Notification']:ShowNotification('Hello World', 'success')

  

-- Using events

TriggerEvent('AF_Notification:Show', 'Hello World', 'success')

  

-- Test Command

/testnotify [type] -- Available types: success, error, info, debug

```

  

### Server-Side Usage

  

```lua

-- Using exports

exports['AF_Notification']:SendNotificationToPlayer(playerId, 'Hello Player', 'success')

exports['AF_Notification']:SendNotificationToAll('Server Announcement', 'info')

  

-- Using events

TriggerEvent('AF_Notification:SendToPlayer', playerId, 'Hello Player', 'success')

TriggerEvent('AF_Notification:SendToAll', 'Server Announcement', 'info')

```

  

### Notification Types

  

-  `success` - Green notification with check icon

-  `error` - Red notification with X icon

-  `info` - Blue notification with info icon

-  `debug` - Debug notification with bug icon

  

## Configuration

  

The notification system uses modern styling with the Poppins font family and Font Awesome icons. You can customize the appearance by modifying the CSS file in `Client/html/notifications.css`.

  

Key features that can be customized:

- Animation duration

- Colors and styling

- Position on screen

- Font sizes

- Icons

  

## Dependencies

  

- FiveM Server

- Font Awesome 6.0.0 (included)

- Google Fonts - Poppins (included)

  

## Support

  

If you encounter any issues or have suggestions:

1. Open an issue on GitHub

2. Join our Discord server [Coming Soon]

3. Contact me directly

  

## License

  

This project is licensed under the MIT License - see the LICENSE file for details.

  

## Credits

  

Created with ❤️ by AmirAli Fayaz

  

## Contributing

  

1. Fork the repository

2. Create your feature branch (`git checkout -b feature/AmazingFeature`)

3. Commit your changes (`git commit -m 'Add some AmazingFeature'`)

4. Push to the branch (`git push origin feature/AmazingFeature`)

5. Open a Pull Request

  

---

⭐ Don't forget to star this repository if you found it useful!