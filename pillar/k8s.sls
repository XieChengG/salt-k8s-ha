# -*- coding: utf-8 -*-
#********************************************
# Author:       skymyyang
# Email:        yang-li@live.cn
# Organization: https://www.cnblogs.com/skymyyang/
# Description:  Kubernetes Config with Pillar
#********************************************

#设置Master的IP地址(必须修改)
MASTER_IP_M1: "192.168.200.181"
MASTER_IP_M2: "192.168.200.182"
MASTER_IP_M3: "192.168.200.183"
#设置Master的HOSTNAME完整的FQDN名称(必须修改)
MASTER_H1: "c8-node1.example.com"
MASTER_H2: "c8-node2.example.com"
MASTER_H3: "c8-node3.example.com"

#KUBE-APISERVER的反向代理地址端口
#KUBE_APISERVER: "https://127.0.0.1:8443"
KUBE_APISERVER: "https://server.k8s.local:8443"
KUBE_APISERVER_DNS_NAME: "server.k8s.local"

#设置ETCD集群访问地址（必须修改）
ETCD_ENDPOINTS: "http://192.168.200.181:2379,http://192.168.200.182:2379,http://192.168.200.183:2379"

FLANNEL_ETCD_PREFIX: "/kubernetes/network"

#设置ETCD集群初始化列表（必须修改）
ETCD_CLUSTER: "etcd-node1=http://192.168.200.181:2380,etcd-node2=http://192.168.200.182:2380,etcd-node3=http://192.168.200.183:2380"

#通过Grains FQDN自动获取本机IP地址，请注意保证主机名解析到本机IP地址
NODE_IP: {{ grains['fqdn_ip4'][0] }}
HOST_NAME: {{ grains['fqdn'] }}

#设置BOOTSTARP的TOKEN，可以自己生成
BOOTSTRAP_TOKEN: "be8dad.da8a699a46edc482"
TOKEN_ID: "be8dad"
TOKEN_SECRET: "da8a699a46edc482"
ENCRYPTION_KEY: "8eVtmpUpYjMvH8wKZtKCwQPqYRqM14yvtXPLJdhu0gA="

#配置Service IP地址段
SERVICE_CIDR: "10.96.0.0/16"

#Kubernetes服务 IP (从 SERVICE_CIDR 中预分配)
CLUSTER_KUBERNETES_SVC_IP: "10.96.0.1"

#Kubernetes DNS 服务 IP (从 SERVICE_CIDR 中预分配)
CLUSTER_DNS_SVC_IP: "10.96.0.2"

#设置Node Port的端口范围
NODE_PORT_RANGE: "30000-32767"

#设置POD的IP地址段,在kube-controller-manager中定义cluster-cidr
POD_CIDR: "10.244.0.0/16"
CLUSTER_CIDR: "10.244.0.0/16"

#设置集群的DNS域名
CLUSTER_DNS_DOMAIN: "cluster.local."
#已注释不在需要
#设置Docker Registry地址
#DOCKER_REGISTRY: "https://192.168.150.135:5000"
#设置Master的VIP地址(必须修改)
#MASTER_VIP: "192.168.150.253"

#设置网卡名称，一定要改
VIP_IF: "ens192"
