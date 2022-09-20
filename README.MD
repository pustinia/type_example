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