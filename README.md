# dot_files

My configuration files for my various machines

## Installation

Clone this repository to your home directory, like `~/.dotfiles`:

```
git clone git@github.com:ericswpark/dot_files.git ~/.dotfiles
```

Make sure GNU `stow` is installed, then run the commands at the root of this
directory:

```
stow <directory name>/
```

If you want to remove a symlink, use the `-D` flag.

## Notes

### Zed

Zed stores SSH information in the `settings.json`, which means we can't just
symlink to it (annoyingly). Instead, just use the file in this repository as a
base for various systems.