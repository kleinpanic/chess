# Chess Application

A Python-based chess game that supports both a Command-Line Interface (CLI) and a Graphical User Interface (GUI). This project is designed with a modular structure where the core game logic is separated from the UI, making it easier to maintain and extend.

## Project Structure

my_chess/ ├── install.sh # Installation script to set up dependencies and create a virtual environment ├── main.py # Entry point that selects between CLI and GUI modes based on command-line arguments └── src/ # Contains the source code for the application ├── init.py # Marks the directory as a Python package ├── game.py # Core chess logic (game state, moves, board management) ├── cli.py # CLI mode implementation for interacting via the terminal └── gui.py # GUI mode implementation using Tkinter

markdown
Copy

## Features

- **Modular Design:** Separates game logic from the user interface.
- **Dual Modes:** Choose between CLI mode and a Tkinter-based GUI mode.
- **Automated Setup:** `install.sh` checks for required dependencies and sets up a dedicated Python virtual environment.
- **System-Wide Installation:** Option to install a binary to `/usr/local/bin/chess` for easy access.

## Requirements

- **Operating System:** Linux (tested on Ubuntu/Debian)
- **Python Version:** Python 3.6 or higher
- **Dependencies:**
  - Python's built-in `venv` module
  - Tkinter (typically included with Python installations on Linux)
- **Privileges:** Sudo privileges for installing system packages via `apt-get`

## Installation

1. **Clone the Repository:**

```bash
   git clone https://github.com/yourusername/my_chess.git
   cd my_chess
```

Run the Installation Script:

```bash
./install.sh
```
The script will:

Check if required dependencies are installed (and prompt to install if not).

Create the virtual environment at /lib/python-venvs/chess.

Set up the necessary directories and permissions.

Activate the Virtual Environment (if needed):

```bash
source /lib/python-venvs/chess/bin/activate
```
Usage
Running in CLI Mode
To start the chess application in command-line mode:

```bash
python main.py
```
Follow the on-screen instructions to make moves and interact with the game.

Running in GUI Mode
To start the chess application with the graphical interface:

```bash
python main.py --gui
```
A Tkinter window will open, providing buttons and text displays to interact with the chess game.

Contributing
Contributions are welcome! If you encounter any issues or have suggestions for improvements:

Fork the repository

Create a feature branch

Commit your changes and open a pull request
