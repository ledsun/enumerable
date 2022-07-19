source = [0, 1, nil, 2, 3, nil, 4]

result = source
  .find_all { _1 }
  .collect { _1 * 10 }
  .inject({ 0 => [], 1 => [], 2 => [] }) do
    _1[_2 % 3] << _2
    _1
  end

p result
