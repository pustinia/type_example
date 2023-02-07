### manage node.js & npm version with nvm
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

```

### typescript initial start
```
tsc --init
```
### package.json script change
```
"build": "tsc",
"dev": "nodemon --exec ts-node src/checkmq.ts",
"start": "node build/checkmq.js",
"test": "jest"
```
### add npm modules about ts
```
npm install @types/node --save-dev
npm install nodemon --save-dev
npm install -g ts-node
npm i jest @types/jest ts-jest typescript -D
npm i jest @types/jest ts-jest --save-dev
```
### run npm modules
```
  npm run build  // transcript node.js
  npm run dev    // run with daemon
```
### run with jest
```
    npm i jest @types/jest ts-jest typescript -D
    jest.config.js create
    add npm run script in package.json file
    {
    "test": "jest"
    }
```
- npm t
// save 하는 경우마다 테스트 하기
- npm t -- --watchAll