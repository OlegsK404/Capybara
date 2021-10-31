# Capybara + Cucumber web automation  workshop
Web Automation project using Ruby+Cucumber+Capybara frameworks
## Getting Started (Installing RVM and Ruby-2.7.4)

### Mac

1) Install Chrome browser;
2) Install any IDE (VS Code is recommended, there are suggested extensions already specified in the project)
3) Open Terminal;
4) Install RVM: ```\curl -sSL https://get.rvm.io | bash```
5) Quit the terminal and reopen it;
6) Install ruby: ```rvm install 2.7.4```
7) Set the default ruby version ```rvm --default use 2.7.4```
8) Clone the project: ```git clone https://github.com/karlisV/capybara_workshop.git```
9) Install dependencies:```bundle install```
10) If command above fails, install the bundler and then rerun the command:```gem install bundler```

### Win

1) Install any IDE (VS Code is strongly recommended, there are suggested extensions already specified in the project and Microsoft provides WSL support using plugins)
2) Install WSL2 https://docs.microsoft.com/en-us/windows/wsl/setup/environment go through the setup, you can skip Docker and DB setup. If VS Code is installed, there is a guide for WSL support in this section https://docs.microsoft.com/en-us/windows/wsl/setup/environment#set-up-vs-code-for-editing-and-debugging
3) Within the Ubuntu terminal install RVM: 
```shell
\curl -sSL https://get.rvm.io | bash
 ```
4) Quit the terminal, reopen it and reconnect to Ubuntu;
5) Install ruby: 
```shell 
rvm install 2.7.4
```
6) Set the default ruby version:
```shell 
rvm --default use 2.7.4
```
7) Download chrome through Ubuntu terminal: 
```shell
wget -q -O - https://dl-ssl.google.com/linux/linux_signing_key.pub | sudo apt-key add -
echo 'deb [arch=amd64] http://dl.google.com/linux/chrome/deb/ stable main' | sudo tee /etc/apt/sources.list.d/google-chrome.list
```
Command above ^ should be run in one line (copy/paste the whole section)
```shell
sudo apt-get update
```

```shell
sudo apt-get install google-chrome-stable
```
8) In the Ubuntu terminal, clone the project:
```bash
git clone https://github.com/karlisV/capybara_workshop.git
```
9) Go into the project directory:
```bash
cd capybara_workshop
```
11) Install dependencies:
```bash
bundle install 
```
12) If command above fails, install the bundler and then rerun the command:
```bash
gem install bundler
```
13) Open VSCode through the terminal (to automatically establish remote connection): 
```bash
code .
```
The dot means to open VS Code in the current directory


## Running
### Command line

#### When using Windows OS in the current setup:
For all commands described below, add ```HEADLESS=true```, for example
```shell
cucumber HEADLESS=true
```

####To run tests:
In the project's directory run command:
```shell
cucumber
```
####To run tests with built in reporter:
```shell
cucumber --format pretty --format html -o report.html
```
####To run tests with specific tags('@wip' tag in example):
```shell
cucumber -t @wip
```
