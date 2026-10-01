FROM pangeo/pangeo-notebook:2026.06.04

USER root

RUN echo "Installing packages..." \
    && apt-get update --fix-missing > /dev/null \
    # Add packages in the following line if needed
    && apt-get install -y nco curl > /dev/null \
    && apt-get clean \
    && rm -rf /var/lib/apt/lists/* \
    && curl -fsSL https://opencode.ai/v2/install | bash

USER ${NB_USER}
