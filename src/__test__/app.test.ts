import * as app from '../app';

/**
 * description : typescript test with jest
 * web : https://jestjs.io/docs/getting-started
 */
test('basic Test 1', () => {
    expect(app.jestCheck(`test`)).toBe(`test`);
});