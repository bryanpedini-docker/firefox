# Firefox Docker image
I have already Firefox installed on the host, tho I need a second instance for connecting to remote customers' machines via SSH SOCKS tunnels.
This is an image for a containerized Firefox instance.

### Usage:
Either using `run.sh` or docker command directly

### `run.sh` usage:
| Command                                 | Description                                                                                            |
|-----------------------------------------|--------------------------------------------------------------------------------------------------------|
| `run.sh` (alone)                        | Starts Firefox with default parameters                                                                 |
| VERSION=<version> `run.sh`              | Starts a specific version of Firefox, provided that the image exists in Docker Hub                     |
| DATADIR=/path/to/data/dir `run.sh`      | Starts Firefox using a specific data directory for persistence (a Docker volume name can also be used) |
| DATADIR=/... VERSION=<version> `run.sh` | Combined effects, not mutually exclusive                                                               |

## Available tags:
- [`latest` - `78.13.0esr`](https://hub.docker.com/layers/bryanpedini/firefox/78.13.0esr/images/sha256-f84f653f5839633d3122d3d8d9a366c98ab493f71e5130d5b395ed4f4443b3df?context=repo)
