terraform {
    required_providers {
        aws = {
            source = "hashicorp/aws"
            version = "~> 5.0"
        }
    }
}

provider "aws" {
    region  = "us-west-2"
    profile = "containers-labs"
}

locals {
    port = 0
    port10 = 2382
    port11 = 2379
    port2 = 22
    port3 = 80
    port4 = 1
    port5 = 65535
    port6 = 443
    port7 = 2049
    port8 = 4003
    port9 = 4000
}

variable "vpc_id" {
    type = string
    default = "vpc-ba6ff3c2"
}

variable "vpc_id10" {
    type = string
    default = "vpc-00d5729417d57b58a"
}

variable "vpc_id11" {
    type = string
    default = "vpc-0abae1249f7cb43ed"
}

variable "vpc_id12" {
    type = string
    default = "vpc-037c2418be4eff4cf"
}

variable "vpc_id13" {
    type = string
    default = "vpc-0d930f2b00a8103ae"
}

variable "vpc_id14" {
    type = string
    default = "vpc-036aa15d693574211"
}

variable "vpc_id15" {
    type = string
    default = "vpc-09674f3ffc13a5d0e"
}

variable "vpc_id16" {
    type = string
    default = "vpc-0658cf48e5bfeb278"
}

variable "vpc_id17" {
    type = string
    default = "vpc-01cd3ea16c187dff9"
}

variable "vpc_id18" {
    type = string
    default = "vpc-0619e354906bc8d59"
}

variable "vpc_id19" {
    type = string
    default = "vpc-01fc13f35578c4f6f"
}

variable "vpc_id2" {
    type = string
    default = "vpc-0dad073068d779b42"
}

variable "vpc_id20" {
    type = string
    default = "vpc-006f9eddffe504952"
}

variable "vpc_id21" {
    type = string
    default = "vpc-02e5e737a626e6f09"
}

variable "vpc_id22" {
    type = string
    default = "vpc-05535e34a33669ff6"
}

variable "vpc_id23" {
    type = string
    default = "vpc-0774950728a0409a5"
}

variable "vpc_id24" {
    type = string
    default = "vpc-018823780e4d686a0"
}

variable "vpc_id25" {
    type = string
    default = "vpc-076da3e65231aa31f"
}

variable "vpc_id26" {
    type = string
    default = "vpc-09e8e6b1e94ab36cd"
}

variable "vpc_id27" {
    type = string
    default = "vpc-04d4d0649cb23ada7"
}

variable "vpc_id28" {
    type = string
    default = "vpc-03d3b4768890e5255"
}

variable "vpc_id29" {
    type = string
    default = "vpc-04ddb3890841c3b47"
}

variable "vpc_id3" {
    type = string
    default = "vpc-0a971bb8c186c72bf"
}

variable "vpc_id30" {
    type = string
    default = "vpc-0df0d1aaee003f225"
}

variable "vpc_id31" {
    type = string
    default = "vpc-0b65fac1d7ccd3fed"
}

variable "vpc_id32" {
    type = string
    default = "vpc-09eb118d77c8995d1"
}

variable "vpc_id4" {
    type = string
    default = "vpc-0c6c44566e57ff852"
}

variable "vpc_id5" {
    type = string
    default = "vpc-0bb9d2805d847b351"
}

variable "vpc_id6" {
    type = string
    default = "vpc-0dbec82a36dd49554"
}

variable "vpc_id7" {
    type = string
    default = "vpc-0ae795dede1283e63"
}

variable "vpc_id8" {
    type = string
    default = "vpc-0513c837eb02183f6"
}

variable "vpc_id9" {
    type = string
    default = "vpc-0e4bac6745790c831"
}

resource "aws_security_group" "default" {
    description = "default VPC security group"
    name = "default"
    vpc_id = var.vpc_id3
    ingress {
        from_port = local.port
        protocol = "-1"
        to_port = local.port
        self = true
    }
    egress {
        from_port = local.port
        protocol = "-1"
        to_port = local.port
        cidr_blocks = [
            "0.0.0.0/0"
        ]
    }
}

resource "aws_security_group" "default4" {
    description = "default VPC security group"
    name = aws_security_group.default.name
    vpc_id = var.vpc_id23
    ingress {
        from_port = local.port
        protocol = "-1"
        to_port = local.port
        self = true
    }
    egress {
        from_port = local.port
        protocol = "-1"
        to_port = local.port
        cidr_blocks = [
            "0.0.0.0/0"
        ]
        ipv6_cidr_blocks = [
            "::/0"
        ]
    }
}

resource "aws_security_group" "Amazon_ECS-Optimized_Amazon_Linux_2__AL2__x86_64_AMI-2_0_20230530-AutogenByAWSMP--1" {
    description = "Amazon ECS-Optimized Amazon Linux 2 (AL2) x86_64 AMI-2.0.20230530-AutogenByAWSMP--1 created 2023-06-18T07:33:33.159Z"
    name = "Amazon ECS-Optimized Amazon Linux 2 (AL2) x86_64 AMI-2.0.20230530-AutogenByAWSMP--1"
    vpc_id = var.vpc_id
    ingress {
        from_port = local.port2
        protocol = "tcp"
        to_port = local.port2
        cidr_blocks = [
            "0.0.0.0/0"
        ]
    }
    egress {
        from_port = local.port
        protocol = "-1"
        to_port = local.port
        cidr_blocks = [
            "0.0.0.0/0"
        ]
    }
}

