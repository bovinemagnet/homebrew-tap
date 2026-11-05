# Homebrew Tap for bovinemagnet Tools

This is the official Homebrew tap for tools released by [bovinemagnet](https://github.com/bovinemagnet):

| Package | Type | Description | Licence |
|---------|------|-------------|---------|
| [graphqls-to-asciidoc](https://github.com/bovinemagnet/graphqls-to-asciidoc) | Formula | Converts GraphQL schema files to AsciiDoc documentation | Apache-2.0 |
| [gossm](https://github.com/bovinemagnet/gossm) | Cask | CLI tool for managing AWS SSM sessions | GPL-3.0 |
| [adocfoundry](https://github.com/bovinemagnet/AdocFoundry) | Cask | Native desktop editor for AsciiDoc and Antora documentation | Apache-2.0 |

## Adding the Tap

```bash
brew tap bovinemagnet/tap
```

## graphqls-to-asciidoc

A powerful CLI tool that converts GraphQL schema files to comprehensive AsciiDoc documentation.

### Installation

```bash
# After adding the tap
brew install graphqls-to-asciidoc

# Or as a one-liner
brew install bovinemagnet/tap/graphqls-to-asciidoc
```

### Usage

After installation, you can use the tool directly:

```bash
# Basic usage
graphqls-to-asciidoc -schema ./schema.graphql > documentation.adoc

# Check version
graphqls-to-asciidoc -version

# Get help
graphqls-to-asciidoc -h
```

### Features

- **Complete GraphQL Support**: Queries, Mutations, Subscriptions, Types, Enums, Inputs, Directives, and Scalars
- **Rich Markup Support**: Admonition blocks, code callouts, anchors, cross-references, and table conversion
- **Professional Output**: Comprehensive AsciiDoc documentation with tables and cross-references
- **Flexible Configuration**: Command-line flags to include/exclude specific sections

### Examples

Convert a GraphQL schema to AsciiDoc documentation:

```bash
# Generate comprehensive documentation
graphqls-to-asciidoc -schema ./api.graphql > api-docs.adoc

# Exclude internal queries and mutations section
graphqls-to-asciidoc -schema ./schema.graphql -exclude-internal -mutations=false > docs.adoc

# Generate only types and enums
graphqls-to-asciidoc -schema ./schema.graphql -queries=false -mutations=false -subscriptions=false > types.adoc
```

### Links

- **Main Repository**: [bovinemagnet/graphqls-to-asciidoc](https://github.com/bovinemagnet/graphqls-to-asciidoc)
- **Documentation**: [README.md](https://github.com/bovinemagnet/graphqls-to-asciidoc/blob/main/README.md)
- **Issues**: [GitHub Issues](https://github.com/bovinemagnet/graphqls-to-asciidoc/issues)
- **Releases**: [GitHub Releases](https://github.com/bovinemagnet/graphqls-to-asciidoc/releases)

## gossm

A CLI tool for managing AWS SSM sessions — lists EC2 instances by profile and launches connections via [AWS Systems Manager](https://docs.aws.amazon.com/systems-manager/index.html) Session Manager.

### Installation

```bash
# After adding the tap
brew install --cask gossm

# Or as a one-liner
brew install --cask bovinemagnet/tap/gossm
```

### Usage

```bash
# Pick a profile interactively from ~/.aws/config, then pick an instance
gossm connect

# Specify a profile
gossm connect -p my-profile

# Connect directly to a known instance
gossm connect -p my-profile -t i-0123456789abcdef0
```

Once you select an instance, gossm launches the session via `aws ssm start-session`.

### Links

- **Main Repository**: [bovinemagnet/gossm](https://github.com/bovinemagnet/gossm)
- **Issues**: [GitHub Issues](https://github.com/bovinemagnet/gossm/issues)
- **Releases**: [GitHub Releases](https://github.com/bovinemagnet/gossm/releases)

## adocfoundry

A native desktop editor for AsciiDoc documentation laid out the Antora way, with a rendered preview, visual editing, PDF export and a graph of the workspace's links. The cask installs AdocFoundry.app (macOS 13 or later, universal) and puts its command-line tools on your `PATH`: `adocfoundry-cli`, the `adoc-ls` language server and the `adoc-mcp` MCP server.

### Installation

```bash
# After adding the tap
brew install --cask adocfoundry

# Or as a one-liner
brew install --cask bovinemagnet/tap/adocfoundry
```

AdocFoundry updates itself, so `brew upgrade` leaves it alone unless you pass `--greedy`.

### Usage

```bash
# Open a documentation folder in the app
open -a AdocFoundry path/to/docs

# Check a workspace's references from the command line
adocfoundry-cli check path/to/docs
```

### Links

- **Main Repository**: [bovinemagnet/AdocFoundry](https://github.com/bovinemagnet/AdocFoundry)
- **Issues**: [GitHub Issues](https://github.com/bovinemagnet/AdocFoundry/issues)
- **Releases**: [GitHub Releases](https://github.com/bovinemagnet/AdocFoundry/releases)

## Support

For issues, feature requests, or questions, please use the issue tracker of the relevant main repository linked above.

## Contributing

Contributions are welcome! Please see the relevant main repository for contribution guidelines.

## Licence

Each tool is licensed under its own terms: graphqls-to-asciidoc under the [Apache-2.0 License](https://github.com/bovinemagnet/graphqls-to-asciidoc/blob/main/LICENSE), gossm under the [GPL-3.0 License](https://github.com/bovinemagnet/gossm/blob/main/LICENSE), and AdocFoundry under the [Apache-2.0 License](https://github.com/bovinemagnet/AdocFoundry/blob/main/LICENSE).
