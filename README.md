# Homebrew Tap for GraphQLS-to-AsciiDoc

This is the official Homebrew tap for [graphqls-to-asciidoc](https://github.com/bovinemagnet/graphqls-to-asciidoc), a powerful CLI tool that converts GraphQL schema files to comprehensive AsciiDoc documentation.

## Installation

### Using Homebrew

```bash
# Add the tap
brew tap bovinemagnet/tap

# Install graphqls-to-asciidoc
brew install graphqls-to-asciidoc
```

### One-liner Installation

```bash
brew install bovinemagnet/tap/graphqls-to-asciidoc
```

## Usage

After installation, you can use the tool directly:

```bash
# Basic usage
graphqls-to-asciidoc -schema ./schema.graphql > documentation.adoc

# Check version
graphqls-to-asciidoc -version

# Get help
graphqls-to-asciidoc -h
```

## Features

- **Complete GraphQL Support**: Queries, Mutations, Subscriptions, Types, Enums, Inputs, Directives, and Scalars
- **Rich Markup Support**: Admonition blocks, code callouts, anchors, cross-references, and table conversion
- **Professional Output**: Comprehensive AsciiDoc documentation with tables and cross-references
- **Flexible Configuration**: Command-line flags to include/exclude specific sections

## Examples

Convert a GraphQL schema to AsciiDoc documentation:

```bash
# Generate comprehensive documentation
graphqls-to-asciidoc -schema ./api.graphql > api-docs.adoc

# Exclude internal queries and mutations section
graphqls-to-asciidoc -schema ./schema.graphql -exclude-internal -mutations=false > docs.adoc

# Generate only types and enums
graphqls-to-asciidoc -schema ./schema.graphql -queries=false -mutations=false -subscriptions=false > types.adoc
```

## Links

- **Main Repository**: [bovinemagnet/graphqls-to-asciidoc](https://github.com/bovinemagnet/graphqls-to-asciidoc)
- **Documentation**: [README.md](https://github.com/bovinemagnet/graphqls-to-asciidoc/blob/main/README.md)
- **Issues**: [GitHub Issues](https://github.com/bovinemagnet/graphqls-to-asciidoc/issues)
- **Releases**: [GitHub Releases](https://github.com/bovinemagnet/graphqls-to-asciidoc/releases)

## Support

For issues, feature requests, or questions:

1. Check the [main repository documentation](https://github.com/bovinemagnet/graphqls-to-asciidoc)
2. Search [existing issues](https://github.com/bovinemagnet/graphqls-to-asciidoc/issues)
3. Create a [new issue](https://github.com/bovinemagnet/graphqls-to-asciidoc/issues/new) if needed

## Contributing

Contributions are welcome! Please see the [main repository](https://github.com/bovinemagnet/graphqls-to-asciidoc) for contribution guidelines.

## License

This project is licensed under the MIT License - see the [LICENSE](https://github.com/bovinemagnet/graphqls-to-asciidoc/blob/main/LICENSE) file for details.