resource "aws_security_group" "default12" {
    description = "default VPC security group"
    name = aws_security_group.default.name
    vpc_id = var.vpc_id22
    ingress {
        from_port = local.port
        protocol = "-1"
        to_port = local.port
        self = true
    }
    egress {
        from_port = local.port
        protocol = "-1"
        to_port = local.port
        cidr_blocks = [
            "0.0.0.0/0"
        ]
    }
}

resource "aws_security_group" "nodes_ben-jr_ek8s_com" {
    description = "Security group for nodes"
    name = "nodes.ben-jr.ek8s.com"
    tags = {
        "Name" = "nodes.ben-jr.ek8s.com"
        "kubernetes.io/cluster/ben-jr.ek8s.com" = "owned"
        "KubernetesCluster" = "ben-jr.ek8s.com"
    }
    vpc_id = var.vpc_id28
    ingress {
        from_port = local.port
        protocol = "-1"
        to_port = local.port
        cidr_blocks = [
            "10.0.0.0/8",
            "172.16.0.0/12",
            "192.168.0.0/16",
            "202.3.121.0/24",
            "202.3.124.0/24",
            "216.240.16.0/20",
            "217.70.208.0/22",
            "77.137.74.166/32"
        ]
        self = true
        security_groups = [
            "sg-0cfa476d12b26e761"
        ]
    }
    egress {
        from_port = local.port
        protocol = "-1"
        to_port = local.port
        cidr_blocks = [
            "0.0.0.0/0"
        ]
    }
}

resource "aws_security_group" "efs-sg-3" {
    description = "Created by the LIW for EFS at 2021-01-18T11:34:12.942+02:00"
    name = "efs-sg-3"
    vpc_id = var.vpc_id2
    ingress {
        description = "Created by the LIW for EFS at 2021-01-18T11:34:12.943+02:00"
        from_port = local.port7
        protocol = "tcp"
        to_port = local.port7
        security_groups = [
            aws_security_group.instance-sg-3.id
        ]
    }
    egress {
        from_port = local.port
        protocol = "-1"
        to_port = local.port
        cidr_blocks = [
            "0.0.0.0/0"
        ]
    }
}

resource "aws_security_group" "masters_idanshoham_ek8s_com" {
    description = "Security group for masters"
    name = "masters.idanshoham.ek8s.com"
    tags = {
        "Name" = "masters.idanshoham.ek8s.com"
        "kubernetes.io/cluster/idanshoham.ek8s.com" = "owned"
        "KubernetesCluster" = "idanshoham.ek8s.com"
    }
    vpc_id = var.vpc_id17
    ingress {
        from_port = local.port8
        protocol = "tcp"
        to_port = local.port5
        security_groups = [
            "sg-0cf43bf630637f00b"
        ]
    }
    ingress {
        from_port = local.port10
        protocol = "tcp"
        to_port = local.port9
        security_groups = [
            "sg-0cf43bf630637f00b"
        ]
    }
    ingress {
        from_port = local.port
        protocol = "-1"
        to_port = local.port
        self = true
    }
    ingress {
        from_port = local.port2
        protocol = "tcp"
        to_port = local.port2
        cidr_blocks = [
            "0.0.0.0/0"
        ]
    }
    ingress {
        from_port = local.port4
        protocol = "udp"
        to_port = local.port5
        security_groups = [
            "sg-0cf43bf630637f00b"
        ]
    }
    ingress {
        from_port = local.port4
        protocol = "tcp"
        to_port = local.port11
        security_groups = [
            "sg-0cf43bf630637f00b"
        ]
    }
    ingress {
        from_port = local.port6
        protocol = "tcp"
        to_port = local.port6
        cidr_blocks = [
            "0.0.0.0/0"
        ]
    }
    egress {
        from_port = local.port
        protocol = "-1"
        to_port = local.port
        cidr_blocks = [
            "0.0.0.0/0"
        ]
    }
}

resource "aws_security_group" "launch-wizard-27" {
    description = "launch-wizard-27 created 2021-08-31T12:38:46.758+03:00"
    name = "launch-wizard-27"
    vpc_id = var.vpc_id
    ingress {
        from_port = local.port
        protocol = "-1"
        to_port = local.port
        cidr_blocks = [
            "10.0.0.0/8",
            "172.16.0.0/12",
            "192.168.0.0/16",
            "202.3.121.0/24",
            "202.3.124.0/24",
            "216.240.16.0/20",
            "217.70.208.0/22"
        ]
    }
    egress {
        from_port = local.port
        protocol = "-1"
        to_port = local.port
        cidr_blocks = [
            "0.0.0.0/0"
        ]
    }
}

