// Modern CV Template for Software Engineering Leadership
// Author: Luis BRITO

// Set document properties
#set document(title: "Luis BRITO - CV", author: "Luis BRITO")
#set page(
  paper: "a4",
  margin: (x: 1.5cm, y: 1.5cm),
)

// Typography settings
#set text(
  font: "New Computer Modern",
  size: 10pt,
  lang: "en",
)

// Heading styles
#show heading.where(level: 1): it => text(
  size: 24pt,
  weight: "bold",
  fill: rgb("#1a1a1a"),
  it.body,
)

#show heading.where(level: 2): it => block(
  width: 100%,
  below: 0.8em,
  above: 1.2em,
)[
  #text(
    size: 13pt,
    weight: "bold",
    fill: rgb("#2563eb"),
    upper(it.body)
  )
  #v(-0.5em)
  #line(length: 100%, stroke: 1.5pt + rgb("#2563eb"))
]

// Helper functions
#let section-heading(body) = {
  heading(level: 2, body)
}

#let job-title(title, company, period, location: none) = {
  block(width: 100%, below: 0.3em)[
    #grid(
      columns: (1fr, auto),
      [
        #text(weight: "bold", size: 11pt)[#title] \
        #text(style: "italic", fill: rgb("#4b5563"))[#company]
      ],
      align(right)[
        #text(size: 9pt, fill: rgb("#6b7280"))[#period] \
        #if location != none [
          #text(size: 9pt, fill: rgb("#6b7280"), style: "italic")[#location]
        ]
      ]
    )
  ]
}

#let skill-category(category, skills) = {
  block(below: 0.5em)[
    #text(weight: "bold", fill: rgb("#1f2937"))[#category:] #skills
  ]
}

#let contact-item(icon, content) = {
  box[#icon #content]
}

// ====================
// HEADER
// ====================
#align(center)[
  #text(size: 32pt, weight: "bold", fill: rgb("#1a1a1a"))[Luis BRITO]

  #v(0.3em)
  #text(size: 14pt, fill: rgb("#2563eb"), weight: "medium")[
    Sr. Lead - Platform Engineering
  ]

  #v(0.5em)
  #grid(
    columns: (auto, auto, auto),
    column-gutter: 1.5em,
    text(size: 9pt)[Email: #link("mailto:luis.brfernandez@gmail.com")[luis.brfernandez\@gmail.com]],
    text(size: 9pt)[LinkedIn: #link("https://linkedin.com/in/luis-bri-fer")[linkedin.com/in/luis-bri-fer]],
    text(size: 9pt)[Location: Cuernavaca, Morelos, Mexico],
  )
]

#v(0.8em)

// ====================
// PROFESSIONAL SUMMARY
// ====================
#section-heading[Professional Summary]

Dedicated software engineer and technical leader with 10+ years of experience specializing in platform engineering, DevOps, and software architecture. Proven track record of building Internal Developer Platforms that enhance engineering productivity by seamlessly integrating best practices in software development, infrastructure, and architecture. Expert in leading technical teams, driving DevOps transformation, and implementing scalable cloud-native solutions.

// ====================
// CORE COMPETENCIES
// ====================
#section-heading[Core Competencies]

#grid(
  columns: (1fr, 1fr),
  column-gutter: 1em,
  row-gutter: 0.5em,

  [
    #skill-category("Leadership & Management", "Team Leadership, Technical Leadership, Stakeholder Management, Engineering Culture")

    #skill-category("Platform & DevOps", "Platform Engineering, Internal Developer Platforms, CI/CD, Infrastructure as Code, DevOps Culture")

    #skill-category("Cloud & Infrastructure", "AWS, GCP, Kubernetes, Terraform, Container Technologies")
  ],

  [
    #skill-category("Programming Languages", "Python, Go, JavaScript/Node.js, Bash, C++, Java")

    #skill-category("Tools & Technologies", "Crossplane, Terraform, GitHub Actions, Jenkins, Kafka, RabbitMQ, PostgreSQL, MongoDB, Redis, MySQL")

    #skill-category("Architecture", "Software Architecture, Microservices, Message-Driven Systems, SCADA Systems, Mission-Critical Systems")
  ]
)

// ====================
// PROFESSIONAL EXPERIENCE
// ====================
#section-heading[Professional Experience]

#job-title(
  "DevOps Sr. Lead",
  "Spin",
  "Jan 2025 - Present",
  location: "Mexico"
)
#v(0.2em)
Leading platform engineering initiatives and DevOps transformation across the organization.

#v(0.8em)

