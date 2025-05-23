# Task Manager in Bash

A simple interactive Bash script for managing your to-do list from the command line.

## Features

- Add tasks with unique identifiers
- Display all tasks
- Delete tasks
- Automatic ID management

## Requirements

- Linux/Unix environment
- Bash shell
- Basic file permissions to create and modify files

## Installation

1. Clone the repository:
   ```bash
   git clone https://github.com/marc-awad/projet-b2-scripting-bash
   cd projet-b2-scripting-bash
   ```

2. Make the script executable:
   ```bash
   chmod +x gestion_taches.sh
   ```

3. Run the script:
   ```bash
   ./gestion_taches.sh
   ```

## Usage

The script offers a simple interactive menu with 4 options:

### 1. Add a task
Enter a task description when prompted. The task will be saved with a unique ID.

### 2. Display tasks
Shows all tasks with their IDs and descriptions.

### 3. Delete a task
First shows the list of tasks, then prompts for the ID of the task to delete.

### 4. Quit
Exits the program.

## How it works

- Tasks are stored in a text file (`taches.txt`) in the same directory as the script
- Each task has a unique ID assigned automatically
- When a task is deleted, remaining task IDs are updated to maintain sequential numbering

## File Structure

Tasks are stored in a simple format:
```
ID;Task Description
```

Example:
```
1;Buy groceries
2;Pay bills
3;Call plumber
```

## Troubleshooting

- If the script doesn't run, check it has execute permissions
- If tasks aren't saving, verify you have write permissions in the script's directory
- If you see errors about missing commands, ensure standard Unix tools (awk, sed) are installed

---

Created as part of B2 Scripting Bash project - Sup de Vinci
