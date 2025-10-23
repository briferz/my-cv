// ATS-Friendly CV Template
// Single-column layout optimized for Applicant Tracking Systems
// Author: Luis BRITO

// Set document properties
#set document(title: "Luis BRITO - CV", author: "Luis BRITO")
#set page(
  paper: "a4",
  margin: (x: 2cm, y: 2cm),
)

// Typography settings - simple and ATS-friendly
#set text(
  font: "New Computer Modern",
  size: 10pt,
  lang: "en",
)

// Simple heading styles
#show heading.where(level: 1): it => block(
  width: 100%,
  below: 0.5em,
)[
  #text(size: 11pt, weight: "bold", upper(it.body))
  #line(length: 100%, stroke: 0.5pt)
]

// Helper functions
#let job-entry(title, company, period, location: none) = {
  block(below: 0.3em)[
    *#title* | #company #if location != none [ | #location] \
    #text(style: "italic")[#period]
  ]
}

// ====================
// HEADER
// ====================
#align(center)[
  #text(size: 18pt, weight: "bold")[LUIS BRITO] \
  #v(0.2em)
  #text(size: 11pt)[Sr. Lead - Platform Engineering]
]

#v(0.5em)

// Contact Information
#align(center)[
  Email: luis.brfernandez\@gmail.com |
  LinkedIn: linkedin.com/in/luis-bri-fer |
  Location: Cuernavaca, Morelos, Mexico
]

#v(0.3em)
#align(right)[
  #text(size: 8pt, style: "italic")[Last updated: #datetime.today().display("[month repr:long] [year]")]
]

#v(0.5em)

// ====================
// PROFESSIONAL SUMMARY
// ====================
#heading(level: 1)[Professional Summary]

Senior technical leader with 10+ years of experience building Internal Developer Platforms and driving DevOps transformation. Proven track record of enhancing engineering productivity through platform engineering solutions that seamlessly integrate best practices in development, infrastructure, and architecture. Expertise in leading high-performing teams, architecting scalable cloud-native systems, and fostering DevOps culture across organizations.

// ====================
// CORE COMPETENCIES
// ====================
#heading(level: 1)[Core Competencies]

*Leadership & Management:* Team Leadership, Technical Leadership, Stakeholder Management

*Platform & DevOps:* Platform Engineering, Internal Developer Platforms, CI/CD Pipelines, Infrastructure as Code

*Cloud & Infrastructure:* AWS (ECS, Fargate, CDK), Kubernetes, Terraform, Crossplane

*Programming Languages:* Python, Go, JavaScript/Node.js, Bash, C++, Java

*Tools & Technologies:* GitHub Actions, KCL, Kafka, RabbitMQ, SQL, NoSQL

*Architecture:* Software Architecture, Microservices, Message-Driven Systems, SCADA Systems, Mission-Critical Systems

*Languages:* Spanish (Native), English (Full Professional), French (Limited Working)

// ====================
// PROFESSIONAL EXPERIENCE
// ====================
#heading(level: 1)[Professional Experience]

#job-entry("DevOps Sr. Lead", "Spin", "Jan 2025 - Present", location: "Mexico")
- Lead platform engineering initiatives and DevOps transformation across the organization
- Drive strategic technical decisions for platform architecture and infrastructure
- Mentor engineering teams and promote best practices in DevOps and platform engineering

#v(0.5em)

#job-entry("DevOps Platform Lead", "Spin", "Nov 2023 - Jan 2025", location: "Mexico")
- Managed a DevOps team responsible for developing and enhancing platform solutions for a specific Business Unit
- Collaborated in the design and implementation of an in-house Internal Developer Platform
- Drove adoption of platform engineering best practices across development teams
- Led initiatives to improve developer productivity and streamline software delivery processes

#v(0.5em)

#job-entry("DevOps Engineer", "Spin", "Jan 2023 - Nov 2023", location: "Mexico")
- Contributed to platform solution development and implemented DevOps practices and automation workflows
- Collaborated with cross-functional teams to improve infrastructure reliability

#v(0.5em)

#job-entry("DevOps Engineer", "Onuu", "Aug 2022 - Nov 2022")
- Deployed and maintained observability and monitoring tools in AWS using container technologies (ECS Fargate)
- Designed and implemented process improvements for development practices
- Created and maintained CI/CD pipelines using GitHub Actions
- Automated development workflows and implemented Infrastructure as Code using Terraform and AWS SDK
- Performed infrastructure troubleshooting and optimization
- Tech Stack: AWS Cloud, Terraform, AWS CDK, GitHub Actions, Ansible, Python, Bash

#v(0.5em)

#job-entry("DevOps Engineer", "Oyster Financial, Inc.", "Jan 2022 - Aug 2022", location: "Mexico City")
- Implemented DevOps culture and practices to increase team productivity and system reliability
- Managed Kubernetes clusters and container orchestration for microservices architecture
- Automated infrastructure provisioning and configuration management
- Tech Stack: Kubernetes, Terraform, Ansible, Jenkins

#v(0.5em)

#job-entry("Software Engineer", "Oyster Financial, Inc.", "May 2021 - Jan 2022", location: "Mexico City")
- Developed microservices-based financial applications to deliver customer value and support business objectives
- Conducted requirement analysis and designed software architecture for scalable solutions
- Implemented event-driven architecture using Kafka for real-time data processing
- Tech Stack: Python, JavaScript (Node.js), Kafka, MySQL

#v(0.5em)

#job-entry("Tech Lead", "Credijusto", "Oct 2019 - May 2021", location: "Mexico City")
- Led the Customer Digital Experience Squad, making technical decisions and ensuring alignment between the engineering team and stakeholders
- Ensured technical tasks were well understood by developers and aligned with Product Manager and Engineering Manager goals
- Coordinated with cross-functional teams to deliver high-quality solutions

#v(0.5em)

#job-entry("Software Engineer", "Credijusto", "May 2019 - Oct 2019", location: "Mexico City")
- Developed backend services and APIs for fintech lending platform
- Solved complex technical challenges in a high-performance financial environment
- Applied modern development practices including code reviews, testing, and continuous integration
- Tech Stack: Go, Python, PostgreSQL

#v(0.5em)

#job-entry("Backend / Middleware Developer", "Instituto Nacional de Electricidad y Energias Limpias", "Jan 2018 - Apr 2019", location: "Cuernavaca")
- Led development of storage solutions and message broker-based architecture for SCADA system (CFE)
- Worked on a 20-member team developing mission-critical infrastructure
- Tech Stack: Go, MongoDB, PostgreSQL, Redis, RabbitMQ

#v(0.5em)

#job-entry("Back-End Developer", "Instituto Nacional de Electricidad y Energias Limpias", "Nov 2013 - Dec 2016", location: "Cuernavaca")
- Contributed to 12-member team developing Mission Critical System for Laguna Verde Nuclear Power Plant
- Co-developed C++ backend modules: alarm system, task-dispatching framework, reporting applications, and signal averaging system
- Developed Java front-end code for file synchronization

// ====================
// EDUCATION
// ====================
#heading(level: 1)[Education]

*Bachelor of Engineering in Computer Systems* | Instituto Tecnologico de Zacatepec | 2008 - 2013 \
Computer Engineering
