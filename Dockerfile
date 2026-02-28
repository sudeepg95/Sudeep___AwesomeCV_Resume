FROM texlive/texlive:latest

# Install the specific fonts you need
RUN apt-get update && apt-get install -y --no-install-recommends \
    fonts-roboto \
    fonts-adobe-sourcesans3 \
    && rm -rf /var/lib/apt/lists/*