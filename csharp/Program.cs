var source = new int?[] { 1, null, 2, 3, null, 4 };

var emptyHash = new Dictionary<int, List<int>> {
  { 0, new List<int>() },
  { 1, new List<int>() },
  { 2, new List<int>() }
};
var result = source.Where(x => x != null)
                   .Select(x => x is null ? 0 : (int)(x))
                   .Select(x => x * 10)
                   .Aggregate(emptyHash, (acc, e) =>
                   {
                       acc[e % 3].Add(e);
                       return acc;
                   });

foreach (var (key, value) in result)
{
    Console.WriteLine($"{key}: [{String.Join(",", value)}]");
}