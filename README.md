# Assignment01

Project Overview

This project is a data processing pipeline using Docker to perform data loading, preprocessing, exploratory data analysis (EDA), visualization, and K-Means clustering. The pipeline is executed inside a Docker container and produces output files that are copied back to the host machine.

Project Structure

Docker Commands Used

1. Build Docker Image

2. Run Docker Container

3. Execute the Pipeline Inside the Container

4. Copy Output Files to Host Machine

5. Stop and Remove the Container

Execution Steps

Build the Docker image using the provided Dockerfile.

Run the container based on the image.

Enter the container and execute the pipeline using python3 load.py <dataset-path>.

Run the final.sh script to copy output files to the host machine and stop the container.

Check service-result/ directory for the generated files.
