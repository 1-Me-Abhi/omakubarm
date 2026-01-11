# Omakub (ARM64 Edition)

Turn a fresh Ubuntu installation into a fully-configured, beautiful, and modern web development system by running a single command. That's the one-line pitch for Omakub. No need to write bespoke configs for every essential tool just to get started or to be up on all the latest command-line tools. Omakub is an opinionated take on what Linux can be at its best.

## Supported Architectures

- **x86_64** (amd64) - Full support
- **ARM64** (aarch64) - Full support (e.g., Raspberry Pi 5, Apple Silicon VMs, AWS Graviton)

### ARM64 Notes

- **Google Chrome**: Chromium is installed instead (Chrome doesn't have ARM64 Linux builds)
- Some x86-only apps have been removed from this ARM64 edition (Zoom, Discord, Steam, Minecraft, Geekbench, Windsurf)

## 📋 Requirements

- **Ubuntu 24.04+** (fresh installation recommended)
- **Architecture**: ARM64 (aarch64) or x86_64 (amd64)
- **Desktop Environment**: GNOME (for full features) or any DE (terminal tools only)
- **Internet connection** for downloading packages

Watch the introduction video and read more at [omakub.org](https://omakub.org).

## 🚀 One-Command Installation

Just copy and paste this single command to install everything:

```bash
wget -qO- https://raw.githubusercontent.com/1-Me-Abhi/omakubarm/master/boot.sh | bash
```

That's it! This one command will automatically:
1. Update your system and install git
2. Clone the Omakub ARM64 repository
3. Run the installation script
4. Guide you through app choices and configurations
5. Set up your complete development environment

> **Alternative (using curl):**
> ```bash
> curl -fsSL https://raw.githubusercontent.com/1-Me-Abhi/omakubarm/master/boot.sh | bash
> ```

**Note:** The installation process will ask for your preferences during setup. Make sure you have time to complete the installation without interruptions.

## Contributing to the documentation

Please help us improve Omakub's documentation on the [basecamp/omakub-site repository](https://github.com/basecamp/omakub-site).

## License

Omakub is released under the [MIT License](https://opensource.org/licenses/MIT).

## Extras

While omakub is purposed to be an opinionated take, the open source community offers alternative customization, add-ons, extras, that you can use to adjust, replace or enrich your experience.

[⇒ Browse the omakub extensions.](EXTENSIONS.md)