resource "aws_security_group" "servic-74" {
    description = "2023-01-12T12:08:31.999Z"
    name = "servic-74"
    vpc_id = var.vpc_id21
    ingress {
        from_port = local.port3
        protocol = "tcp"
        to_port = local.port3
        cidr_blocks = [
            "0.0.0.0/0"
        ]
    }
    egress {
        from_port = local.port
        protocol = "-1"
        to_port = local.port
        cidr_blocks = [
            "0.0.0.0/0"
        ]
    }
}

resource "aws_security_group" "launch-wizard-19" {
    description = "launch-wizard-19 created 2021-07-01T10:42:33.108+03:00"
    name = "launch-wizard-19"
    vpc_id = var.vpc_id
    ingress {
        from_port = local.port
        protocol = "-1"
        to_port = local.port
        cidr_blocks = [
            "10.0.0.0/8",
            "172.16.0.0/12",
            "192.168.0.0/16",
            "202.3.121.0/24",
            "202.3.124.0/24",
            "216.240.16.0/20",
            "217.70.208.0/22"
        ]
    }
    egress {
        from_port = local.port
        protocol = "-1"
        to_port = local.port
        cidr_blocks = [
            "0.0.0.0/0"
        ]
    }
}

resource "aws_security_group" "launch-wizard-5" {
    description = "launch-wizard-5 created 2020-05-03T17:40:02.987+03:00"
    name = "launch-wizard-5"
    vpc_id = var.vpc_id
    ingress {
        from_port = local.port
        protocol = "-1"
        to_port = local.port
        cidr_blocks = [
            "10.0.0.0/8",
            "172.16.0.0/12",
            "192.168.0.0/16",
            "202.3.121.0/24",
            "202.3.124.0/24",
            "216.240.16.0/20",
            "217.70.208.0/22"
        ]
    }
    egress {
        from_port = local.port
        protocol = "-1"
        to_port = local.port
        cidr_blocks = [
            "0.0.0.0/0"
        ]
    }
}

resource "aws_security_group" "default2" {
    description = "default VPC security group"
    name = aws_security_group.default.name
    vpc_id = var.vpc_id24
    ingress {
        from_port = local.port
        protocol = "-1"
        to_port = local.port
        self = true
    }
    egress {
        from_port = local.port
        protocol = "-1"
        to_port = local.port
        cidr_blocks = [
            "0.0.0.0/0"
        ]
    }
}

resource "aws_security_group" "launch-wizard-40" {
    description = "launch-wizard-40 created 2022-03-27T15:17:57.570+03:00"
    name = "launch-wizard-40"
    vpc_id = var.vpc_id26
    ingress {
        description = ""
        from_port = local.port2
        protocol = "tcp"
        to_port = local.port2
        cidr_blocks = [
            "0.0.0.0/0"
        ]
    }
    egress {
        from_port = local.port
        protocol = "-1"
        to_port = local.port
        cidr_blocks = [
            "0.0.0.0/0"
        ]
    }
}

resource "aws_security_group" "eks-cluster-sg-yehiel-414-1912640898" {
    description = "EKS created security group applied to ENI that is attached to EKS Control Plane master nodes, as well as any managed workloads."
    name = "eks-cluster-sg-yehiel-414-1912640898"
    tags = {
        "Name" = "eks-cluster-sg-yehiel-414-1912640898"
        "kubernetes.io/cluster/yehiel-414" = "owned"
    }
    vpc_id = var.vpc_id9
    ingress {
        from_port = local.port
        protocol = "-1"
        to_port = local.port
        self = true
    }
    ingress {
        description = "Allow unmanaged nodes to communicate with control plane (all ports)"
        from_port = local.port
        protocol = "-1"
        to_port = local.port
        security_groups = [
            "sg-03db1731207771d62"
        ]
    }
    egress {
        from_port = local.port
        protocol = "-1"
        to_port = local.port
        cidr_blocks = [
            "0.0.0.0/0"
        ]
    }
}

resource "aws_security_group" "launch-wizard-28" {
    description = "launch-wizard-28 created 2021-08-31T17:04:27.809+03:00"
    name = "launch-wizard-28"
    vpc_id = var.vpc_id
    ingress {
        from_port = local.port
        protocol = "-1"
        to_port = local.port
        cidr_blocks = [
            "10.0.0.0/8",
            "172.16.0.0/12",
            "192.168.0.0/16",
            "202.3.121.0/24",
            "202.3.124.0/24",
            "216.240.16.0/20",
            "217.70.208.0/22"
        ]
    }
    egress {
        from_port = local.port
        protocol = "-1"
        to_port = local.port
        cidr_blocks = [
            "0.0.0.0/0"
        ]
    }
}

resource "aws_security_group" "codeDe-8847" {
    description = "2023-06-22T11:14:59.435Z"
    name = "codeDe-8847"
    vpc_id = var.vpc_id5
    ingress {
        from_port = local.port3
        protocol = "tcp"
        to_port = local.port3
        cidr_blocks = [
            "0.0.0.0/0"
        ]
    }
    egress {
        from_port = local.port
        protocol = "-1"
        to_port = local.port
        cidr_blocks = [
            "0.0.0.0/0"
        ]
    }
}

