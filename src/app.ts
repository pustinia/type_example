import { createServer } from "http";
import { join } from "path";
import * as fs from "fs";

/**
 * @descriptions sample function for jest
 * @param value string
 * @returns string
 */
export const jestCheck = (value: string):string => {
    return value;
};

type objectPlayer = {
    readonly name: string;
    age: number;
};

function greet(person: objectPlayer) {
    return "Hello there !! " + person.name;
  }

const STATIC_PATH: string = "app";
const PORT: number = 8081;

// http server listen
createServer((req, res) => {
    const url = req.url === "/" ? "/index.html" : req.url;
    const filePath = join(STATIC_PATH, `${url}`);
    try {
        const data = fs.readFileSync(filePath);
        res.end(data);
    } catch (err) {
        res.statusCode = 404;
        res.end(`File "${url}" is not found`);
    }
}).listen(PORT, () => console.log(`Static on port ${PORT}`));

console.log(`test sample typescript, nodemon`);