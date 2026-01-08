### fileTypes dictionary contains all the file types for sorting

fileTypes=(

  # Images
  '*.png' '*.jpg' '*.jpeg' '*.gif' '*.bmp' '*.webp' '*.svg' '*.ico' '*.tiff'

  # Audio
  '*.mp3' '*.wav' '*.flac' '*.aac' '*.ogg' '*.m4a' '*.opus'

  # Video
  '*.mp4' '*.mkv' '*.avi' '*.mov' '*.webm' '*.wmv' '*.flv'

  # Documents
  '*.pdf' '*.doc' '*.docx' '*.xls' '*.xlsx' '*.ppt' '*.pptx'
  '*.txt' '*.md' '*.rtf' '*.odt'

  # Archives
  '*.zip' '*.tar' '*.gz' '*.tgz' '*.bz2' '*.xz' '*.7z' '*.rar'

  # Programming / Scripts
  '*.py' '*.java' '*.c' '*.cpp' '*.h' '*.js' '*.ts'
  '*.html' '*.css' '*.sh' '*.go' '*.rs' '*.php' '*.rb'
  '*.swift' '*.kt'

  # Config / Data
  '*.json' '*.yaml' '*.yml' '*.xml' '*.ini' '*.conf'
  '*.env' '*.toml' '*.csv' '*.tsv' '*.log'

  # Databases
  '*.sql' '*.db' '*.sqlite'

  # Executables / Packages
  '*.exe' '*.msi' '*.deb' '*.rpm' '*.appimage'

  # Disk Images
  '*.iso' '*.img' '*.dmg'

  # Fonts
  '*.ttf' '*.otf' '*.woff' '*.woff2'
)


### fileTypeNames contains the type names for output display purpose ###


declare -A fileTypeNames=(

  # Images
  ['*.png']="PNG Image"
  ['*.jpg']="JPEG Image"
  ['*.jpeg']="JPEG Image"
  ['*.gif']="GIF Image"
  ['*.bmp']="Bitmap Image"
  ['*.webp']="WebP Image"
  ['*.svg']="SVG Vector Image"
  ['*.ico']="Icon File"
  ['*.tiff']="TIFF Image"

  # Audio
  ['*.mp3']="MP3 Audio"
  ['*.wav']="WAV Audio"
  ['*.flac']="FLAC Audio"
  ['*.aac']="AAC Audio"
  ['*.ogg']="OGG Audio"
  ['*.m4a']="M4A Audio"
  ['*.opus']="Opus Audio"

  # Video
  ['*.mp4']="MP4 Video"
  ['*.mkv']="Matroska Video"
  ['*.avi']="AVI Video"
  ['*.mov']="QuickTime Video"
  ['*.webm']="WebM Video"
  ['*.wmv']="Windows Media Video"
  ['*.flv']="Flash Video"

  # Documents
  ['*.pdf']="PDF Document"
  ['*.doc']="Word Document"
  ['*.docx']="Word Document"
  ['*.xls']="Excel Spreadsheet"
  ['*.xlsx']="Excel Spreadsheet"
  ['*.ppt']="PowerPoint Presentation"
  ['*.pptx']="PowerPoint Presentation"
  ['*.txt']="Text File"
  ['*.md']="Markdown File"
  ['*.rtf']="Rich Text File"
  ['*.odt']="OpenDocument Text"

  # Archives / Compression
  ['*.zip']="ZIP Archive"
  ['*.tar']="TAR Archive"
  ['*.gz']="GZip Archive"
  ['*.tgz']="Tar GZip Archive"
  ['*.bz2']="BZip2 Archive"
  ['*.xz']="XZ Archive"
  ['*.7z']="7-Zip Archive"
  ['*.rar']="RAR Archive"

  # Programming / Scripts
  ['*.py']="Python Script"
  ['*.java']="Java Source File"
  ['*.c']="C Source File"
  ['*.cpp']="C++ Source File"
  ['*.h']="Header File"
  ['*.js']="JavaScript File"
  ['*.ts']="TypeScript File"
  ['*.html']="HTML File"
  ['*.css']="CSS File"
  ['*.sh']="Shell Script"
  ['*.go']="Go Source File"
  ['*.rs']="Rust Source File"
  ['*.php']="PHP Script"
  ['*.rb']="Ruby Script"
  ['*.swift']="Swift Source File"
  ['*.kt']="Kotlin Source File"

  # Config / Data
  ['*.json']="JSON File"
  ['*.yaml']="YAML File"
  ['*.yml']="YAML File"
  ['*.xml']="XML File"
  ['*.ini']="INI Config File"
  ['*.conf']="Configuration File"
  ['*.env']="Environment File"
  ['*.toml']="TOML File"
  ['*.csv']="CSV Data File"
  ['*.tsv']="TSV Data File"
  ['*.log']="Log File"

  # Databases
  ['*.sql']="SQL Script"
  ['*.db']="Database File"
  ['*.sqlite']="SQLite Database"

  # Executables / Packages
  ['*.exe']="Windows Executable"
  ['*.msi']="Windows Installer"
  ['*.deb']="Debian Package"
  ['*.rpm']="RPM Package"
  ['*.appimage']="AppImage Executable"

  # Disk / System Images
  ['*.iso']="Disk Image"
  ['*.img']="Disk Image"
  ['*.dmg']="macOS Disk Image"

  # Fonts
  ['*.ttf']="TrueType Font"
  ['*.otf']="OpenType Font"
  ['*.woff']="Web Font"
  ['*.woff2']="Web Font"

)


