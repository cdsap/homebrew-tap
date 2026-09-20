# cdsap/homebrew-tap

Homebrew tap for [Daemonitor](https://github.com/cdsap/daemonitor) CLI.

```bash
brew tap cdsap/tap
brew trust cdsap/tap   # required on Homebrew 7+
brew install daemonitor-cli
```

Requires JDK 21 (`openjdk@21` is installed as a dependency). Formula updates are pushed from the
Daemonitor release workflow using a write deploy key.
