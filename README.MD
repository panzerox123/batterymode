# batterymode
A simple shell script to change the battery threshold values on ThinkPad laptops; without having to install TLP.

## Installation
```
$ ./install.sh
```

## Usage
- `sudo batterymode fullcharge` sets threshold values to 96 and 100.
- `sudo batterymode setcharge <start> <stop>` sets required threshold values.
- `batterymode status` returns current thresholds.
- `batterymode power` returns current power draw