### The Below is a dictionar facilitating with the respective default folder where each type of file goes when sorting ###


declare -A fileTypeDirs=(

  # Images
  ['*.png']="Images"
  ['*.jpg']="Images"
  ['*.jpeg']="Images"
  ['*.gif']="Images"
  ['*.bmp']="Images"
  ['*.webp']="Images"
  ['*.svg']="Images"
  ['*.ico']="Images"
  ['*.tiff']="Images"

  # Audio
  ['*.mp3']="Audio"
  ['*.wav']="Audio"
  ['*.flac']="Audio"
  ['*.aac']="Audio"
  ['*.ogg']="Audio"
  ['*.m4a']="Audio"
  ['*.opus']="Audio"

  # Video
  ['*.mp4']="Videos"
  ['*.mkv']="Videos"
  ['*.avi']="Videos"
  ['*.mov']="Videos"
  ['*.webm']="Videos"
  ['*.wmv']="Videos"
  ['*.flv']="Videos"

  # Documents
  ['*.pdf']="Documents"
  ['*.doc']="Documents"
  ['*.docx']="Documents"
  ['*.xls']="Documents"
  ['*.xlsx']="Documents"
  ['*.ppt']="Documents"
  ['*.pptx']="Documents"
  ['*.txt']="Documents"
  ['*.md']="Documents"
  ['*.rtf']="Documents"
  ['*.odt']="Documents"

  # Archives
  ['*.zip']="Archives"
  ['*.tar']="Archives"
  ['*.gz']="Archives"
  ['*.tgz']="Archives"
  ['*.bz2']="Archives"
  ['*.xz']="Archives"
  ['*.7z']="Archives"
  ['*.rar']="Archives"

  # Programming / Scripts
  ['*.py']="Code"
  ['*.java']="Code"
  ['*.c']="Code"
  ['*.cpp']="Code"
  ['*.h']="Code"
  ['*.js']="Code"
  ['*.ts']="Code"
  ['*.html']="Code"
  ['*.css']="Code"
  ['*.sh']="Code"
  ['*.go']="Code"
  ['*.rs']="Code"
  ['*.php']="Code"
  ['*.rb']="Code"
  ['*.swift']="Code"
  ['*.kt']="Code"

  # Config / Data
  ['*.json']="Config"
  ['*.yaml']="Config"
  ['*.yml']="Config"
  ['*.xml']="Config"
  ['*.ini']="Config"
  ['*.conf']="Config"
  ['*.env']="Config"
  ['*.toml']="Config"
  ['*.csv']="Data"
  ['*.tsv']="Data"
  ['*.log']="Logs"

  # Databases
  ['*.sql']="Databases"
  ['*.db']="Databases"
  ['*.sqlite']="Databases"

  # Executables / Packages
  ['*.exe']="Executables"
  ['*.msi']="Executables"
  ['*.deb']="Packages"
  ['*.rpm']="Packages"
  ['*.appimage']="Executables"

  # Disk Images
  ['*.iso']="DiskImages"
  ['*.img']="DiskImages"
  ['*.dmg']="DiskImages"

  # Fonts
  ['*.ttf']="Fonts"
  ['*.otf']="Fonts"
  ['*.woff']="Fonts"
  ['*.woff2']="Fonts"
)

