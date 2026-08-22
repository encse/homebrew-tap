# Homebrew Tap

Homebrew tap for `encse` command-line tools.

## DitDah

Install directly:

```sh
brew install encse/tap/ditdah
```

Or tap first:

```sh
brew tap encse/tap
brew install ditdah
```

## Publishing a new DitDah release

Update `Formula/ditdah.rb` with:

- the new `version`
- the new GitHub Release URLs
- the SHA-256 checksum for each archive

Expected release assets currently are:

```text
ditdah-darwin-arm64.tar.gz
ditdah-darwin-amd64.tar.gz
```

Each archive should contain the executable at its root:

```text
ditdah
```

Compute checksums with:

```sh
shasum -a 256 ditdah-darwin-arm64.tar.gz
shasum -a 256 ditdah-darwin-amd64.tar.gz
```
