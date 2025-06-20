# Homebrew Tap Setup Guide

This guide explains how to set up and maintain the Homebrew tap for graphqls-to-asciidoc.

## Repository Setup

### 1. Create the Tap Repository

Create a new GitHub repository named `homebrew-tap` under the `bovinemagnet` organization:

```bash
# Create and initialize the repository
git init
git add .
git commit -m "Initial homebrew tap setup"
git branch -M main
git remote add origin git@github.com:bovinemagnet/homebrew-tap.git
git push -u origin main
```

### 2. Configure GoReleaser in Main Repository

The main `graphqls-to-asciidoc` repository already includes `.goreleaser.yml` which will automatically update this tap when releases are created.

## Release Process

### Automated (Recommended)

1. Create a new release in the main repository:
   ```bash
   git tag v0.1.0
   git push origin v0.1.0
   ```

2. GoReleaser will automatically:
   - Build binaries for all platforms
   - Create GitHub release with assets
   - Update the Homebrew formula in this tap
   - Calculate SHA256 checksums

### Manual Updates

If you need to manually update the formula:

1. Download the release assets and calculate SHA256:
   ```bash
   curl -L https://github.com/bovinemagnet/graphqls-to-asciidoc/releases/download/v0.1.0/graphqls-to-asciidoc_0.1.0_Darwin_x86_64.tar.gz | shasum -a 256
   ```

2. Update the formula file with new version and checksums

3. Test the formula:
   ```bash
   brew install --build-from-source ./Formula/graphqls-to-asciidoc.rb
   brew test graphqls-to-asciidoc
   ```

## Formula Structure

The formula follows Homebrew conventions:

- **Class Name**: `GraphqlsToAsciidoc` (CamelCase)
- **File Name**: `graphqls-to-asciidoc.rb` (kebab-case)
- **Install Method**: Simple binary installation
- **Test Block**: Comprehensive testing including version check and functionality test

## Testing

### Local Testing

```bash
# Test formula syntax
brew ruby -c Formula/graphqls-to-asciidoc.rb

# Install from local formula
brew install --build-from-source ./Formula/graphqls-to-asciidoc.rb

# Run formula tests
brew test graphqls-to-asciidoc

# Test tap installation
brew tap bovinemagnet/tap
brew install graphqls-to-asciidoc
```

### CI Testing

The repository includes GitHub Actions workflow that validates formulas on pull requests.

## Maintenance

### Version Updates

1. Update version in formula
2. Update URLs and SHA256 checksums
3. Test installation
4. Commit and push changes

### Security

- SHA256 checksums ensure package integrity
- URLs point to official GitHub releases
- Formula validates before installation

## Troubleshooting

### Common Issues

1. **SHA256 Mismatch**: Recalculate checksums for all platforms
2. **URL Not Found**: Ensure GitHub release exists with correct assets
3. **Test Failures**: Update test expectations for new versions

### Debug Installation

```bash
# Verbose installation
brew install --verbose --debug graphqls-to-asciidoc

# Check formula details
brew info graphqls-to-asciidoc

# Validate formula
brew audit graphqls-to-asciidoc
```

## Links

- [Homebrew Formula Cookbook](https://docs.brew.sh/Formula-Cookbook)
- [GoReleaser Documentation](https://goreleaser.com/customization/homebrew/)
- [Main Repository](https://github.com/bovinemagnet/graphqls-to-asciidoc)