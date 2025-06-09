# FortiVPN Homebrew Tap

🍺 **Homebrew tap for FortiVPN Auto-Connect**

This tap provides easy installation of FortiVPN Auto-Connect, an automated FortiVPN connection tool with 2FA OTP extraction from Messages app.

## Installation

```bash
# Add the tap
brew tap ATMasoumi/fortivpn

# Install FortiVPN Auto-Connect
brew install fortivpn-autoconnect

# Run setup wizard
fortivpn-setup
```

## About

FortiVPN Auto-Connect transforms your VPN connection experience from a complex multi-step process into a simple one-command operation with automatic 2FA handling.

### Features
- 🔄 **Fully Automated**: Connect with a single command
- 📱 **Smart 2FA**: Automatically extracts OTP codes from Messages app
- 🔐 **Touch ID Integration**: Seamless sudo authentication
- ⚡ **Fast Connection**: Continuous monitoring for instant OTP detection
- 🛡️ **Secure**: Config files stored with proper permissions

## Usage

After installation:
```bash
# Connect to VPN
forti
# or
fortivpn-autoconnect

# Check status
fortivpn-setup --status

# Reconfigure
fortivpn-setup --configure
```

## Requirements

- macOS with Messages app
- VPN account with 2FA enabled
- Messages app configured to receive OTP SMS

## Support

- **Main Repository**: [ATMasoumi/fortivpn-autoconnect](https://github.com/ATMasoumi/fortivpn-autoconnect)
- **Issues**: [GitHub Issues](https://github.com/ATMasoumi/fortivpn-autoconnect/issues)
- **Discussions**: [GitHub Discussions](https://github.com/ATMasoumi/fortivpn-autoconnect/discussions)

---

**Made with ❤️ by [Amin Torabi](https://github.com/ATMasoumi)**
