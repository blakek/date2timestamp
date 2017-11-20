# date2timestamp

> Convert a date to its UNIX epoch timestamp

I needed to convert dates to timestamps for time tracking and scheduling things to go live.  This helps with that.

## Usage

Get timestamp for today at midnight (00:00):

```bash
date2timestamp
# Example output: 1478498400
```

Get timestamp for some other day (2020-08-26):

```bash
date2timestamp -y 2020 -m 8 -d 26
# Output: 1598418000
```

Get timestamp for really specific time (2020-08-26 at 03:55:12):

```bash
date2timestamp -y 2020 -m 8 -d 26 -H 3 -M 55 -S 12
# Output: 1598432112
```

**NOTE:**
Need to convert a timestamp back to a human-readable date?  Run:

```bash
# Linux / GNU-based
date -d @1267619929

# macOS / BSD-based
date -r <timestamp>
```

## Install

### Option 1: use `yarn` or `npm`

If using [npm](https://www.npmjs.com/):

```shell
npm i -g date2timestamp
```

If using [Yarn](https://yarnpkg.com/):

```shell
yarn global add date2timestamp
```

### Option 2: manual installation

  1. Either [clone this repository](https://help.github.com/articles/cloning-a-repository/) or [download the ZIP file](https://github.com/blakek/date2timestamp/archive/master.zip)
  2. Add this to your $PATH

## License

[MIT](https://raw.githubusercontent.com/blakek/date2timestamp/master/LICENSE)
