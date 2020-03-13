
For Dev

git clone https://github.com/Python35/kam.git

Docker Setup
docker-compose up

Create Demo Image with loaded data, code and installed packages
Change TAG to name of demo
docker build -t objectivepartner/weatherproject:TAG -f Dockerfile.demo .
docker login -u objectivepartner docker.io
docker push objectivepartner/weatherproject:TAG