resource "aws_security_group" "eks-cluster-sg-wave-tal-demo-1-785003529" {
    description = "EKS created security group applied to ENI that is attached to EKS Control Plane master nodes, as well as any managed workloads."
    name = "eks-cluster-sg-wave-tal-demo-1-785003529"
    tags = {
        "Name" = "eks-cluster-sg-wave-tal-demo-1-785003529"
        "kubernetes.io/cluster/wave-tal-demo-1" = "owned"
    }
    vpc_id = var.vpc_id15
    ingress {
        description = "Allow unmanaged nodes to communicate with control plane (all ports)"
        from_port = local.port
        protocol = "-1"
        to_port = local.port
        security_groups = [
            "sg-057b5f4211baf4bd2"
        ]
    }
    egress {
        from_port = local.port
        protocol = "-1"
        to_port = local.port
        cidr_blocks = [
            "0.0.0.0/0"
        ]
    }
}

resource "aws_security_group" "default3" {
    description = "default VPC security group"
    name = aws_security_group.default.name
    vpc_id = var.vpc_id13
    ingress {
        from_port = local.port
        protocol = "-1"
        to_port = local.port
        self = true
    }
    egress {
        from_port = local.port
        protocol = "-1"
        to_port = local.port
        cidr_blocks = [
            "0.0.0.0/0"
        ]
    }
}

resource "aws_security_group" "dmoshe-2036" {
    description = "2022-06-29T10:45:35.681Z"
    name = "dmoshe-2036"
    vpc_id = var.vpc_id5
    ingress {
        from_port = local.port3
        protocol = "tcp"
        to_port = local.port3
        cidr_blocks = [
            "0.0.0.0/0"
        ]
    }
    egress {
        from_port = local.port
        protocol = "-1"
        to_port = local.port
        cidr_blocks = [
            "0.0.0.0/0"
        ]
    }
}

resource "aws_security_group" "default5" {
    description = "default VPC security group"
    name = aws_security_group.default.name
    vpc_id = var.vpc_id18
    ingress {
        from_port = local.port
        protocol = "-1"
        to_port = local.port
        self = true
    }
    egress {
        from_port = local.port
        protocol = "-1"
        to_port = local.port
        cidr_blocks = [
            "0.0.0.0/0"
        ]
    }
}

resource "aws_security_group" "default6" {
    description = "default VPC security group"
    name = aws_security_group.default.name
    vpc_id = var.vpc_id7
    ingress {
        from_port = local.port
        protocol = "-1"
        to_port = local.port
        self = true
    }
    egress {
        from_port = local.port
        protocol = "-1"
        to_port = local.port
        cidr_blocks = [
            "0.0.0.0/0"
        ]
    }
}

resource "aws_security_group" "default7" {
    description = "default VPC security group"
    name = aws_security_group.default.name
    vpc_id = var.vpc_id2
    ingress {
        from_port = local.port
        protocol = "-1"
        to_port = local.port
        self = true
    }
    egress {
        from_port = local.port
        protocol = "-1"
        to_port = local.port
        cidr_blocks = [
            "0.0.0.0/0"
        ]
    }
}

resource "aws_security_group" "launch-wizard-39" {
    description = "launch-wizard-39 created 2022-01-19T04:22:24.794+02:00"
    name = "launch-wizard-39"
    vpc_id = var.vpc_id
    ingress {
        description = "SSH for Anton"
        from_port = local.port2
        protocol = "tcp"
        to_port = local.port2
        cidr_blocks = [
            "94.230.83.154/32"
        ]
    }
    egress {
        from_port = local.port
        protocol = "-1"
        to_port = local.port
        cidr_blocks = [
            "0.0.0.0/0"
        ]
    }
}

resource "aws_security_group" "masters_guybarman-workshop_ek8s_com" {
    description = "Security group for masters"
    name = "masters.guybarman-workshop.ek8s.com"
    tags = {
        "KubernetesCluster" = "guybarman-workshop.ek8s.com"
        "Name" = "masters.guybarman-workshop.ek8s.com"
        "kubernetes.io/cluster/guybarman-workshop.ek8s.com" = "owned"
    }
    vpc_id = var.vpc_id14
    ingress {
        from_port = local.port8
        protocol = "tcp"
        to_port = local.port5
        security_groups = [
            "sg-09eee38e5b37f7a85"
        ]
    }
    ingress {
        from_port = local.port10
        protocol = "tcp"
        to_port = local.port9
        security_groups = [
            "sg-09eee38e5b37f7a85"
        ]
    }
    ingress {
        from_port = local.port
        protocol = "-1"
        to_port = local.port
        self = true
    }
    ingress {
        from_port = local.port2
        protocol = "tcp"
        to_port = local.port2
        cidr_blocks = [
            "0.0.0.0/0"
        ]
    }
    ingress {
        from_port = local.port4
        protocol = "udp"
        to_port = local.port5
        security_groups = [
            "sg-09eee38e5b37f7a85"
        ]
    }
    ingress {
        from_port = local.port4
        protocol = "tcp"
        to_port = local.port11
        security_groups = [
            "sg-09eee38e5b37f7a85"
        ]
    }
    ingress {
        from_port = local.port6
        protocol = "tcp"
        to_port = local.port6
        cidr_blocks = [
            "0.0.0.0/0"
        ]
    }
    egress {
        from_port = local.port
        protocol = "-1"
        to_port = local.port
        cidr_blocks = [
            "0.0.0.0/0"
        ]
    }
}

