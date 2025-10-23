# Luis BRITO - CV

Professional CV for Sr. Lead - Platform Engineering, built with [Typst](https://typst.app/).

## 📄 CV Versions

This repository contains two versions of my CV, optimized for different use cases:

### 1. **cv.pdf** - Stylish Version
Modern two-column layout with blue sidebar featuring:
- Eye-catching visual design
- Contact info, languages, and skills in sidebar
- Professional summary and experience in main column
- Perfect for human reviewers

**Best for:** Networking events, direct submissions to recruiters, LinkedIn profile, portfolio website

### 2. **cv-ats.pdf** - ATS-Friendly Version
Single-column layout optimized for Applicant Tracking Systems:
- Simple, clean formatting without complex layouts
- All information in linear, parseable format
- Keywords prominently displayed
- Standard section headings and structure

**Best for:** Online job applications, company career portals, job boards (LinkedIn Jobs, Indeed), automated screening systems

## 🚀 Quick Start

### Option 1: Using Docker (Recommended for consistency)

Generate both PDF versions using Docker:

```bash
./build-cv.sh
```

The PDFs will be generated in the `output/` directory.

**Manual Docker commands:**

```bash
# Build the Docker image
docker build -t cv-builder .

# Run to generate PDFs
docker run --rm -v "$(pwd)/output:/cv/output" cv-builder
```

### Option 2: Using Local Typst Installation

If you have Typst installed locally:

```bash
# Compile stylish version
typst compile cv.typ

# Compile ATS-friendly version
typst compile cv-ats.typ

# Watch for changes (auto-recompile)
typst watch cv.typ
typst watch cv-ats.typ
```

## 🛠️ Requirements

### For Docker approach:
- Docker installed on your system

### For local compilation:
- [Typst](https://github.com/typst/typst) installed
  - macOS: `brew install typst`
  - Linux: Download from [releases](https://github.com/typst/typst/releases)
  - Windows: Download from [releases](https://github.com/typst/typst/releases)

## 📝 Editing

1. Edit `cv.typ` (stylish version) or `cv-ats.typ` (ATS version)
2. Recompile using your preferred method above
3. **Important:** Both versions contain the same content - update both files when making content changes

### Key Features

- **Automatic date generation** - Both versions include "Last updated: [Month Year]" that updates automatically on compilation
- **A4 paper size** - Standard international format (210mm × 297mm), suitable for Mexico and most of the world
- **10+ years of experience** - Platform Engineering, DevOps, and Software Architecture
- **Comprehensive skills** - Leadership, Platform Engineering, Cloud Infrastructure, Programming, and Tools

## 🎨 Design Details

### Stylish Version (cv.typ)
- **Layout:** Two-column design (35% sidebar / 65% main content)
- **Color scheme:** Dark blue sidebar (#2c3e50) with bright blue accents (#2563eb)
- **Typography:** 9.5pt base font, optimized to fit in 2 pages
- **Sections:** Contact, Languages, Core Skills (sidebar) | Summary, Experience, Education (main)

### ATS Version (cv-ats.typ)
- **Layout:** Single-column for maximum parseability
- **Formatting:** Simple text styling, clear headings, standard bullet points
- **Keywords:** Technical skills prominently displayed
- **Margins:** Standard 2cm margins all around

## 📦 Repository Structure

```
my-cv/
├── cv.typ                  # Stylish two-column CV source
├── cv-ats.typ             # ATS-friendly single-column CV source
├── Dockerfile             # Docker configuration for compilation
├── build-cv.sh            # Convenience script for Docker builds
├── .gitignore             # Git ignore rules (excludes PDFs, output/, cache)
├── README.md              # This file
├── Profile.pdf            # LinkedIn profile (not committed)
└── output/                # Generated PDFs (not committed)
    ├── cv.pdf
    └── cv-ats.pdf
```

## 🔄 Typical Workflow

1. **Edit content** - Update both `cv.typ` and `cv-ats.typ` with your latest experience
2. **Build PDFs** - Run `./build-cv.sh` (Docker) or `typst compile cv.typ && typst compile cv-ats.typ` (local)
3. **Review output** - Check generated PDFs in `output/` directory (Docker) or current directory (local)
4. **Use appropriate version:**
   - Networking/Direct submissions → Use `cv.pdf` (stylish)
   - Online applications → Use `cv-ats.pdf` (ATS-friendly)

## 💡 Tips

- **For live editing:** Use `typst watch cv.typ` to auto-recompile on save
- **Docker benefits:** Consistent output across all environments, no local Typst installation needed
- **ATS compatibility:** Always use the ATS version for online job portals to ensure proper parsing
- **Updates:** The "Last updated" date automatically reflects the compilation date

## 🌍 International Standards

This CV uses **A4 paper size** (210mm × 297mm), which is the international standard used in:
- Mexico
- Europe
- Latin America
- Asia, Africa, Australia
- Most international companies

If you need US Letter size (8.5" × 11"), change `paper: "a4"` to `paper: "us-letter"` in the Typst files.

## 📄 About

**Professional Profile:**
- Sr. Lead - Platform Engineering
- 10+ years in software engineering and technical leadership
- Specialization: Platform Engineering, DevOps, Cloud Architecture
- Languages: Spanish (Native), English (Full Professional), French (Limited Working)

---

*Built with [Typst](https://typst.app/) • Dates update automatically on compilation*
