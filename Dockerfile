# Use the jupyter/pyspark-notebook as the base image
FROM jupyter/pyspark-notebook:latest
# Install additional packages if needed
USER root
RUN pip install --upgrade pip && \
    pip install pandas scikit-learn matplotlib

# Set up a working directory
WORKDIR /home/work

# Expose Jupyter Notebook port
EXPOSE 8888