function lp(n) {
  let cache = {};
  
  function traverse(x, y) {
    let key = x + '_' + y;
    if (cache[key] !== undefined) {
      return cache[key];
    }
    if (x > n || y > n) {
      return 0;
    }
    if (x === n && y === n) {
      return 1;
    }
    
    cache[key] = traverse(x + 1, y) + traverse(x, y + 1);
    return cache[key];
  }
  
  return traverse(0, 0);
}



console.log(lp(3));