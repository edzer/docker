# provide R in ubuntu 14.04

FROM     ubuntu:14.04

MAINTAINER Edzer Pebesma edzer.pebesma@uni-muenster.de

RUN echo "deb http://archive.ubuntu.com/ubuntu trusty main universe" > /etc/apt/sources.list
RUN apt-get update

RUN echo "deb http://cran.r-project.org/bin/linux/ubuntu trusty/" >> /etc/apt/sources.list
RUN cat /etc/apt/sources.list
RUN apt-key adv --keyserver keyserver.ubuntu.com --recv-keys E084DAB9
RUN apt-get update

RUN apt-get install -y openssh-server
RUN mkdir /var/run/sshd 
RUN echo 'root:screencast' | chpasswd
RUN mkdir /home/edzer
RUN useradd -m -u 1002 -s '/bin/bash' edzer
RUN echo 'edzer:screencast' | chpasswd

RUN apt-get install libcurl4-nss-dev

# install R:
RUN apt-get install --fix-missing -y r-base r-cran-boot r-cran-class r-cran-cluster r-cran-codetools r-cran-foreign r-cran-kernsmooth r-cran-lattice r-cran-mass r-cran-matrix r-cran-mgcv r-cran-nlme r-cran-nnet r-cran-rpart r-cran-spatial r-cran-survival r-cran-rodbc r-base-dev 

RUN locale-gen en_US.UTF-8
RUN dpkg-reconfigure locales

EXPOSE 22
CMD    /usr/sbin/sshd -D
