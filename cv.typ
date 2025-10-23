// Modern CV Template for Software Engineering Leadership
// Author: Luis BRITO
// Two-column layout with blue sidebar

// Set document properties
#set document(title: "Luis BRITO - CV", author: "Luis BRITO")
#set page(
  paper: "a4",
  margin: (left: 0cm, right: 0cm, top: 0cm, bottom: 0cm),
)

// Typography settings
#set text(
  font: "New Computer Modern",
  size: 9.5pt,
  lang: "en",
)

// Color scheme
#let primary-color = rgb("#2c3e50")  // Dark blue-grey for sidebar
#let accent-color = rgb("#2563eb")   // Bright blue for accents
#let text-light = rgb("#ffffff")     // White text
#let text-dark = rgb("#1a1a1a")      // Dark text

// Helper functions for sidebar
#let sidebar-heading(body) = {
  block(
    width: 100%,
    below: 0.6em,
    above: 1em,
  )[
    #text(
      size: 11pt,
      weight: "bold",
      fill: text-light,
      upper(body)
    )
    #v(-0.3em)
    #line(length: 100%, stroke: 1.5pt + accent-color)
  ]
}

#let sidebar-item(body) = {
  block(below: 0.8em)[
    #text(fill: text-light, size: 9pt)[#body]
  ]
}

#let skill-item(body) = {
  block(below: 0.4em)[
    #text(fill: text-light, size: 9pt)[• #body]
  ]
}

// Helper functions for main content
#let main-heading(body) = {
  block(
    width: 100%,
    below: 0.6em,
    above: 1.4em,
  )[
    #text(
      size: 12pt,
      weight: "bold",
      fill: accent-color,
      upper(body)
    )
    #v(-0.5em)
    #line(length: 100%, stroke: 1.5pt + accent-color)
  ]
}

#let job-title(title, company, period, location: none) = {
  block(width: 100%, below: 0.2em)[
    #grid(
      columns: (1fr, auto),
      [
        #text(weight: "bold", size: 10.5pt, fill: primary-color)[#title] \
        #text(style: "italic", fill: rgb("#4b5563"), size: 9.5pt)[#company]
      ],
      align(right)[
        #text(size: 8.5pt, fill: rgb("#6b7280"))[#period] \
        #if location != none [
          #text(size: 8.5pt, fill: rgb("#6b7280"), style: "italic")[#location]
        ]
      ]
    )
  ]
}

