class ProjectModel {
  final String imgURL;
  final String projectName;
  final String description;
  final String playStoreUrl;
  final List<String> technologies;

  const ProjectModel({
    required this.imgURL,
    required this.projectName,
    required this.description,
    required this.playStoreUrl,
    required this.technologies,
  });
}

const List<String> _clientAppTechnologies = [
  'Android',
  'Java',
  'REST APIs / Retrofit',
  'SQLite / Room',
  'MVVM Architecture',
  'Firebase',
  'Google Play Services',
  'Clean Architecture',
];

const List<ProjectModel> projects = [
  ProjectModel(
    description: 'Streamline your sales process, manage customer relationships, track leads, and boost team productivity with an all-in-one Salesforce management solution.',
    imgURL: 'asset/images/projects/master_moltyfoam.jpeg',
    projectName: 'Master MoltyFoam',
    playStoreUrl:
        'https://play.google.com/store/apps/details?id=com.bmcsolution.moltysalesforce&hl=en',
    technologies: [
      'Flutter',
      'GetX',
      'Google Play Services',
      'rest APIs / Retrofit',
      'State Management - GetX',
      'Dependency Injection - GetX',
      'Sqflite',
      'Firebase',
      'Clean Architecture',
    ],
  ),
  ProjectModel(
    description: 'Habib Qatar Currency Exchange offers fast and reliable currency exchange services. Experience quick transactions with competitive rates.',
    imgURL: 'asset/images/projects/hq.png',
    projectName: 'Habib Qatar Currency Exchange',
    playStoreUrl:
        'https://play.google.com/store/apps/details?id=com.bmcsolution.habibQatar&hl=en',
    technologies: [
      'Flutter',
      'Bloc',
      'Google Play Services',
      'rest APIs / Retrofit',
      'State Management - Bloc',
      'Sqflite',
      'Firebase',
      'Clean Architecture',
    ],
  ),
  ProjectModel(
    description: 'CRM System developed for Pharmaceutical sales force.',
    imgURL: 'asset/images/projects/rb.png',
    projectName: 'RB ILMM',
    playStoreUrl:
        'https://play.google.com/store/apps/details?id=com.application.bmc.rbechelon&hl=en',
    technologies: _clientAppTechnologies,
  ),
  ProjectModel(
    description: 'BARRETT HODGSON is a market visit tracking solution that helps FMCG businesses streamline field operations, monitor performance, and access real-time data for better decision-making.',
    imgURL: 'asset/images/projects/bh.webp',
    projectName: 'Barrett Hodgson SMR',
    playStoreUrl:
        'https://play.google.com/store/apps/details?id=com.application.bmc.barretthodgsonsmr&hl=en',
    technologies: _clientAppTechnologies,
  ),
  ProjectModel(
    description:
        'Sales-force execution application,is a market visit tracking solution that helps FMCG businesses streamline field operations, monitor performance, and access real-time data for better decision-making.',
    imgURL: 'asset/images/projects/atco.png',
    projectName: 'ATCO-SFE Execution',
    playStoreUrl:
        'https://play.google.com/store/apps/details?id=com.application.bmc.atcoexe',
    technologies: [
      'Flutter',
      'GetX',
      'Google Play Services',
      'rest APIs / Retrofit',
      'State Management - GetX',
      'Dependency Injection - GetX',
      'Sqflite',
      'Firebase',
      'Clean Architecture',
    ],
  ),
  ProjectModel(
    description: 'Sales-force monthly planning application',
    imgURL: 'asset/images/projects/atco.png',
    projectName: 'ATCO-SFE Planner',
    playStoreUrl:
        'https://play.google.com/store/apps/details?id=com.application.bmc.atcoofflineplanner',
    technologies: [
      'Flutter',
      'GetX',
      'Google Play Services',
      'rest APIs / Retrofit',
      'State Management - GetX',
      'Dependency Injection - GetX',
      'Sqflite',
      'Firebase',
      'Clean Architecture',
    ],
  ),
  ProjectModel(
    description: 'MG Link provides comprehensive information on the Forex, Money Markets, Central bank, Economic indicators, Equities, Commodities and mutual fund market.',
    imgURL: 'asset/images/projects/mg.png',
    projectName: 'MG Link News',
    playStoreUrl:
        'https://play.google.com/store/apps/details?id=com.newsweb.mglink.mglinknewsweb',
    technologies: _clientAppTechnologies,
  ),
  ProjectModel(
    description: 'A pharmaceutical business management solution that unifies end-to-end processes, connects stakeholders, and provides real-time data for better control and decision-making.',
    imgURL: 'asset/images/projects/agri.png',
    projectName: 'CRM - Agri LCI',
    playStoreUrl:
        'https://play.google.com/store/apps/details?id=com.application.bmc.iciagri',
    technologies: [
      'Kotlin',
      'Android',
      'Google Play Services',
      'Retrofit',
      'MVVM',
      'Dagger',
      'Coroutines',
      'Firebase',
      'Clean Architecture',
      'Dispatchers',
    ],
  ),
  ProjectModel(
    description: 'Monthly planning application for sales-force.',
    imgURL: 'asset/images/projects/agri.png',
    projectName: 'Planner - Agri LCI',
    playStoreUrl:
        'https://play.google.com/store/apps/details?id=com.application.bmc.ici_agriofflineplanner',
    technologies: [
      'Kotlin',
      'Android',
      'Google Play Services',
      'Retrofit',
      'MVVM',
      'Dagger',
      'Coroutines',
      'Firebase',
      'Clean Architecture',
      'Dispatchers',
    ],
  ),
  ProjectModel(
    description: 'The need of managing end to end processes and real time data has become a focal point for the industries like FMCG.',
    imgURL: 'asset/images/projects/cibex.jpeg',
    projectName: 'Cibex',
    playStoreUrl:
        'https://play.google.com/store/apps/details?id=com.application.bmc.cibexexecution&hl=en',
    technologies: _clientAppTechnologies,
  ),
  ProjectModel(
    description: 'AlbertPharma CRM is a customer relationship management application designed for pharmaceutical sales representatives and managers. The application helps pharmaceutical organizations streamline field operations, improve sales force productivity, and maintain accurate customer records.',
    imgURL: 'asset/images/projects/albert.jpeg',
    projectName: 'Albert Pharma',
    playStoreUrl:
        'https://play.google.com/store/apps/details?id=com.application.bmc.albertpharmacrm&hl=en',
    technologies: [
      'Flutter',
      'GetX',
      'Google Play Services',
      'rest APIs / Retrofit',
      'State Management - GetX',
      'Dependency Injection - GetX',
      'Sqflite',
      'Firebase',
      'Clean Architecture',
    ],
  ),
  ProjectModel(
    description: 'Task management application, helps you create, assign, and track tasks with ease. Stay productive with real-time updates, task filters, and user-wise task management. Perfect for teams and individuals.',
    imgURL: 'asset/images/projects/task.webp',
    projectName: 'Task Management System',
    playStoreUrl:
        'https://play.google.com/store/apps/details?id=com.takverge.taskmanagement&hl=en',
    technologies: [
      'Kotlin - Jetpack Compose',
      'rest APIs / Retrofit',
      'Sqlite / Room',
      'Firebase',
      'Clean Architecture',
    ],
  ),
  ProjectModel(
    description: 'MedicsLab is a comprehensive healthcare management solution that streamlines patient care, appointment scheduling, and medical record management for clinics and hospitals.',
    imgURL: 'asset/images/projects/medics.png',
    projectName: 'MedicsLab',
    playStoreUrl:
        'https://play.google.com/store/apps/details?id=com.application.bmc.medicslabcrm&hl=en',
    technologies: _clientAppTechnologies,
  ),
  ProjectModel(
    description:
        'Real-time communication and collaboration for first responders, including voice, video, chat, and location sharing.',
    imgURL: 'asset/images/projects/igan.webp',
    projectName: 'IGAN (Incident Global Area Network)',
    playStoreUrl:
        'https://play.google.com/store/apps/details?id=com.igancomms.igan',
    technologies: [
      'Kotlin',
      'Android',
      'Google Play Services',
      'Retrofit',
      'MVVM',
      'Dagger',
      'XMPP',
      'WebRTC',
    ],
  ),
];
