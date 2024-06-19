export function groupBy<T, K, V = T>(
  array: T[],
  keySelector: (item: T) => K,
  valueMapper?: (item: T) => V,
): Map<K, V[]> {
  return array.reduce((map, item) => {
    const key = keySelector(item);
    const value = valueMapper ? valueMapper(item) : (item as unknown as V);

    if (!map.has(key)) {
      map.set(key, []);
    }

    map.get(key)?.push(value);
    return map;
  }, new Map<K, V[]>());
}

export function associateBy<T, K, V = T>(
  array: T[],
  keySelector: (item: T) => K,
  valueMapper?: (item: T) => V,
): Map<K, V> {
  return array.reduce((map, item) => {
    const key = keySelector(item);
    const value = valueMapper ? valueMapper(item) : (item as unknown as V);

    map.set(key, value);

    return map;
  }, new Map<K, V>());
}
