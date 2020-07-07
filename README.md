# My Dot Files
VIM | Sublime Text

## Vim Prerequisites

### (1) Plugin For Windows

#### Step#1 Windows Powershell (Source https://github.com/junegunn/vim-plug)

##### Run Following Powershell on PC
```
md ~\vimfiles\autoload
$uri = 'https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim'
(New-Object Net.WebClient).DownloadFile(
  $uri,
  $ExecutionContext.SessionState.Path.GetUnresolvedProviderPathFromPSPath(
    "~\vimfiles\autoload\plug.vim"
  )
)
```
#### Step#2 Add Plugin required in vimrc

#### Step#3 Install Plugins using :PlugInstall in VIM

#### Step#4 Full Screen and Hide Menus in Gvim
  * Download dll from (Source - https://www.vim.org/scripts/script.php?script_id=2596)
  * Download gvimfullscreen_win32.zip
  * Extract the dll file and add into installed location of vim (32-bit)
  

### (2) Plugin For Mac

#### Step#1 Unix Script (Source https://github.com/junegunn/vim-plug)

##### Run following in Terminal

```
curl -fLo ~/.vim/autoload/plug.vim --create-dirs \
    https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim
```
#### Step#2 Add Plugin required in vimrc

#### Step#3 Install Plugins using :PlugInstall in VIM


## Sublime Text 3 Prerequisites

### Windows and Mac (Initial Setup)
* Make sure g++ compiler is installed (Latest for C++ 17 and C++20 (2a)

#### 1. Go to View --> Layout --> Select 3 Column Layout
#### 2. Select First Column --> Go to View --> Group --> Select Max Column 2

### Set Up C++ Compile Options

#### C++ 17 (Windows)
  * Go to Tools --> Build System --> Add New Build System
  * Add Following in Build File (.sublime-build)
######  (Variant option if we want to build by g++ command manually. It will open directory in command prompt)
  ```
  {
    "shell_cmd": "g++ -std=c++17 -Wall \"${file}\" -o \"${file_path}/${file_base_name}\" && \"${file_path}/${file_base_name}\"",
    "file_regex": "^(..[^:]*):([0-9]+):?([0-9]+)?:? (.*)$",
    "working_dir": "${file_path}",
    "selector": "source.c++, source.cpp, source.cc, source.cxx",

    "variants":
    [
        {
            "name": "Run in Terminal",
            "shell_cmd":   "g++ -std=c++17 -Wall \"${file}\" -o \"${file_path}/${file_base_name}\" && start cmd /k  $file_base_name "
        }
    ]
  }
  ```
  
#### C++ 20 (Windows)
  * 1. Go to Tools --> Build System --> Add New Build System
  * 2. Add Following in Build File (.sublime-build)
######  (Variant option if we want to build by g++ command manually. It will open directory in command prompt)
  ```
  {
    "shell_cmd": "g++ -std=c++2a -Wall \"${file}\" -o \"${file_path}/${file_base_name}\" && \"${file_path}/${file_base_name}\"",
    "file_regex": "^(..[^:]*):([0-9]+):?([0-9]+)?:? (.*)$",
    "working_dir": "${file_path}",
    "selector": "source.c++, source.cpp, source.cc, source.cxx",

    "variants":
    [
        {
            "name": "Run in Terminal",
            "shell_cmd":   "g++ -std=c++2a -Wall \"${file}\" -o \"${file_path}/${file_base_name}\" && start cmd /k  $file_base_name "
        }
    ]
  }
  ```
  
  #### C++ 17 (Mac)
  * 1. Go to Tools --> Build System --> Add New Build System
  * 2. Add Following in Build File (.sublime-build)
    ```
    {
      "shell_cmd": "g++ -std=c++17 -O2 -Wall \"${file}\" -o \"${file_path}/${file_base_name}\" && \"${file_path}/${file_base_name}\"",
      "file_regex": "^(..[^:]*):([0-9]+):?([0-9]+)?:? (.*)$",
      "working_dir": "${file_path}",
      "selector": "source.c++, source.cpp, source.cc, source.cxx",
    }
    ```
    
  #### C++ 20 (2a) (Mac)
  * 1. Go to Tools --> Build System --> Add New Build System
  * 2. Add Following in Build File (.sublime-build)
    ```
    {
      "shell_cmd": "g++ -std=c++2a -O2 -Wall \"${file}\" -o \"${file_path}/${file_base_name}\" && \"${file_path}/${file_base_name}\"",
      "file_regex": "^(..[^:]*):([0-9]+):?([0-9]+)?:? (.*)$",
      "working_dir": "${file_path}",
      "selector": "source.c++, source.cpp, source.cc, source.cxx",
    }
    ```
