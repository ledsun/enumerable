const source = [0, 1, null, 2, 3, null, 4];

const result = source
  .filter((e) => e !== null)
  .map((e) => e * 10)
  .reduce(
    (acc, e) => {
      acc[e % 3].push(e);
      return acc;
    },
    { 0: [], 1: [], 2: [] }
  );

console.log(result);
