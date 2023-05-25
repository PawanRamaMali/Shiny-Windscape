# Shiny-Windscape
Build a exe setup file for R Shiny in Windows


### ✨ Contents 

**Inno Setup Configuration:**
- The Inno Setup file `create_installer_.iss` contains configuration settings such as the application name, version, default installation directory, program group name, compression options, and more.
- It specifies the base filename for the generated setup file.

**File and Directory Installation:**
- The [Files] section in the Inno Setup file `create_installer_.iss` lists the files and directories to include in the installation package.
- The specified files, such as R Portable, R scripts, app files, logs, and supporting files, are copied to specific directories within the user's system during the installation process.
- The Flags parameter is used to control specific behaviors, such as marking a file as a readme file.

**Start Menu Shortcut:**
- The [Icons] section in the Inno Setup file `create_installer_.iss` defines the shortcut icon and its associated properties.
- It creates a shortcut in the Start Menu's program group, pointing to the start_app.vbs file, and sets the icon for the shortcut.

**VBScript Execution:**
- The `start_app.vbs` file is a VBScript script responsible for launching the R Shiny application.
- It creates a WScript.Shell object and runs the R script `runApp.R` using the R interpreter.
- The R script execution is performed with the specified command-line arguments, including the log file name.
- This script acts as a bridge between the Inno Setup installer and the R Shiny application, allowing the installer to launch the application during setup.

**Run Shiny App**
- The `runApp.R` script launches the R Shiny application using the following steps:
- Set library paths to R Portable`.libPaths("./R/App/R-Portable/library")`
- Load the Shiny package `library(shiny)`
- Run the Shiny application: `shiny::runApp("app", launch.browser = TRUE)`

By combining these elements, the setup file generated with Inno Setup automates the installation process for the R Shiny application. It copies the necessary files, creates shortcuts, and sets up the environment for executing the R Shiny application. Users can then run the setup file to install the application on their system with ease.

### 📺 How to Create Setup.exe Installer

- Open `create_installer_.iss` file (You will need [Inno Setup Application](https://jrsoftware.org/isdl.php#stable) to open and compile this file
- Verify all the parameters as shown in the Contents
- Click on Compile to create Setup exe file 
- The Setup.exe file will be stored in the same directory inside `Output` folder 
 <img width="557" alt="image" src="https://github.com/PawanRamaMali/Shiny-Windscape/assets/11299574/bd4836dd-62a8-4ec9-b9dd-976d54da7ab8">

- A demo setup file is added to current project's [release](https://github.com/PawanRamaMali/Shiny-Windscape/releases/tag/v1.0). It will install the Faithful Geyser R Shiny app.
- [Demo Setup File Download](https://github.com/PawanRamaMali/Shiny-Windscape/releases/download/v1.0/faithful_setup_file_v_1.0.exe) 


### 📺 How to Run the App

- Install the program using the generated Setup.exe file.
- Configure the setup options, such as the installation directory.
- After successful installation, the application will be accessible from the Windows Start Menu.
- Select the app from the Start Menu to launch it in the default browser. 

### 📺 How to Check the logs

- Go to the installed program directory.
- Open the "logs" folder.
- Select the latest log file based on its name, which specifies the date and time.
- Use the log file to debug any application problems if needed.

### 💙 Contributing

Pull requests are welcome. If you find any bugs, please create an issue.

### 💖 Like this project ?

Leave a ⭐ If you think this project is cool.

### 🍁 Licence

* [MIT License](LICENSE)

### 👨‍💻 Authors

* [Pawan Rama Mali](https://github.com/PawanRamaMali) 

### ✨ Credits

- [Inno Setup Application Download](https://jrsoftware.org/isdl.php#stable)
- [Inno Setup Github](https://github.com/jrsoftware/issrc)
- [R Portable Download Link](https://sourceforge.net/projects/rportable/)
