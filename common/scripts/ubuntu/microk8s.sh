#!/bin/sh -eux
export DEBIAN_FRONTEND=noninteractive

apt-get -y update
apt-get -y install python python-pip

apt-get -y install snapd
export PATH=$PATH:/snap/bin
ufw disable
swapoff -a

snap install microk8s --classic --channel=1.13/stable
microk8s.status --wait-ready
snap alias microk8s.kubectl kubectl
snap alias microk8s.docker docker

docker pull busybox:latest
docker pull accanto/wait-for:1.0
docker pull cassandra:3
docker pull jenkins/jenkins:2.182
docker pull accanto/osslm-ansible-rm:1.3.4
docker pull registry:2.6.2
docker pull openjdk:8u181-jre
docker pull quay.io/travelaudience/docker-nexus:3.15.2
docker pull quay.io/kubernetes-ingress-controller/nginx-ingress-controller-amd64:0.22.0
docker pull gogs/gogs:0.11.79
docker pull docker.elastic.co/beats/filebeat-oss:6.4.0
docker pull pstauffer/curl:v1.0.3
docker pull pstauffer/curl:latest
docker pull cdkbot/hostpath-provisioner-amd64:latest
docker pull confluentinc/cp-kafka:4.1.1-2
docker pull osixia/openldap:1.2.1
docker pull vault:0.10.1
docker pull gcr.io/kubernetes-helm/tiller:v2.8.2
docker pull k8s.gcr.io/pause:3.1
docker pull docker.elastic.co/kibana/kibana-oss:6.1.1
docker pull docker.elastic.co/elasticsearch/elasticsearch-oss:6.1.1
docker pull gcr.io/google_samples/k8szk:v3
docker pull gcr.io/google_containers/defaultbackend-amd64:1.4
docker pull gcr.io/google_containers/k8s-dns-sidecar-amd64:1.14.7
docker pull gcr.io/google_containers/k8s-dns-kube-dns-amd64:1.14.7
docker pull gcr.io/google_containers/k8s-dns-dnsmasq-nanny-amd64:1.14.7
docker pull lwolf/kubectl_deployer:0.4
docker pull postgres:9.6.2
docker pull frapsoft/openssl:latest

microk8s.stop
