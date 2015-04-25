# r-check
[![wercker status](https://app.wercker.com/status/609d79a6bea8ae1ebb8ac4418fca9202/s "wercker status")](https://app.wercker.com/project/bykey/609d79a6bea8ae1ebb8ac4418fca9202)

A step to check an R package.  Best used with one of the
[rocker](https://registry.hub.docker.com/repos/rocker/) images.

```yaml
    - jimhester/r-check
```

## Options

* `warnings_are_errors` (optional). If `TRUE` then treat WARNINGS from `R CMD
  check` as errors.

## Example

Basic usage:
```
    - jimhester/r-check
```

If you want warnings to fail the build.

```
    - jimhester/r-check:
      warnings_are_errors: TRUE
```

# License

The MIT License (MIT)

Copyright (c) 2015 Jim Hester

Permission is hereby granted, free of charge, to any person obtaining a copy of
this software and associated documentation files (the "Software"), to deal in
the Software without restriction, including without limitation the rights to
use, copy, modify, merge, publish, distribute, sublicense, and/or sell copies of
the Software, and to permit persons to whom the Software is furnished to do so,
subject to the following conditions:

The above copyright notice and this permission notice shall be included in all
copies or substantial portions of the Software.

THE SOFTWARE IS PROVIDED "AS IS", WITHOUT WARRANTY OF ANY KIND, EXPRESS OR
IMPLIED, INCLUDING BUT NOT LIMITED TO THE WARRANTIES OF MERCHANTABILITY, FITNESS
FOR A PARTICULAR PURPOSE AND NONINFRINGEMENT. IN NO EVENT SHALL THE AUTHORS OR
COPYRIGHT HOLDERS BE LIABLE FOR ANY CLAIM, DAMAGES OR OTHER LIABILITY, WHETHER
IN AN ACTION OF CONTRACT, TORT OR OTHERWISE, ARISING FROM, OUT OF OR IN
CONNECTION WITH THE SOFTWARE OR THE USE OR OTHER DEALINGS IN THE SOFTWARE.

# Changelog

## 0.0.2
- Use Warning for messaging rather than echo

## 0.0.1
- initial release
