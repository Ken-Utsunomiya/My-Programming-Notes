FROM ubuntu:22.04

ENV TZ=Asia/Tokyo

WORKDIR /linux-practice

RUN apt update && apt install sudo

RUN ln -snf /usr/share/zoneinfo/$TZ /etc/localtime && echo $TZ > /etc/timezone

RUN sudo apt update
RUN sudo apt install binutils build-essential golang sysstat python3-matplotlib python3-pil fonts-takao fio qemu-kvm virt-manager libvirt-clients virtinst jq docker.io containerd libvirt-daemon-system strace -y
RUN sudo adduser `id -un` libvirt
RUN sudo adduser `id -un` libvirt-qemu
RUN sudo adduser `id -un` kvm

# docker run -p 5050:5050 -v $(pwd):/linux-practice -it linux-practice
