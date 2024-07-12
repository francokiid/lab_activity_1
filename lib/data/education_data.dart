class EducationData {
  final String logo;
  final String name;
  final String academicYear;
  final String specialization;
  final String achievement;

  EducationData({
    required this.logo,
    required this.name,
    required this.academicYear,
    required this.specialization,
    required this.achievement
  });
}

List<EducationData> schoolsList = [
  EducationData(
    logo: 'lib/assets/images/bsu.png',
    name: 'Batangas State University',
    academicYear: 'College AY 2020 - present',
    specialization: 'BS Information Technology',
    achievement: 'Deans Lister'
  ),
  EducationData(
    logo: 'lib/assets/images/dlsl.png',
    name: 'De La Salle Lipa',
    academicYear: 'High School AY 2014 - 2020',
    specialization: 'STEM Track',
    achievement: 'Consistent With Honors'
  ),
  EducationData(
    logo: 'lib/assets/images/tes.png',
    name: 'Tugtug Elementary School',
    academicYear: 'Elementary AY 2007 - 2014',
    specialization: '',
    achievement: 'Valedictorian'
  ),
];