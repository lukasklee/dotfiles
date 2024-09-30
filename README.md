# dotfiles

Personal dotfiles setup, currently for macOS only. This is an attempt to collect all config files in .dotfiles and make updates as hassle-free as possible. Consistent work in progress.

## Setup (automatically)

- Run `sh setup.sh` for the full setup
- Run `update` alias alias to upgrade Homebrew packages and casks

## Notes

- Run `mongod --config /opt/homebrew/etc/mongod.conf --fork` to run mongod manually as a background process using a config file. (For macOS running on Apple Silicon processors, see [Run MongoDB Community Edition](https://www.mongodb.com/docs/manual/tutorial/install-mongodb-on-os-x/#run-mongodb-community-edition))

## Useful Links

- https://ddev.com/blog/ddev-local-trusted-https-certificates/
