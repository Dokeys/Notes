'''
File: create_readme.py
Author: Dominik Knoll
Created on: 12.01.2023

Beschreibung:
Skript zum Erzeugen einer Readme Datei im Markdown Dateien-Format, für Notes in GitHub. Das Skript erzeugt ein Inhaltsverzeichnis mit Links abhängig von der Ordnerstruktur.

Benutzung:
Defines gegebenfalls anpassen und Sktript im Notes Ordner ausfüren.
>python create_readme.py
'''
import os

# Defines
INFO_STRING = 'Diese Datei wird automatisch erzeugt vom "create_readme.py" Python-Skript.'  # string at the first line
REPOSITORY_LINK = "https://github.com/Dokeys/Notes/blob/main/" # repository link for links in directory

NOTES_DIRECTORY = "."
HEADER_FILE = "readme_header.md"
OUTPUT_FILE = "README.md"

FOLDERS_TO_IGNORE = ("Linux", "Elektronik Entwicklung", "Mathe", "Delphi", "Design Pattern", "Java", "mySQL", "Richtlinien", "Windows")
USED_FILE_TYPES = (".md")

# Functions
def write_file_info() -> None:
    with open(OUTPUT_FILE, "w", encoding="utf-8") as file:
        file.write(f"<u>{INFO_STRING}</u>\n")

def append_string(string: str) -> None:
    with open(OUTPUT_FILE, "a", encoding="utf-8") as file:
        file.write(string)

def read_and_append_header() -> None:
    print(f"read {HEADER_FILE} file and write to {OUTPUT_FILE}")
    with open(HEADER_FILE, "r") as file:
        contents = file.read()

    with open(OUTPUT_FILE, "a") as file:
        file.write(contents)

def get_directory_folders() -> list[str]:
    folders = [f for f in os.listdir(NOTES_DIRECTORY) if os.path.isdir(os.path.join(NOTES_DIRECTORY, f))]
    # Delete invisible folders
    folders = [folder for folder in folders if not folder.startswith(".")]
    # Delete folders that should be ignored
    folders =  [folder for folder in folders if folder not in FOLDERS_TO_IGNORE]
    return folders

def get_filenames_from_folder(folder: str) -> list[str]:
    folder_path = f"{NOTES_DIRECTORY}/{folder}/"
    filenames = [f.name for f in os.scandir(folder_path) if f.is_file()]
    # just use the filetypes with the right ending
    filenames = [filename for filename in filenames if filename.endswith(USED_FILE_TYPES)]
    return filenames

def append_filename_links(filenames: list[str], folder: str) -> None:
    with open(OUTPUT_FILE, "a", encoding="utf-8") as file:
        for filename in filenames:
            print(f"\twrite link for {folder}/{filename}")
            filename_without_ending = filename.split(".")[0]
            link_string = f"- [{filename_without_ending}]({REPOSITORY_LINK}{folder}/{filename})\n"
            file.write(link_string)

def append_folder_directory(folder: str) -> None:
    print(f"write directory form folder: {folder}")
    with open(OUTPUT_FILE, "a") as file:
        file.write(f"### {folder}\n")
    filenames = get_filenames_from_folder(folder)
    append_filename_links(filenames, folder)
    append_string("\n")

def write_directory() -> None:
    append_string("\n")
    append_string("## Inhaltsverzeichnis\n")
    append_string("\n")
    folders = get_directory_folders()
    for folder in folders:
        append_folder_directory(folder)


# Main app
if __name__ == "__main__":
    print(f'generate {OUTPUT_FILE} file form Notes folder: "{NOTES_DIRECTORY}"')
    print(f"folders to ignore: {FOLDERS_TO_IGNORE}")
    write_file_info()
    read_and_append_header()
    write_directory()

