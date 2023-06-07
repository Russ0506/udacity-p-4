## App Status:
[![<CircleCI>](https://circleci.com/gh/Russ0506/udacity-p-4.svg?style=svg)](https://https://github.com/Russ0506/udacity-p-4)

## Project Tasks

The project goal is to operationalize this working, machine learning microservice using [kubernetes](https://kubernetes.io/), which is an open-source system for automating the management of containerized applications. In this project you will:
* Lint code using linting library
* Complete a Dockerize this application
* Deploy containerized application using Docker and make a prediction
* Improve the log statements in the source code for this application
* Configure Kubernetes and create a Kubernetes cluster
* Deploy a container using Kubernetes and make a prediction
* Upload a complete Github repo with CircleCI to indicate that the code has been tested

**The final implementation of the project will showcase your abilities to operationalize production microservices.**

---

### Setup the Environment

* Create a virtualenv with Python 3.7 and activate it. Refer to this link for help on specifying the Python version in the virtualenv.
```bash
python3 -m pip install --user virtualenv
# You should have Python 3.7 available in your host.
# Check the Python path using `which python3`
# Use a command similar to this one:
python3 -m virtualenv --python=<path-to-Python3.7> .devops
source .devops/bin/activate
```
* Run `make install` to install the necessary dependencies

---
### Running `app.py`

1. Run application only:  `python app.py`
2. Run `chmod 777 ./run_docker.sh` and `chmod 777 ./run_kubernetes.sh`
3. Run in Docker:  `./run_docker.sh`
4. Run in Kubernetes:  `./run_kubernetes.sh`
---
### File Structure
| File | Description |
| ---- | ----------- |
| `.circleci/config.yml` | CircleCI configuration |
| `model_data` | Trained model data for housing prices in Boston |
| `output_txt_files` | Docker and Kubernetes log output |
| `app.py` | application to answer request for making prediction |
| `Dockerfile` | Dockerfile |
| `make_prediction.sh` | API call to make prediction |
| `Makefile` | Build file of the project |
| `requirements.txt` | Python libraries |
| `run_docker.sh` | Shell script to run docker container |
| `run_kubernetes.sh` | Shell script to deploy docker container |
| `upload_docker.sh` | Shell script for uploading docker image to dockerhub repository |

### Kubernetes Steps

* Setup/Configure Kubernetes locally
```bash
    kubectl create secret docker-registry regcred \
        --docker-server=https://index.docker.io/v1/ \
        --docker-username=<DOCKERHUB_USERNAME> \
        --docker-password=<DOCKERHUB_PASSWORD> \
        --docker-email=<DOCKER_EMAIL>
  ```
* Create Flask app (making changes to app.py & build & push to dockerhub) in Container
* Run the pod using kubectl
