# sshd
#
# VERSION               0.0.1

#FROM     ubuntu:14.04
FROM     ubuntu

# make sure the package repository is up to date
#echo "deb http://security.ubuntu.com/ubuntu trusty-security main restricted" >> /etc/apt/sources.list
#echo "deb http://security.ubuntu.com/ubuntu trusty-security universe" >> /etc/apt/sources.list
#echo "deb http://security.ubuntu.com/ubuntu trusty-security multiverse" >> /etc/apt/sources.list
#RUN echo "deb http://archive.ubuntu.com/ubuntu trusty main universe" > /etc/apt/sources.list
RUN echo "deb http://archive.ubuntu.com/ubuntu trusty main universe" > /etc/apt/sources.list
#RUN echo "deb http://security.ubuntu.com/ubuntu trusty-security main universe multiverse restricted" > /etc/apt/sources.list
RUN apt-get update

#RUN echo "deb http://cran.r-project.org/bin/linux/ubuntu trusty/" >> /etc/apt/sources.list
RUN echo "deb http://cran.r-project.org/bin/linux/ubuntu trusty/" >> /etc/apt/sources.list
RUN cat /etc/apt/sources.list
RUN apt-key adv --keyserver keyserver.ubuntu.com --recv-keys E084DAB9
RUN apt-get update
#RUN apt-get upgrade

RUN apt-get install -y openssh-server
RUN mkdir /var/run/sshd 
RUN echo 'root:screencast' |chpasswd
# add user: root is not allowed to ssh in
RUN mkdir /home/edzer
RUN useradd -s '/bin/bash' edzer
RUN echo 'edzer:screencast' | chpasswd

RUN apt-get install --fix-missing -y r-base r-cran-boot r-cran-class r-cran-cluster r-cran-codetools r-cran-foreign r-cran-kernsmooth r-cran-lattice r-cran-mass r-cran-matrix r-cran-mgcv r-cran-nlme r-cran-nnet r-cran-rpart r-cran-spatial r-cran-survival r-cran-rodbc r-base-dev

EXPOSE 22
CMD    /usr/sbin/sshd -D
