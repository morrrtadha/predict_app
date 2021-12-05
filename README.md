<br />
<div align="center">

  <h3 align="center">hand written numbers classification model</h3>

</div>



<!-- TABLE OF CONTENTS -->
<details>
  <summary>Table of Contents</summary>
  <ol>
    <li>
      <a href="#about-the-project">About The Project</a>
      <ul>
        <li><a href="#built-with">Built With</a></li>
      </ul>
    </li>
    <li>
      <a href="#getting-started">Getting Started</a>
      <ul>
        <li><a href="#prerequisites">Prerequisites</a></li>
        <li><a href="#Install and run the project">Install and run the project</a></li>
      </ul>
    </li>
    <li><a href="#contributing">Contributing</a></li>
    <li><a href="#contact">Contact</a></li>
    <li><a href="#acknowledgments">Acknowledgments</a></li>
  </ol>
</details>



<!-- ABOUT THE PROJECT -->
## About The Project

Packaging and local deployment of MNIST pipeline classification 

Goals:
 *Design a simple docker application allowing the classification of handwritten numbers.
 *import an image and obtain a JSON file containing the results.


<p align="right">(<a href="#top">back to top</a>)</p>



### Built With


* [python](https://www.python.org/)
* [tensorflow](https://www.tensorflow.org/?hl=fr)
* [docker](https://www.docker.com/)
* [json](https://www.json.org/json-fr.html)

<p align="right">(<a href="#top">back to top</a>)</p>



<!-- GETTING STARTED -->
## Getting Started

To run this project you need to install some prerequisites

### Prerequisites

This is an example of how to list things you need to use the software and how to install them.
* docker
* 1- Update the apt package index and install packages to allow apt to use a repository over HTTPS:
  ```sh
  sudo apt-get update
  ```
  ```sh
  sudo apt-get install \
    ca-certificates \
    curl \
    gnupg \
    lsb-release
  ```
* 2- Add Docker’s official GPG key:
  ```sh 
  curl -fsSL https://download.docker.com/linux/ubuntu/gpg | sudo gpg --dearmor -o /usr/share/keyrings/docker-archive-keyring.gpg
  ```
* 3- Use the following command to set up the stable repository. To add the nightly or test repository, add the word nightly or test (or both) after the word stable in the commands below. Learn about nightly and test channels.
  ```sh 
  echo \
  "deb [arch=$(dpkg --print-architecture) signed-by=/usr/share/keyrings/docker-archive-keyring.gpg] https://download.docker.com/linux/ubuntu \
  $(lsb_release -cs) stable" | sudo tee /etc/apt/sources.list.d/docker.list > /dev/null
  ```
* Install Docker Engine
* 1- Update the apt package index, and install the latest version of Docker Engine and containerd, or go to the next step to install a specific version:
  ```sh
  sudo apt-get update
  ```
  ```sh
  sudo apt-get install docker-ce docker-ce-cli containerd.io
  ```
* To install a specific version of Docker Engine, list the available versions in the repo, then select and install:
  a. List the versions available in your repo:
  ```sh
  apt-cache madison docker-ce
  ```
  b. Install a specific version using the version string from the second column, for example, 5:18.09.1~3-0~ubuntu-xenial.
  ```sh
  sudo apt-get install docker-ce=<VERSION_STRING> docker-ce-cli=<VERSION_STRING> containerd.io
  ```
  c. Verify that Docker Engine is installed correctly by running the hello-world image.
  ```sh
   sudo docker run hello-world
  ```
### Install and run the project

_ to install and run the project in your computer you need to follow these simple steps._


1. Clone the repo
   ```sh
   git clone https://github.com/morrrtadha/predict_app.git
   ```
2. Enter to the project repo
   ```sh
   cd predict_app
   ```
3. Build the docker image
   ```sh
   docker build -t prediction-app -f Dockerfile .
   ```
3. Run the docker image
   ```sh
   docker run -d idcore python3 predict.py
   ```

<p align="right">(<a href="#top">back to top</a>)</p>


<!-- CONTRIBUTING -->
## Contributing

Contributions are what make the open source community such an amazing place to learn, inspire, and create. Any contributions you make are **greatly appreciated**.

If you have a suggestion that would make this better, please fork the repo and create a pull request. You can also simply open an issue with the tag "enhancement".
Don't forget to give the project a star! Thanks again!

1. Fork the Project
2. Create your Feature Branch (`git checkout -b feature/AmazingFeature`)
3. Commit your Changes (`git commit -m 'Add some AmazingFeature'`)
4. Push to the Branch (`git push origin feature/AmazingFeature`)
5. Open a Pull Request

<p align="right">(<a href="#top">back to top</a>)</p>



<!-- CONTACT -->
## Contact

Mortadha Dridi - mortadha4m2@gmail.com

Project Link: [https://github.com/morrrtadha/predict_app](https://github.com/morrrtadha/predict_app)

<p align="right">(<a href="#top">back to top</a>)</p>



<!-- ACKNOWLEDGMENTS -->
## Acknowledgments

Use this space to list resources you find helpful and would like to give credit to. I've included a few of my favorites to kick things off!

* [mnist database](http://yann.lecun.com/exdb/mnist/)
* [docker documentation](https://docs.docker.com/get-started/overview/)
* [Tensorflow classification](https://www.tensorflow.org/tutorials/keras/classification)
* [Choose an Open Source License](https://choosealicense.com)

<p align="right">(<a href="#top">back to top</a>)</p>


