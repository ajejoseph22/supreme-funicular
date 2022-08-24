Circle CI status badge: 

[![ajejoseph22](https://circleci.com/gh/ajejoseph22/supreme-funicular.svg?style=svg)](https://app.circleci.com/pipelines/github/ajejoseph22/supreme-funicular/)

## Project Overview

In this project, I operationalized a Machine Learning microservice API, containerized it and deployed to s Kubernetes cluster. I also set up continuous integration on Circle CI.

This project contains a `sklearn` model that has been trained to predict housing prices in Boston according to several features, such as average rooms in a home and data about highway access, teacher-to-pupil ratios, and so on. You can read more about the data, which was initially taken from Kaggle, on [the data source site](https://www.kaggle.com/c/boston-housing). This project could be extended to any pre-trained machine learning model, such as those for image recognition and data labeling.

---

## Installation steps
* Clone the repository

To run in `Docker`, you need to have `Docker` installed and running on the host and then:
* Run `bash run_docker.sh`. This would build the image using the `Dockerfile` and run the container on your host, forwarding traffic from port `80` in the container to post `8080` on your host.

To run in a Kubernetes pod, you need to have `minikube` installed and started on the host. `minikube` requires a virtualization tool such as [virtual box](https://www.virtualbox.org/), so you need to install that too. You can start `minikube` using `minikube start` and make use of the default cluster for deployments.:
* Run `bash run_kubernetes.sh`. This will run the container in a Kubernetes pod and forward traffic from port `80` in the container to post `8080` on your host 

That's it

### Calling the prediction API
* Run `bash make_prediction.sh`

## Running without containerization
* Install python 3.7
* Setup a venv with `python3 -m venv venv`
* Activate the venv with `source venv/bin/activate`
* Install dependencies with `pip install -r requirements.txt`
* To lint the code, install hadolint using ```
wget -O /bin/hadolint https://github.com/hadolint/hadolint/releases/download/v1.16.3/hadolint-Linux-x86_64 &&
            chmod +x /bin/hadolint``` and then run `make lint`
* Run the server with `python app.py`
* Change `$PORT` in `make_prediction.sh` to `80`  and run `bash make_prediction.sh` to call the API

