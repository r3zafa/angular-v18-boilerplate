# Angular v18 boilerplate

## Requirements to run the project in Docker
1) activate `WSL2` for windows
2) remove docker desktop and docker-engine from your pc if already installed.
3) install Rancher Desktop by SUSE 
link: https://rancherdesktop.io/
4) modify Dockerfile, .dockerignore, docker-compose.yml if needed.
5) modify devcontainer if needed.

### RUN USING DOCKER-COMPOSE
- clear
  ``` 
  docker-compose down 
  ```
- build 
  ```
  docker-compose build --no-cache
  ```
- start:corrent docker-compose will run at  `localhost:4200`
  ```
  docker-compose up
  ```
- build and start at once: This forces Docker to rebuild the image with the updated configuration. corrent docker-compose will run at  `localhost:4200`
  ```
  docker-compose up --build
  ```

### USING DEVCONTAINER
currently does not work. needs some work!

## USING WSL2 (WINDOWS SUBSYSTEM FOR LINUX)
1) activate `WSL2`
2) clone this repository inside your `WSL2 machine`
    ```
    git clone https://github.com/r3zafa/angular-v18-test-project.git
    ```
3) install `node.js` inside  `WSL2 machine`

    ```    
    sudo apt update && sudo apt upgrade
    sudo apt-get install curl
    ```
    ```
    curl -o- https://raw.githubusercontent.com/nvm-sh/nvm/master/install.sh | bash
    ```
    ```
    command -v nvm
    nvm ls
    ```
    ```
    nvm install --lts
    nvm ls
    ```
  - Überprüfe mit `node --version`, ob Node.js installiert ist und die neueste Version aufweist. Überprüfe dann, ob du auch über npm verfügst: `npm --version` (Du kannst auch `which node` oder `which npm` verwenden, um den Pfad anzuzeigen, der für die Standardversionen verwendet wird.)

  - Um die Version von Node.js zu ändern, die du für ein Projekt verwenden möchtest, erstellst du ein neues Projektverzeichnis `mkdir NodeTest` und wechselst in das Verzeichnis (`cd NodeTest`). Gib dann `nvm use node` ein, und wechsele zur aktuellen Version, oder verwende `nvm use --lts`, um zur LTS-Version zu wechseln. Du kannst auch eine spezifische andere Version verwenden, die du installiert hast, z.B. `nvm use v8.2.1`. (Um alle verfügbaren Versionen von Node.js aufzulisten, verwendest du den Befehl `nvm ls-remote`.)
  - read more: [original instruction](https://learn.microsoft.com/de-de/windows/dev-environment/javascript/nodejs-on-wsl)
4) go to project folder: `cd angular-v18-test-project`
4) install packages: `npm install`
5) install Angular CLI `npm install -g @angular/cli@18.2.0`
6) start application using `ng serve` or `ng serve --open`

## Running on your pc without Dockerization
1) install `Node.js v20.18.0 (LTS)` from [node.js website | download](https://nodejs.org/en/download/package-manager)
4) install packages: `npm install`
5) install Angular CLI `npm install -g @angular/cli@18.2.0`
6) start application using `ng serve` or `ng serve --open`