// Main layout
#grid(
  columns: (35%, 65%),
  column-gutter: 0pt,

  // ========================================
  // LEFT SIDEBAR (Blue Column)
  // ========================================
  block(
    fill: primary-color,
    width: 100%,
    height: 100%,
    inset: (x: 1.5cm, top: 2cm, bottom: 2cm),
  )[
    // Profile header
    #align(center)[
      #text(size: 24pt, weight: "bold", fill: text-light)[Luis BRITO]
      #v(0.3em)
      #text(size: 11pt, fill: text-light, weight: "medium")[
        Sr. Lead - Platform Engineering
      ]
    ]

    #v(1.5em)

    // Contact Information
    #sidebar-heading[Contact]

    #sidebar-item[
      *Email*\
      luis.brfernandez\@gmail.com
    ]

    #sidebar-item[
      *LinkedIn*\
      linkedin.com/in/luis-bri-fer
    ]

    #sidebar-item[
      *Location*\
      Cuernavaca, Morelos\
      Mexico
    ]

    #v(0.5em)

    // Languages
    #sidebar-heading[Languages]

    #sidebar-item[
      *Spanish*\
      Native
    ]

    #sidebar-item[
      *English*\
      Full Professional
    ]

    #sidebar-item[
      *French*\
      Limited Working
    ]

    #v(0.5em)

    // Technical Skills
    #sidebar-heading[Core Skills]

    #text(fill: text-light, size: 9pt, weight: "bold")[Leadership & Management]
    #skill-item[Team Leadership]
    #skill-item[Technical Leadership]
    #skill-item[Stakeholder Management]

    #v(0.8em)

    #text(fill: text-light, size: 9pt, weight: "bold")[Platform & DevOps]
    #skill-item[Platform Engineering]
    #skill-item[Internal Developer Platforms]
    #skill-item[CI/CD Pipelines]
    #skill-item[Infrastructure as Code]

    #v(0.8em)

    #text(fill: text-light, size: 9pt, weight: "bold")[Cloud & Infrastructure]
    #skill-item[AWS (ECS, Fargate, CDK)]
    #skill-item[Kubernetes]
    #skill-item[Terraform]
    #skill-item[Crossplane]

    #v(0.8em)

    #text(fill: text-light, size: 9pt, weight: "bold")[Programming]
    #skill-item[Python]
    #skill-item[Go]
    #skill-item[JavaScript/Node.js]
    #skill-item[Bash]
    #skill-item[C++, Java]

    #v(0.8em)

    #text(fill: text-light, size: 9pt, weight: "bold")[Tools & Technologies]
    #skill-item[GitHub Actions]
    #skill-item[KCL]
    #skill-item[Kafka, RabbitMQ]
    #skill-item[SQL, NoSQL]
  ],

  // ========================================
  // RIGHT COLUMN (Main Content)
  // ========================================
  block(
    width: 100%,
    inset: (x: 1.5cm, top: 2cm, bottom: 2cm),
  )[
    // Date in upper right
    #align(right)[
      #text(size: 8pt, fill: rgb("#6b7280"), style: "italic")[
        Last updated: #datetime.today().display("[month repr:long] [year]")
      ]
    ]

    #v(0.5em)

    // Professional Summary
    #main-heading[Professional Summary]

    Senior technical leader with 10+ years of experience building Internal Developer Platforms and driving DevOps transformation. Proven track record of enhancing engineering productivity through platform engineering solutions that seamlessly integrate best practices in development, infrastructure, and architecture. Expertise in leading high-performing teams, architecting scalable cloud-native systems, and fostering DevOps culture across organizations.

    // Professional Experience
    #main-heading[Professional Experience]

    #job-title(
      "DevOps Sr. Lead",
      "Spin",
      "Jan 2025 - Present",
      location: "Mexico"
    )
    #v(0.2em)
    - Lead platform engineering initiatives and DevOps transformation across the organization
    - Drive strategic technical decisions for platform architecture and infrastructure
    - Mentor engineering teams and promote best practices in DevOps and platform engineering

    #v(0.6em)

    #job-title(
      "DevOps Platform Lead",
      "Spin",
      "Nov 2023 - Jan 2025",
      location: "Mexico"
    )
    #v(0.2em)
    - Managed a DevOps team responsible for developing and enhancing platform solutions for a specific Business Unit
    - Collaborated in the design and implementation of an in-house Internal Developer Platform
    - Drove adoption of platform engineering best practices across development teams
    - Led initiatives to improve developer productivity and streamline software delivery processes

    #v(0.6em)

    #job-title(
      "DevOps Engineer",
      "Spin",
      "Jan 2023 - Nov 2023",
      location: "Mexico"
    )
    #v(0.2em)
    - Contributed to platform solution development and implemented DevOps practices and automation workflows
    - Collaborated with cross-functional teams to improve infrastructure reliability

    #v(0.6em)

    #job-title(
      "DevOps Engineer",
      "Onuu",
      "Aug 2022 - Nov 2022",
    )
    #v(0.2em)
    - Deployed and maintained observability and monitoring tools in AWS using container technologies (ECS Fargate)
    - Designed and implemented process improvements for development practices
    - Created and maintained CI/CD pipelines using GitHub Actions
    - Automated development workflows and implemented Infrastructure as Code using Terraform and AWS SDK
    - Performed infrastructure troubleshooting and optimization
    - *Tech Stack:* AWS Cloud, Terraform, AWS CDK, GitHub Actions, Ansible, Python, Bash

    #v(0.6em)

    #job-title(
      "DevOps Engineer",
      "Oyster Financial, Inc.",
      "Jan 2022 - Aug 2022",
      location: "Mexico City"
    )
    #v(0.2em)
    - Implemented DevOps culture and practices to increase team productivity and system reliability
    - Managed Kubernetes clusters and container orchestration for microservices architecture
    - Automated infrastructure provisioning and configuration management
    - *Tech Stack:* Kubernetes, Terraform, Ansible, Jenkins

    #v(0.6em)

    #job-title(
      "Software Engineer",
      "Oyster Financial, Inc.",
      "May 2021 - Jan 2022",
      location: "Mexico City"
    )
    #v(0.2em)
    - Developed microservices-based financial applications to deliver customer value and support business objectives
    - Conducted requirement analysis and designed software architecture for scalable solutions
    - Implemented event-driven architecture using Kafka for real-time data processing
    - *Tech Stack:* Python, JavaScript (Node.js), Kafka, MySQL

    #v(0.6em)

    #job-title(
      "Tech Lead",
      "Credijusto",
      "Oct 2019 - May 2021",
      location: "Mexico City"
    )
    #v(0.2em)
    - Led the Customer Digital Experience Squad, making technical decisions and ensuring alignment between the engineering team and stakeholders
    - Ensured technical tasks were well understood by developers and aligned with Product Manager and Engineering Manager goals
    - Coordinated with cross-functional teams to deliver high-quality solutions

    #v(0.6em)

    #job-title(
      "Software Engineer",
      "Credijusto",
      "May 2019 - Oct 2019",
      location: "Mexico City"
    )
    #v(0.2em)
    - Developed backend services and APIs for fintech lending platform
    - Solved complex technical challenges in a high-performance financial environment
    - Applied modern development practices including code reviews, testing, and continuous integration
    - *Tech Stack:* Go, Python, PostgreSQL

    #v(0.6em)

    #job-title(
      "Backend / Middleware Developer",
      "Instituto Nacional de Electricidad y Energias Limpias",
      "Jan 2018 - Apr 2019",
      location: "Cuernavaca"
    )
    #v(0.2em)
    - Led development of storage solutions and message broker-based architecture for SCADA system (CFE)
    - Worked on a 20-member team developing mission-critical infrastructure
    - *Tech Stack:* Go, MongoDB, PostgreSQL, Redis, RabbitMQ

    #v(0.6em)

    #job-title(
      "Back-End Developer",
      "Instituto Nacional de Electricidad y Energias Limpias",
      "Nov 2013 - Dec 2016",
      location: "Cuernavaca"
    )
    #v(0.2em)
    - Contributed to 12-member team developing Mission Critical System for Laguna Verde Nuclear Power Plant
    - Co-developed C++ backend modules: alarm system, task-dispatching framework, reporting applications, and signal averaging system
    - Developed Java front-end code for file synchronization

    // Education
    #main-heading[Education]

    #job-title(
      "Bachelor of Engineering in Computer Systems",
      "Instituto Tecnologico de Zacatepec",
      "2008 - 2013",
    )
    #v(0.2em)
    Computer Engineering
  ]
)
