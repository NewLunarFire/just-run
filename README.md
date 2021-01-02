# Just Run

Just run is a simple executable for Linux and linux-like systems that want an easy way to execute complex commands. It is inspired by the `npm run` command.

## How to use

Add `run.sh` to your PATH, name it or alias it to what you want, I name mine just `run`.

Add a `Runfile` to the current directory, and add your commands like so:

```
name=command
```

Then run it on the command line with `run name`. It will execute what you added to command part of the line.

## Caveats

- The Runfile needs to be in the current directory. It will not scan parent directory for Runfiles.
- Command are case-sensitive.
- Commands must fit on one line, no multi-line commands.
