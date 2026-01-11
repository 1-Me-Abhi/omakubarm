# Omakub (ARM64 Edition)

Turn a fresh Ubuntu installation into a fully-configured, beautiful, and modern web development system by running a single command. That's the one-line pitch for Omakub. No need to write bespoke configs for every essential tool just to get started or to be up on all the latest command-line tools. Omakub is an opinionated take on what Linux can be at its best.

## Supported Architectures

- **x86_64** (amd64) - Full support
- **ARM64** (aarch64) - Full support (e.g., Raspberry Pi 5, Apple Silicon VMs, AWS Graviton)

### ARM64 Notes

- **Google Chrome**: Chromium is installed instead (Chrome doesn't have ARM64 Linux builds)
- Some x86-only apps have been removed from this ARM64 edition (Zoom, Discord, Steam, Minecraft, Geekbench, Windsurf)

Watch the introduction video and read more at [omakub.org](https://omakub.org).

## Installation

To install Omakub ARM64 on a fresh Ubuntu 24.04+ installation, run the following command:

```bash
wget -qO- https://raw.githubusercontent.com/1-Me-Abhi/omakubarm/main/boot.sh | bash
```

This single command will:
1. Update your system and install git
2. Clone the Omakub ARM64 repository
3. Run the installation script
4. Guide you through app choices and configurations
5. Set up your development environment

**Note:** The installation process will ask for your preferences during setup. Make sure you have time to complete the installation without interruptions.

## Contributing to the documentation

Please help us improve Omakub's documentation on the [basecamp/omakub-site repository](https://github.com/basecamp/omakub-site).

## License

Omakub is released under the [MIT License](https://opensource.org/licenses/MIT).

## Extras

While omakub is purposed to be an opinionated take, the open source community offers alternative customization, add-ons, extras, that you can use to adjust, replace or enrich your experience.

[⇒ Browse the omakub extensions.](EXTENSIONS.md)