resource "aws_security_group" "default8" {
    description = "default VPC security group"
    name = aws_security_group.default.name
    vpc_id = var.vpc_id4
    ingress {
        from_port = local.port
        protocol = "-1"
        to_port = local.port
        self = true
    }
    egress {
        from_port = local.port
        protocol = "-1"
        to_port = local.port
        cidr_blocks = [
            "0.0.0.0/0"
        ]
    }
}

resource "aws_security_group" "launch-wizard-30" {
    description = "launch-wizard-30 created 2023-04-13T12:36:56.174Z"
    name = "launch-wizard-30"
    vpc_id = var.vpc_id
    ingress {
        from_port = local.port2
        protocol = "tcp"
        to_port = local.port2
        cidr_blocks = [
            "0.0.0.0/0"
        ]
    }
    egress {
        from_port = local.port
        protocol = "-1"
        to_port = local.port
        cidr_blocks = [
            "0.0.0.0/0"
        ]
    }
}

resource "aws_security_group" "launch-wizard-37" {
    description = "launch-wizard-37 created 2022-01-13T03:07:16.372+02:00"
    name = "launch-wizard-37"
    vpc_id = var.vpc_id25
    ingress {
        description = "SSH for Anton"
        from_port = local.port2
        protocol = "tcp"
        to_port = local.port2
        cidr_blocks = [
            "5.102.238.236/32"
        ]
    }
    egress {
        from_port = local.port
        protocol = "-1"
        to_port = local.port
        cidr_blocks = [
            "0.0.0.0/0"
        ]
    }
}

resource "aws_security_group" "launch-wizard-47" {
    description = "launch-wizard-47 created 2023-04-13T12:48:23.847Z"
    name = "launch-wizard-47"
    vpc_id = var.vpc_id
    ingress {
        from_port = local.port2
        protocol = "tcp"
        to_port = local.port2
        cidr_blocks = [
            "0.0.0.0/0"
        ]
    }
    egress {
        from_port = local.port
        protocol = "-1"
        to_port = local.port
        cidr_blocks = [
            "0.0.0.0/0"
        ]
    }
}

resource "aws_security_group" "masters_vlad_ek8s_com" {
    description = "Security group for masters"
    name = "masters.vlad.ek8s.com"
    tags = {
        "KubernetesCluster" = "vlad.ek8s.com"
        "kubernetes.io/cluster/vlad.ek8s.com" = "owned"
        "Name" = "masters.vlad.ek8s.com"
    }
    vpc_id = var.vpc_id32
    ingress {
        from_port = local.port8
        protocol = "tcp"
        to_port = local.port5
        security_groups = [
            "sg-0eb7e0de12ee8bced"
        ]
    }
    ingress {
        from_port = local.port10
        protocol = "tcp"
        to_port = local.port9
        security_groups = [
            "sg-0eb7e0de12ee8bced"
        ]
    }
    ingress {
        from_port = local.port
        protocol = "-1"
        to_port = local.port
        cidr_blocks = [
            "217.70.222.6/32",
            "77.137.79.184/32"
        ]
        self = true
    }
    ingress {
        from_port = local.port2
        protocol = "tcp"
        to_port = local.port2
        cidr_blocks = [
            "0.0.0.0/0"
        ]
        ipv6_cidr_blocks = [
            "::/0"
        ]
    }
    ingress {
        from_port = local.port4
        protocol = "udp"
        to_port = local.port5
        security_groups = [
            "sg-0eb7e0de12ee8bced"
        ]
    }
    ingress {
        from_port = local.port4
        protocol = "tcp"
        to_port = local.port11
        security_groups = [
            "sg-0eb7e0de12ee8bced"
        ]
    }
    ingress {
        from_port = local.port6
        protocol = "tcp"
        to_port = local.port6
        cidr_blocks = [
            "0.0.0.0/0"
        ]
        ipv6_cidr_blocks = [
            "::/0"
        ]
    }
    egress {
        from_port = local.port
        protocol = "-1"
        to_port = local.port
        cidr_blocks = [
            "0.0.0.0/0"
        ]
        ipv6_cidr_blocks = [
            "::/0"
        ]
    }
}

resource "aws_security_group" "default9" {
    description = "default VPC security group"
    name = aws_security_group.default.name
    vpc_id = var.vpc_id31
    ingress {
        from_port = local.port
        protocol = "-1"
        to_port = local.port
        self = true
    }
    egress {
        from_port = local.port
        protocol = "-1"
        to_port = local.port
        cidr_blocks = [
            "0.0.0.0/0"
        ]
    }
}

