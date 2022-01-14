docker rmi -f ft_server_image;
docker rm -f ft_server;
docker build .. -t ft_server_image;
docker run --name ft_server -it -p 80:80 -p 443:443 ft_server_image;
docker exec -ti ft_server bash
