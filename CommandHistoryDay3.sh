[root@ip-172-31-3-161 /]# history
    1  cd /
    2  yum install docker -y
    3  systemctl start docker
    4  docker pull jenkins/jenkins
    5  docker images
    6  docker run -p 8080:8080 -p 50000:50000 --name jenkins -dit --restart=on-failure jenkins/jenkins:lts-jdk17
    7  docker ps
    8  docker attach jenkins
    9  docker ps
   10  docker run -it amazonlinux
   11  docker ps
   12  docker attach  amazing_dewdney
   13  docker exec -it jenkins ls
   14  docker exec -it jenkins pwd
   15  docker exec -it jenkins bash
   16  docker ps
   17  clear
   18  ls
   19  cd /
   20  history
       1  cd /
    2  git
    3  yum install git -y
    4  ls
    5  cat data
    6  cd data
    7  ls
    8  cd workspace/
    9  ls
   10  cd python\ pipeline
   11  ls
   12  docker ps
   13  docker ps -a
   14  cd /
   15  eksctl delete cluster --region=ap-south-1 --name=EKS21
   16  curl -LO https://storage.googleapis.com/minikube/releases/latest/minikube-latest.x86_64.rpm
   17  sudo rpm -Uvh minikube-latest.x86_64.rpm
   18  minikube start --force
   19  kubectl get pods
   20  mysql -h database-2.cbaw4kes2epe.ap-south-1.rds.amazonaws.com -u admin -p
   21  yum whatprovides mysql
   22  yum install mariadb105-3:10.5.25-1.amzn2023.0.1.x86_64
   23  yum install mariadb105-3:10.5.25-1.amzn2023.0.1.x86_64
   24  mysql -h database-2.cbaw4kes2epe.ap-south-1.rds.amazonaws.com -u admin -p
   25  docker ps
   26  kubectl get pods
   27  kubectl get svc
   28  yum install socat -y > /dev/null
   29  minikube ip
   30  curl 192.168.49.2:31463
   31  socat TCP4-LISTEN:83,fork,su=nobody TCP:192.168.49.2:31463 &
   32  ls
   33  cd data/
   34  ls
   35  cd workspace/
   36  ls
   37  cd MymovieApp
   38  ls
   39  cd deploy/
   40  ls
   41  vi webapp-config.yaml 
   42  socat TCP4-LISTEN:3000,fork,su=nobody TCP:192.168.49.2:31463 &
   43  cat webapp-config.yaml 
   44  kubectl apply -f webapp-config.yaml 
   45  kubectl get pods
   46  kubectl apply -f deploy/deployment-web.yaml
   47  kubectl apply -f deployment-web.yaml
   48  kubectl apply -f service-web.yaml
   49  kubectl get pods
   50  kubectl get svc
   51  socat TCP4-LISTEN:8080,fork,su=nobody TCP:192.168.49.2:32756 &
   52  mysql -h database-1.cbaw4kes2epe.ap-south-1.rds.amazonaws.com -u admin -p
   53  kubectl
   54  cd /
   55  curl --silent --location "https://github.com/weaveworks/eksctl/releases/latest/download/eksctl_$(uname -s)_amd64.tar.gz" | tar xz -C /tmp
   56  sudo mv /tmp/eksctl /usr/local/bin
   57  eksctl version
   58  aws configure
   59  clear
   60  curl -o kubectl https://amazon-eks.s3.us-west-2.amazonaws.com/1.19.6/2021-01-05/bin/linux/amd64/kubectl
   61  chmod +x ./kubectl
   62  sudo mv ./kubectl /usr/local/bin
   63  kubectl version --short --client
   64  eksctl create cluster --name EKS21 --region ap-south-1 --vpc-public-subnets=subnet-0e64ffc947ac8929c,subnet-04c1ed6ba9c55ffd7 --nodegroup-name default-ng --node-type t3.medium --nodes=2 --nodes-min=2 --nodes-max=2 --node-volume-size=20 --ssh-access --ssh-public-key DevOps --managed
   65  eksctl create cluster --name EKS25 --region ap-south-1 --vpc-public-subnets=subnet-0e64ffc947ac8929c,subnet-04c1ed6ba9c55ffd7 --nodegroup-name default-ng-1 --node-type t3.medium --nodes=2 --nodes-min=2 --nodes-max=2 --node-volume-size=20 --ssh-access --ssh-public-key DevOps --managed
   66  cd /
   67  history