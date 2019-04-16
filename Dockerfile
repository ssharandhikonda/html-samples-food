FROM centos
LABEL emaild=ssharandhikonda@gmail.com
RUN yum update -y \
&& yum install httpd git -y \
&& git clone https://github.com/ssharandhikonda/html-samples-food.git /var/www/html/
CMD ["httpd", "-DFOREGROUND"]
EXPOSE 80 443
