# Use an official Python runtime as a parent image
FROM python:3.8

# Set the working directory in the container
WORKDIR /app

# Copy the Python pyhtoncode into the container at /app
COPY pyhtoncode.py /app/

# Copy the text file into the container at /app
COPY random_paragraphs.txt /app/

# Install any needed dependencies specified in requirements.txt
RUN pip install nltk

# Download NLTK resources
RUN python -m nltk.downloader punkt
RUN python -m nltk.downloader stopwords

# Run the Python pyhtoncode
CMD ["python", "pyhtoncode.py"]