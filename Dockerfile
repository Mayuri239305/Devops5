# Start from the official Python base image.

FROM python:3.10.14-alpine

# Set the current working directory to /code. This is where we'll put the requirements.txt file and the app directory.
WORKDIR /code


# Copy the file with the requirements to the /code directory. Copy only the file with the requirements first, not the rest of the code.
# As this file doesn't change often, Docker will detect it and use the cache for this step, enabling the cache for the next step too.
COPY ./requirements.txt /code/requirements.txt

# Install the package dependencies in the requirements file.
RUN pip install --no-cache-dir --upgrade -r /code/requirements.txt

# Copy the ./app directory inside the /code directory.
COPY ./app /code/app

# Copy the ./app directory inside the /code directory.
CMD ["fastapi", "run", "app/main.py", "--port", "80"]