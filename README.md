# File Organizer Script

A simple Bash automation script that organizes files into folders based on their file extensions. This project demonstrates core Linux commands like `find`, `mkdir`, and `mv` and provides a practical example of shell scripting for everyday file management.

## Table of Contents

- [Project Objective](#project-objective)
- [Features](#features)
- [Prerequisites](#prerequisites)
- [Installation](#installation)
- [Usage](#usage)
- [How it Works](#how-it-works)
- [Supported Extensions (Example Mapping)](#supported-extensions-example-mapping)
- [Safety Notes & Tips](#safety-notes--tips)
- [Future Enhancements](#future-enhancements)
- [Contributing](#contributing)
- [License](#license)
- [Author](#author)

## Project Objective

- Automatically organize files by extension.
- Reduce manual effort in file management.
- Demonstrate Linux shell scripting fundamentals.

## Features

- Moves files into folders such as `Documents/`, `Images/`, `Music/`, and `Videos/`.
- Uses `find` to locate files recursively.
- Creates directories with `mkdir -p` only when needed.
- Skips directories and processes only regular files.
- Safe operations using standard GNU coreutils; no external dependencies.

## Prerequisites

- Linux, macOS, or WSL (Ubuntu) with Bash.
- Standard core utilities: `find`, `mkdir`, `mv`, `basename`, `dirname`.

## Installation

1. Clone or download the repository:
```bash
git clone https://github.com/your-username/File-Organizer-Script.git
cd File-Organizer-Script
```

2. Make the script executable:
```bash
chmod +x organize.sh
```

## Usage

Run the script inside the directory you want to organize:

```bash
# From the directory you want to organize
/path/to/File-Organizer-Script/organize.sh
```

Or, copy `organize.sh` to the target directory and run:

```bash
cp /path/to/File-Organizer-Script/organize.sh .
chmod +x organize.sh
./organize.sh
```

Sample before:
```
resume.pdf
photo.jpg
song.mp3
video.mp4
```

Sample after:
```
Documents/resume.pdf
Images/photo.jpg
Music/song.mp3
Videos/video.mp4
```

## How it Works

- The script defines a mapping of file extensions to destination folders.
- It uses `find` to recursively locate files with specified extensions.
- For each file found:
  - It creates the target directory with `mkdir -p`.
  - Moves the file with `mv` into the appropriate folder.
- The script avoids moving directories and only handles regular files.

Typical commands used:
- `find . -type f -iname '*.pdf' -exec mv {} Documents/ \;`
- `mkdir -p Documents && mv file.pdf Documents/`

## Supported Extensions (Example Mapping)

You can extend or modify this mapping inside `organize.sh`.

- Documents: `pdf`, `doc`, `docx`, `txt`, `ppt`, `pptx`, `xls`, `xlsx`
- Images: `jpg`, `jpeg`, `png`, `gif`, `bmp`, `svg`, `webp`
- Music: `mp3`, `wav`, `aac`, `flac`, `ogg`
- Videos: `mp4`, `mkv`, `mov`, `avi`, `webm`
- Archives: `zip`, `tar`, `gz`, `bz2`, `rar`
- Code: `py`, `js`, `java`, `c`, `cpp`, `sh`, `rb`, `go`

## Safety Notes & Tips

- Run the script in a test directory first to verify behavior.
- Consider implementing a "dry-run" mode (print moves without executing) before actual moves.
- Be careful with files that have no extension — the script typically leaves them untouched.
- If files with the same name exist in the target directory, `mv` will overwrite them. You can modify the script to append timestamps or prompt before overwriting.

Example dry-run idea:
```bash
# Instead of mv, echo the intended move
echo "mv '$file' '$target_dir/'"
```

## Future Enhancements

- Case-insensitive extension handling (.PDF, .JPG).
- Organize files by date (year/month) or by size.
- Add an undo/restore feature (store moves in a log and provide restore).
- Menu-driven interactive interface with options for categories.
- Logging moved files with timestamps.
- Conflict resolution strategies (rename, skip, or prompt).

## Contributing

Contributions, suggestions, and improvements are welcome.

1. Fork the repo.
2. Create a feature branch: `git checkout -b feature-name`
3. Make changes and add tests if applicable.
4. Open a pull request describing your changes.

## Author

Jenna  
ECE | Embedded Systems | Linux & Automation Enthusiast