#job-title(
  "DevOps Platform Lead",
  "Spin",
  "Nov 2023 - Jan 2025",
  location: "Mexico"
)
#v(0.2em)
- Managed a DevOps team responsible for developing and enhancing platform solutions for a particular Business Unit
- Collaborated in the design and implementation of an in-house Internal Developer Platform
- Drove adoption of platform engineering best practices across development teams
- Led initiatives to improve developer productivity and streamline software delivery processes

#v(0.8em)

#job-title(
  "DevOps Engineer",
  "Spin",
  "Jan 2023 - Nov 2023",
  location: "Mexico"
)
#v(0.2em)
Contributed to platform development and DevOps practices implementation.

#v(0.8em)

#job-title(
  "DevOps Engineer",
  "Onuu",
  "Aug 2022 - Nov 2022",
)
#v(0.2em)
- Deployed and maintained observability and monitoring tools in AWS using container technologies (ECS Fargate)
- Designed and implemented enhancement proposals for better development practices
- Created and maintained CI/CD pipelines using GitHub Actions
- Automated development processes and adopted IaC practices using Terraform and AWS SDK
- Performed infrastructure troubleshooting and optimization
- *Tech Stack:* AWS Cloud, Terraform, AWS CDK, GitHub Actions, Ansible, Python, Bash

#v(0.8em)

#job-title(
  "DevOps Engineer",
  "Oyster Financial, Inc.",
  "Jan 2022 - Aug 2022",
  location: "Mexico City"
)
#v(0.2em)
- Increased team productivity and reliability through DevOps culture implementation
- *Tech Stack:* Kubernetes, Terraform, Ansible, Jenkins

#v(0.8em)

#job-title(
  "Software Engineer",
  "Oyster Financial, Inc.",
  "May 2021 - Jan 2022",
  location: "Mexico City"
)
#v(0.2em)
- Developed financial services focused on adding customer value and achieving business objectives
- Conducted thorough requirement analysis and careful architecture design for IT projects
- *Tech Stack:* Python, JavaScript (Node.js), Kafka, MySQL

#v(0.8em)

#job-title(
  "Tech Lead",
  "Credijusto",
  "Oct 2019 - May 2021",
  location: "Mexico City"
)
#v(0.2em)
- Led the Customer Digital Experience Squad, making technical decisions and ensuring alignment between engineering team and stakeholders
- Ensured technical tasks were well understood by developers and aligned with Product Manager and Engineering Manager goals
- Coordinated with cross-functional teams to deliver high-quality solutions

#v(0.8em)

#job-title(
  "Software Engineer",
  "Credijusto",
  "May 2019 - May 2021",
  location: "Mexico City"
)
#v(0.2em)
- Solved diverse technical problems and designed solutions in a financial context
- Applied modern technologies and development best practices
- *Tech Stack:* Go, Python, PostgreSQL

#v(0.8em)

#job-title(
  "Backend / Middleware Developer",
  "Instituto Nacional de Electricidad y Energias Limpias",
  "Jan 2018 - Apr 2019",
  location: "Cuernavaca"
)
#v(0.2em)
- Led development of storage solutions for historical data in a SCADA system for CFE (Comision Federal de Electricidad)
- Designed and implemented message broker-based architecture for client terminal communications
- Worked on a 20-member team developing mission-critical infrastructure
- *Tech Stack:* Go, MongoDB, PostgreSQL, Redis, RabbitMQ

#v(0.8em)

#job-title(
  "Back-End Developer",
  "Instituto Nacional de Electricidad y Energias Limpias",
  "Nov 2013 - Dec 2016",
  location: "Cuernavaca"
)
#v(0.2em)
- Participated in 12-member team developing the Mission Critical System for Laguna Verde Nuclear Power Plant
- Co-developed multiple C++ backend modules including:
  - Alarm System based on hierarchical user roles
  - Task-dispatching framework with customizable processing priority
  - Report-generating applications for plant operators
  - Long-term signal averaging system
- Developed front-end Java code for file-synchronizing implementation

// ====================
// EDUCATION
// ====================
#section-heading[Education]

#job-title(
  "Bachelor of Engineering in Computer Systems",
  "Instituto Tecnologico de Zacatepec",
  "2008 - 2013",
)
#v(0.2em)
Computer Engineering

// ====================
// LANGUAGES
// ====================
#section-heading[Languages]

#grid(
  columns: (1fr, 1fr, 1fr),
  column-gutter: 1em,
  [*Spanish* - Native],
  [*English* - Full Professional],
  [*French* - Limited Working],
)
