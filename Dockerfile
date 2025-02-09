FROM mageai/mageai:latest

ARG PROJECT_NAME=${PROJECT_NAME}
ARG MAGE_CODE_PATH=/home/src
ARG USER_CODE_PATH=${MAGE_CODE_PATH}/${PROJECT_NAME}

WORKDIR ${MAGE_CODE_PATH}

# Replace [project_name] with the name of your project (e.g. demo_project)
COPY ${PROJECT_NAME} ${PROJECT_NAME}

# Set the USER_CODE_PATH variable to the path of user project.
# The project path needs to contain project name.
ENV USER_CODE_PATH=${USER_CODE_PATH}

# Install custom Python libraries
RUN pip3 install -r ${USER_CODE_PATH}/requirements.txt
# Install custom libraries within 3rd party libraries (e.g. DBT packages)
RUN python3 /app/install_other_dependencies.py --path ${USER_CODE_PATH}

ENV PYTHONPATH="${PYTHONPATH}:${MAGE_CODE_PATH}"

CMD ["/bin/sh", "-c", "/app/run_app.sh"]