
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

console.log(`test sample typescript, nodemon`);