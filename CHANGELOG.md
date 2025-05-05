# Changelog

All notable changes to the `moss/xelatex` Docker image will be documented in this file.

The format is based on [Keep a Changelog](https://keepachangelog.com/en/1.0.0/),
and this project adheres to [Semantic Versioning](https://semver.org/spec/v2.0.0.html).

## [1.3.3] - 2023-05-05

### Added
- Added GitHub workflows to apply labels to PR and auto-merge dependabot PRs
- Added pre-commit hooks

## [1.3.2] - 2024-11-09

### Added
- Added Cosign to build workflow for container signing

### Changed
- Updated GitHub Action workflows

## [1.3.1] - 2024-10-15

### Added
- Added `html2text` package to the Docker image

## [1.3.0] - 2024-10-01

### Added
- New GitHub Actions build-push workflow for automated builds

### Changed
- Updated base image to Debian 12 (Bookworm)

## [1.2.0] - 2022-12-01

### Changed
- Updated base image to latest Debian release
- Enhanced security with updated dependencies

## [1.1.0] - 2016-10-25

### Changed
- Updated documentation in README.md (#1)

## [1.0.1] - 2016-09-28

### Added
- Added `make` and `inotify-tools` packages

## [1.0.0] - 2016-01-02

### Added
- Initial release of the XeLaTeX Docker image
- Documentation added
- Support for LaTeX document compilation
- Volume mounting for document data
- Base dependencies for TeX document processing

### Fixed
- Early issues with container setup (2015-12-21)

[1.3.2]: https://github.com/moss-it/docker-xelatex/compare/v1.3.1...v1.3.2
[1.3.1]: https://github.com/moss-it/docker-xelatex/compare/v1.3.0...v1.3.1
[1.3.0]: https://github.com/moss-it/docker-xelatex/compare/v1.2.0...v1.3.0
[1.2.0]: https://github.com/moss-it/docker-xelatex/compare/v1.1.0...v1.2.0
[1.1.0]: https://github.com/moss-it/docker-xelatex/compare/v1.0.1...v1.1.0
[1.0.1]: https://github.com/moss-it/docker-xelatex/compare/v1.0.0...v1.0.1
[1.0.0]: https://github.com/moss-it/docker-xelatex/releases/tag/v1.0.0
