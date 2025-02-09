# Use NVIDIA CUDA base image with Python 3.10
FROM hale0007/cuda11.8-conda-ubuntu22.04 AS base

FROM base AS controlnet-env
# We inherit from conda-install which has both system deps and conda
COPY environment.yaml .
RUN mamba env create -f environment.yaml

# Set default environment variables
ENV PATH /opt/conda/envs/diffinf/bin:$PATH
ENV LD_LIBRARY_PATH /usr/local/cuda/lib64:$LD_LIBRARY_PATH
ENV CUDA_VISIBLE_DEVICES=0

WORKDIR /app

