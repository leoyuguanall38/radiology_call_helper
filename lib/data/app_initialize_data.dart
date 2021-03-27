import 'dart:math';

final List<String> allSections = [
  'ALL',
  'CHEST',
  'BODY',
  'NEURO',
  'IR',
  'PEDS',
  'NUCS',
  'MSK',
  'BREAST'
];

final List<String> urgencyLevels = [
  'STAT RED',
  'STAT ORANGE',
  'STAT YELLOW',
  'NOT STAT'
];

final Map<String, List<String>> urgencySublevels = {
  'STAT RED': ['ALL', '< 15 MIN', '< 30 MIN', '< 60 MIN'],
  'STAT ORANGE': ['ALL', '< 30 MIN', '< 1 HR', '< 2 HR'],
  'STAT YELLOW': ['ALL', '< 1 HR', '< 2 HR', '< 3 HR'],
  'NOT STAT': ['ALL']
};

var allSectionsData = {};

void initializeAllSectionsData() {
  var random = new Random();

  for (var i = 0; i < allSections.length; i++) {
    allSectionsData[allSections[i]] = {};

    urgencyLevels.forEach((element) {
      allSectionsData[allSections[i]][element] = {};
    });

    urgencySublevels['STAT RED'].forEach((element) {
      allSectionsData[allSections[i]]['STAT RED'][element] =
          random.nextInt(100);
    });

    urgencySublevels['STAT ORANGE'].forEach((element) {
      allSectionsData[allSections[i]]['STAT ORANGE'][element] =
          random.nextInt(100);
    });

    urgencySublevels['STAT YELLOW'].forEach((element) {
      allSectionsData[allSections[i]]['STAT YELLOW'][element] =
          random.nextInt(100);
    });

    urgencySublevels['NOT STAT'].forEach((element) {
      allSectionsData[allSections[i]]['NOT STAT'][element] =
          random.nextInt(100);
    });
  }

  print(allSectionsData);
}