resource "aws_security_group" "masters_sapirdev_ek8s_com" {
    description = "Security group for masters"
    name = "masters.sapirdev.ek8s.com"
    tags = {
        "kubernetes.io/cluster/sapirdev.ek8s.com" = "owned"
        "KubernetesCluster" = "sapirdev.ek8s.com"
        "Name" = "masters.sapirdev.ek8s.com"
    }
    vpc_id = var.vpc_id29
    ingress {
        from_port = local.port8
        protocol = "tcp"
        to_port = local.port5
        security_groups = [
            "sg-0668b1d9e4da1357e"
        ]
    }
    ingress {
        from_port = local.port10
        protocol = "tcp"
        to_port = local.port9
        security_groups = [
            "sg-0668b1d9e4da1357e"
        ]
    }
    ingress {
        from_port = local.port
        protocol = "-1"
        to_port = local.port
        cidr_blocks = [
            "10.0.0.0/8",
            "172.16.0.0/12",
            "192.168.0.0/16",
            "202.3.121.0/24",
            "202.3.124.0/24",
            "216.240.16.0/20",
            "217.70.208.0/22"
        ]
        self = true
    }
    ingress {
        from_port = local.port4
        protocol = "udp"
        to_port = local.port5
        security_groups = [
            "sg-0668b1d9e4da1357e"
        ]
    }
    ingress {
        from_port = local.port4
        protocol = "tcp"
        to_port = local.port11
        security_groups = [
            "sg-0668b1d9e4da1357e"
        ]
    }
    egress {
        from_port = local.port
        protocol = "-1"
        to_port = local.port
        cidr_blocks = [
            "0.0.0.0/0"
        ]
    }
}

resource "aws_security_group" "instance-sg-3" {
    description = "Created by the LIW for EFS at 2021-01-18T11:34:12.943+02:00"
    name = "instance-sg-3"
    vpc_id = var.vpc_id2
    egress {
        description = "Created by the LIW for EFS at 2021-01-18T11:34:12.942+02:00"
        from_port = local.port7
        protocol = "tcp"
        to_port = local.port7
        security_groups = [
            "sg-0a471e38168e26daf"
        ]
    }
}

resource "aws_security_group" "subnet-2439" {
    description = "2021-12-15T08:24:14.116Z"
    name = "subnet-2439"
    vpc_id = var.vpc_id12
    ingress {
        from_port = local.port
        protocol = "-1"
        to_port = local.port
        cidr_blocks = [
            "10.0.0.0/8",
            "172.16.0.0/12",
            "192.168.0.0/16",
            "202.3.121.0/24",
            "202.3.124.0/24",
            "216.240.16.0/20",
            "217.70.208.0/22"
        ]
    }
    egress {
        from_port = local.port
        protocol = "-1"
        to_port = local.port
        cidr_blocks = [
            "0.0.0.0/0"
        ]
    }
}

resource "aws_security_group" "orel-h-217" {
    description = "2023-10-17T17:22:27.246Z"
    name = "orel-h-217"
    vpc_id = var.vpc_id
    ingress {
        from_port = local.port3
        protocol = "tcp"
        to_port = local.port3
        cidr_blocks = [
            "0.0.0.0/0"
        ]
    }
    egress {
        from_port = local.port
        protocol = "-1"
        to_port = local.port
        cidr_blocks = [
            "0.0.0.0/0"
        ]
    }
}

resource "aws_security_group" "default10" {
    description = "default VPC security group"
    name = aws_security_group.default.name
    vpc_id = var.vpc_id10
    ingress {
        from_port = local.port
        protocol = "-1"
        to_port = local.port
        self = true
    }
    egress {
        from_port = local.port
        protocol = "-1"
        to_port = local.port
        cidr_blocks = [
            "0.0.0.0/0"
        ]
    }
}

resource "aws_security_group" "instance-sg-4" {
    description = "Created by the LIW for EFS at 2021-04-06T20:47:47.572+03:00"
    name = "instance-sg-4"
    vpc_id = var.vpc_id
    egress {
        description = "Created by the LIW for EFS at 2021-04-06T20:47:47.570+03:00"
        from_port = local.port7
        protocol = "tcp"
        to_port = local.port7
        security_groups = [
            "sg-0d42402c9bb2c3ca2"
        ]
    }
}

resource "aws_security_group" "launch-wizard-23" {
    description = "launch-wizard-23 created 2021-07-04T17:15:57.401+03:00"
    name = "launch-wizard-23"
    vpc_id = var.vpc_id
    ingress {
        from_port = local.port
        protocol = "-1"
        to_port = local.port
        cidr_blocks = [
            "10.0.0.0/8",
            "172.16.0.0/12",
            "192.168.0.0/16",
            "202.3.121.0/24",
            "202.3.124.0/24",
            "216.240.16.0/20",
            "217.70.208.0/22"
        ]
    }
    egress {
        from_port = local.port
        protocol = "-1"
        to_port = local.port
        cidr_blocks = [
            "0.0.0.0/0"
        ]
    }
}

resource "aws_security_group" "default11" {
    description = "default VPC security group"
    name = aws_security_group.default.name
    vpc_id = var.vpc_id20
    ingress {
        from_port = local.port
        protocol = "-1"
        to_port = local.port
        self = true
    }
    egress {
        from_port = local.port
        protocol = "-1"
        to_port = local.port
        cidr_blocks = [
            "0.0.0.0/0"
        ]
    }
}

