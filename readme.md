# Spotworldus

Spotworld MVP bootstraped with [Directus](https://docs.directus.io/)

## Table of Contents

- [Installation](#installation)
- [Configuration](#configuration)
- [Usage](#usage)

## Installation

1. Run `pnpm init` to initialize your project.
2. [Restore](#restore) if needed

## Configuration

All configuration settings are stored in a [`.env`](./.env) file. Please refer to the file for specific configuration details.

## Usage

### Backup

Create snapshot.yaml and spotworldus-postgres.dump in root folder.
Run `pnpm backup`.

### Restore

**!!! This comand delete all current project data. Be sure to create new backup if needed !!!**

Place spotworldus-postgres.dump in root folder. Sure prev containers deleted.
Run `pnpm restore`.