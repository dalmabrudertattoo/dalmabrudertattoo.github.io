function monthNumToString(monthNum) {
  var monthNumToStringMap = {
    0: 'Január',
    1: 'Február',
    2: 'Március',
    3: 'Április',
    4: 'Május',
    5: 'Június',
    6: 'Július',
    7: 'Augusztus',
    8: 'Szeptember',
    9: 'Október',
    10: 'November',
    11: 'December'
  };

  if (!monthNumToStringMap[monthNum])
    throw new Error('monthNum must be a number between 0 and 11.');
  
  return monthNumToStringMap[monthNum];
}

module.exports = function (files) {
  if (!files)
    return {};

  var groupedByYearAndMonth = {};

  files.forEach(function (file) {
    var date = new Date(file.meta.date);
    var monthStr = monthNumToString(date.getMonth());
    var year = date.getFullYear();
    var yearPlusMonth = `${year} ${monthStr}`;

    if (!groupedByYearAndMonth[yearPlusMonth])
      groupedByYearAndMonth[yearPlusMonth] = [];

    groupedByYearAndMonth[yearPlusMonth].push(file);
  });

  return groupedByYearAndMonth;
};