resource "aws_security_group" "eks-cluster-sg-baruch-eks-800474009" {
    description = "EKS created security group applied to ENI that is attached to EKS Control Plane master nodes, as well as any managed workloads."
    name = "eks-cluster-sg-baruch-eks-800474009"
    tags = {
        "Name" = "eks-cluster-sg-baruch-eks-800474009"
        "kubernetes.io/cluster/baruch-eks" = "owned"
    }
    vpc_id = var.vpc_id8
    egress {
        from_port = local.port
        protocol = "-1"
        to_port = local.port
        cidr_blocks = [
            "0.0.0.0/0"
        ]
    }
}

resource "aws_security_group" "launch-wizard-38" {
    description = "launch-wizard-38 created 2022-01-17T16:38:22.022+02:00"
    name = "launch-wizard-38"
    vpc_id = var.vpc_id
    ingress {
        description = ""
        from_port = local.port2
        protocol = "tcp"
        to_port = local.port2
        cidr_blocks = [
            "0.0.0.0/0"
        ]
    }
    egress {
        from_port = local.port
        protocol = "-1"
        to_port = local.port
        cidr_blocks = [
            "0.0.0.0/0"
        ]
    }
}

resource "aws_security_group" "masters_noame_ek8s_com" {
    description = "Security group for masters"
    name = "masters.noame.ek8s.com"
    tags = {
        "kubernetes.io/cluster/noame.ek8s.com" = "owned"
        "KubernetesCluster" = "noame.ek8s.com"
        "Name" = "masters.noame.ek8s.com"
    }
    vpc_id = var.vpc_id11
    ingress {
        from_port = local.port8
        protocol = "tcp"
        to_port = local.port5
        security_groups = [
            "sg-09b6b2c380e8729c2"
        ]
    }
    ingress {
        from_port = local.port10
        protocol = "tcp"
        to_port = local.port9
        security_groups = [
            "sg-09b6b2c380e8729c2"
        ]
    }
    ingress {
        from_port = local.port
        protocol = "-1"
        to_port = local.port
        cidr_blocks = [
            "217.70.222.7/32",
            "93.172.236.132/32"
        ]
        self = true
    }
    ingress {
        from_port = local.port2
        protocol = "tcp"
        to_port = local.port2
        cidr_blocks = [
            "0.0.0.0/0"
        ]
        ipv6_cidr_blocks = [
            "::/0"
        ]
    }
    ingress {
        from_port = local.port4
        protocol = "udp"
        to_port = local.port5
        security_groups = [
            "sg-09b6b2c380e8729c2"
        ]
    }
    ingress {
        from_port = local.port4
        protocol = "tcp"
        to_port = local.port11
        security_groups = [
            "sg-09b6b2c380e8729c2"
        ]
    }
    ingress {
        from_port = local.port6
        protocol = "tcp"
        to_port = local.port6
        cidr_blocks = [
            "0.0.0.0/0"
        ]
        ipv6_cidr_blocks = [
            "::/0"
        ]
    }
    egress {
        from_port = local.port
        protocol = "-1"
        to_port = local.port
        cidr_blocks = [
            "0.0.0.0/0"
        ]
        ipv6_cidr_blocks = [
            "::/0"
        ]
    }
}

resource "aws_security_group" "eks-cluster-sg-wave-tal-demo-1277394011" {
    description = "EKS created security group applied to ENI that is attached to EKS Control Plane master nodes, as well as any managed workloads."
    name = "eks-cluster-sg-wave-tal-demo-1277394011"
    tags = {
        "Name" = "eks-cluster-sg-wave-tal-demo-1277394011"
        "kubernetes.io/cluster/wave-tal-demo" = "owned"
    }
    vpc_id = var.vpc_id4
    ingress {
        description = "Allow unmanaged nodes to communicate with control plane (all ports)"
        from_port = local.port
        protocol = "-1"
        to_port = local.port
        security_groups = [
            "sg-0890ee764287c647f"
        ]
    }
    egress {
        from_port = local.port
        protocol = "-1"
        to_port = local.port
        cidr_blocks = [
            "0.0.0.0/0"
        ]
    }
}

resource "aws_security_group" "fargat-8365" {
    description = "2022-10-24T13:11:39.002Z"
    name = "fargat-8365"
    vpc_id = var.vpc_id27
    ingress {
        from_port = local.port3
        protocol = "tcp"
        to_port = local.port3
        cidr_blocks = [
            "0.0.0.0/0"
        ]
    }
    egress {
        from_port = local.port
        protocol = "-1"
        to_port = local.port
        cidr_blocks = [
            "0.0.0.0/0"
        ]
    }
}

