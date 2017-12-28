# ✎ nt

The minimal note taking script, all confined to a single little bash script.

## Why?

I often find myself wanting to write down ideas, use a scratch pad, or sit down for a long brain dump without leaving my terminal.
I've been using this script for a while now to do so, and decided to open source it in case someone else might find it useful.

PRs welcome for added features, documentation, etc.

#### TODO

- configurable editor
- gist integration, publish and checkout
- grep functionality for searching in files for match and file names
- order based on creation/updated

## Installation

```sh
git clone https://github.com/johnotander/nt
```

Then, in your `.bashrc`/`.zshrc`/etc run `. ./path/to/nt/nt.sh`.

#### Via npm

For convenience, the script is also available on npm:

```bash
npm i -g @johno/nt
```

## Usage

```sh
❯ nt         
✎ nt - the minimal note taking script

Usage:
  nt open my-notes
  nt ls
  nt show random-thoughts

Commands:
  open, o - open or create a file
  show, s - cat a given file
  ls, l   - list all files
```

## Related

This script is inspired by, and adapted from, [pigmonkey's blog post](https://pig-monkey.com/2012/12/notes-unix/).

## License

MIT

## Contributing

1. Fork it
2. Create your feature branch (`git checkout -b my-new-feature`)
3. Commit your changes (`git commit -am 'Add some feature'`)
4. Push to the branch (`git push origin my-new-feature`)
5. Create new Pull Request

***

> Crafted with <3 by John Otander ([@4lpine](https://twitter.com/4lpine)).
