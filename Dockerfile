FROM gitpod/workspace-full-vnc

# add gdrive
USER root
RUN export GDRIVE_URL='https://docs.google.com/uc?id=0B3X9GlR6EmbnQ0FtZmJJUXEyRTA&export=download' \
  && export GDRIVE_SHA128=4fd8391b300cac45963e53da44dcfe68da08d843 \
  && curl -fSL "${GDRIVE_URL}" -o /usr/local/bin/gdrive \
  && chmod +x /usr/local/bin/gdrive

# add python packages
USER gitpod
RUN pip install numpy tensorflow pyyaml PyQt5 opencv-python