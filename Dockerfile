# Dockerfile for Typst CV compilation
# This allows you to compile your CV PDFs in any environment

FROM alpine:latest

# Install Typst
RUN apk add --no-cache typst

# Set working directory
WORKDIR /cv

# Copy CV source files
COPY cv.typ cv-ats.typ ./

# Create output directory
RUN mkdir -p output

# Compile both versions
CMD ["sh", "-c", "typst compile cv.typ output/cv.pdf && typst compile cv-ats.typ output/cv-ats.pdf && echo 'PDFs generated successfully in output/ directory'"]
