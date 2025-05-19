   10  whoami
   11  yum --help
   12  man(yum)
   13  man yum
   14  date
   15  ls
   16  touch a.txt
   17  ls
   18  man touch
   19  yum install httpd
   20  systemctl start httpd
   21  cd /etc/httpd/conf
   22  ls
   23  cat httpd.conf 
   24  vim httpd.conf 
   25  systemctl restart httpd
   26  clear
   27  cd /
   28  clear
   29  git clone https://github.com/sudhanshuvlog/SampleFlaskApp.git
   30  yum install git 
   31  git clone https://github.com/sudhanshuvlog/SampleFlaskApp.git
   32  ls
   33  cd SampleFlaskApp/
   34  ls
   35  cat app.py 
   36  cat requirements.txt 
   37  pytest
   38  yum install python3
   39  yum install pip
   40  pip3 install -r requirements.txt
   41  pytest
   42  cat app.py 
   43  git pull
   44  cat app.py 
   45  pytest
   46  git pull
   47  pytest
   48  flake8 .
   49  flake8 app.py 
   50  python flake8
   51  python3 flake8 .
   52  flake
   53  flake8
   54  flake8 .
   55  python3 app.py 
   56  cd /
   57  yum install docker 
   58  systemctl start docker
   59  docker ps
   60  docker images
   61  docker pull ubuntu
   62  docker images
   63  docker run ubuntu
   64  docker ps
   65  docker ps -a
   66  date 
   67  ls
   68  docker run -it ubuntu
   69  ls
   70  docker ps
   71  docker ps -a
   72  docker start brave_buck
   73  docker ps
   74  ls
   75  touch c.txt d.txt
   76  ls
   77  docker attach brave_buck
   78  docker ps
   79  docker run -it ubuntu
   80  docker ps
   81  docker inspect sweet_cray
   82  docker ps
   83  docker inspect brave_buck
   84  docker ps
   85  docker pull amazonlinux
   86  docker images
   87  docker run -it --name os1 amazonlinux
   88  docker pull nginx
   89  docker images
   90  docker run -it nginx
   91  docker run -it -d  nginx
   92  docker ps
   93  docker inspect jolly_mcnulty
   94  curl 172.17.0.5
   95  ps -aux
   96  systemctl status httpd
   97  ps -aux
   98  kill -9 347463
   99  kill -9 37463
  100  ps -aux
  101  ps -aux
  102  ps -aux | grep httpd
  103  ps -aux | grep python
  104  ps -aux | grep python
  105  netstat -tnlp
  106  ps -aux
  107  rpm -q nginx
  108  docker ps
  109  ps -aux | grep nginx
  110  docker run -d -p 81:80  nginx
  111  docker ps
  112  netstat -tnlp
  113  ps -aux | grep nginx
  114  docker run -dit --memory=30M  amazonlinux
  115  docker ps
  116  docker stats beautiful_buck
  117  vi Dockerfile
  118  ls
  119  mv Dockerfile SampleFlaskApp/
  120  ls
  121  cd SampleFlaskApp/
  122  ls
  123  vi Dockerfile 
  124  docker ps
  125  vi Dockerfile 
  126  docker build -t gfgimg:v1 .
  127  docker images
  128  docker run -dit --name mywebos gfgimg
  129  docker run -dit --name mywebos gfgimg:v1
  130  docker ps
  131  docker run -dit --name mywebos1 -p 8080:500 gfgimg:v1
  132  docker ps
  133  docker login 
  134  docker images
  135  docker tag gfgimg:v1 jinny1/gfgsampleimg
  136  docker images
  137  docker push jinny1/gfgsampleimg
  138  docker pull jinny1/mario-game
  139  docker images
  140  docker run -p 9090:80 jinny1/gfgsampleimg
  141  docker run -p 9091:80 jinny1/mario-game
  142  cd /
  143  history