### Manage node.js & npm version with nvm
- [nvm-windows](https://github.com/coreybutler/nvm-windows)
```
$ nvm version
1.1.9

$ nvm install NEW_VERSION --reinstall-packages-from=OLD_VERSION
nvm install 6.7 --reinstall-packages-from=6.4

$ nvm ls
 * 16.14.2 (Currently using 64-bit executable)
    8.17.0

# node.js version select
$ nvm use v8.17.0

# change node.js root path
$ nvm root /d/vscode_workspace/node.js_versions/

# install node.js with lts version
$ nvm install lts

$ node --version
v16.14.2

# update npm
$ npm install -g npm@9.4.1 

```

### Typescript initialize
```
tsc --init
```

### Install typescript modules using npm
```
npm install @types/node --save-dev
npm install nodemon --save-dev
npm install -g ts-node
npm i jest @types/jest ts-jest typescript -D
npm i jest @types/jest ts-jest --save-dev
```

### Change package.json script
```
"build": "tsc",
"dev": "nodemon --exec ts-node src/app.ts",
"start": "node build/app.js",
"test": "jest"
```

### Run npm modules
```
  npm run build  // transcript node.js
  npm run dev    // run with daemon
  npm run start   // run as production
```
### Run with jest
```
    [1] npm i jest @types/jest ts-jest typescript -D
    [2] jest.config.js create
    [3] add npm run script in package.json file
    {
    "test": "jest"
    }
```
- test all cases  
  > $ npm t  
- testing each save action  
  > $ npm t -- --watchAll

### Run docker image
docker run -d --name test-typescript some-typescript:1.0.0-RC1

### build docker image
var -> run build.sh -> Dockerfile