resource "aws_security_group" "masters_cilium1263_yehiel_ek8s_com" {
    description = "Security group for masters"
    name = "masters.cilium1263.yehiel.ek8s.com"
    tags = {
        "Name" = "masters.cilium1263.yehiel.ek8s.com"
        "kubernetes.io/cluster/cilium1263.yehiel.ek8s.com" = "owned"
        "protected" = "true"
        "KubernetesCluster" = "cilium1263.yehiel.ek8s.com"
        "creator" = "yehiel.etah@netapp.com"
    }
    vpc_id = var.vpc_id30
    ingress {
        from_port = local.port8
        protocol = "tcp"
        to_port = local.port5
        security_groups = [
            "sg-08efb99656efcf507"
        ]
    }
    ingress {
        from_port = local.port10
        protocol = "tcp"
        to_port = local.port9
        security_groups = [
            "sg-08efb99656efcf507"
        ]
    }
    ingress {
        from_port = local.port
        protocol = "-1"
        to_port = local.port
        self = true
    }
    ingress {
        from_port = local.port2
        protocol = "tcp"
        to_port = local.port2
        cidr_blocks = [
            "0.0.0.0/0"
        ]
        ipv6_cidr_blocks = [
            "::/0"
        ]
    }
    ingress {
        from_port = local.port4
        protocol = "udp"
        to_port = local.port5
        security_groups = [
            "sg-08efb99656efcf507"
        ]
    }
    ingress {
        from_port = local.port4
        protocol = "tcp"
        to_port = local.port11
        security_groups = [
            "sg-08efb99656efcf507"
        ]
    }
    ingress {
        from_port = local.port6
        protocol = "tcp"
        to_port = local.port6
        cidr_blocks = [
            "0.0.0.0/0"
        ]
        ipv6_cidr_blocks = [
            "::/0"
        ]
    }
    egress {
        from_port = local.port
        protocol = "-1"
        to_port = local.port
        cidr_blocks = [
            "0.0.0.0/0"
        ]
        ipv6_cidr_blocks = [
            "::/0"
        ]
    }
}

resource "aws_security_group" "test-v-6524" {
    description = "2023-11-01T07:40:17.320Z"
    name = "test-v-6524"
    vpc_id = var.vpc_id3
    ingress {
        from_port = local.port3
        protocol = "tcp"
        to_port = local.port3
        cidr_blocks = [
            "0.0.0.0/0"
        ]
    }
    egress {
        from_port = local.port
        protocol = "-1"
        to_port = local.port
        cidr_blocks = [
            "0.0.0.0/0"
        ]
    }
}

resource "aws_security_group" "default13" {
    description = "default VPC security group"
    name = aws_security_group.default.name
    vpc_id = var.vpc_id19
    ingress {
        description = "all traffic"
        from_port = local.port
        protocol = "-1"
        to_port = local.port
        self = true
    }
    egress {
        from_port = local.port
        protocol = "-1"
        to_port = local.port
        cidr_blocks = [
            "0.0.0.0/0"
        ]
        ipv6_cidr_blocks = [
            "::/0"
        ]
    }
}

resource "aws_security_group" "launch-wizard-31" {
    description = "launch-wizard-31 created 2023-04-13T12:44:33.479Z"
    name = "launch-wizard-31"
    vpc_id = var.vpc_id
    ingress {
        from_port = local.port2
        protocol = "tcp"
        to_port = local.port2
        cidr_blocks = [
            "0.0.0.0/0"
        ]
    }
    egress {
        from_port = local.port
        protocol = "-1"
        to_port = local.port
        cidr_blocks = [
            "0.0.0.0/0"
        ]
    }
}

resource "aws_security_group" "Amazon_ECS-Optimized_Amazon_Linux_2__AL2__x86_64_AMI-2_0_20230420-AutogenByAWSMP--1" {
    description = "This security group was generated by AWS Marketplace and is based on recommended settings for Amazon ECS-Optimized Amazon Linux 2 (AL2) x86_64 AMI version 2.0.20230420 provided by Amazon Web Services"
    name = "Amazon ECS-Optimized Amazon Linux 2 (AL2) x86_64 AMI-2.0.20230420-AutogenByAWSMP--1"
    vpc_id = var.vpc_id
    ingress {
        from_port = local.port2
        protocol = "tcp"
        to_port = local.port2
        cidr_blocks = [
            "0.0.0.0/0"
        ]
    }
    egress {
        from_port = local.port
        protocol = "-1"
        to_port = local.port
        cidr_blocks = [
            "0.0.0.0/0"
        ]
    }
}

resource "aws_security_group" "default14" {
    description = "default VPC security group"
    name = aws_security_group.default.name
    vpc_id = var.vpc_id16
    ingress {
        from_port = local.port
        protocol = "-1"
        to_port = local.port
        self = true
    }
    egress {
        from_port = local.port
        protocol = "-1"
        to_port = local.port
        cidr_blocks = [
            "0.0.0.0/0"
        ]
    }
}

resource "aws_security_group" "default15" {
    description = "default VPC security group"
    name = aws_security_group.default.name
    vpc_id = var.vpc_id6
    ingress {
        from_port = local.port
        protocol = "-1"
        to_port = local.port
        self = true
    }
    egress {
        from_port = local.port
        protocol = "-1"
        to_port = local.port
        cidr_blocks = [
            "0.0.0.0/0"
        ]
    }
}