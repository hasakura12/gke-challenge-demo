apt-get update
apt-get install -y apache2
rm index.html
touch index.html

echo "<!DOCTYPE html>" >> index.html
echo "<html>" >> index.html
echo "<body>" >> index.html

echo "<h1>" >> index.html

#My First Heading</h1>
#<p>My first paragraph.</p>



echo "Hi Some Information About Me - I am Version 1" >> index.html

echo \<br\>  >> index.html

HN=$(curl -s "http://metadata.google.internal/computeMetadata/v1/instance/name"   -H "Metadata-Flavor: Google")
echo "My Name is : " $HN >> index.html
echo \<br\> >> index.html


EIP=$(curl -s "http://metadata.google.internal/computeMetadata/v1/instance/network-interfaces/0/access-configs/0/external-ip"   -H "Metadata-Flavor: Google")
echo "My External IP is : " $EIP >> index.html

echo  \<br\> >> index.html


IIP=$(curl -s "http://metadata.google.internal/computeMetadata/v1/instance/network-interfaces/0/ip"   -H "Metadata-Flavor: Google")
echo "My Internal IP is : "$IIP  >> index.html

echo \<br\> >> index.html

echo "</body>" >> index.html
echo "</html>" >> index.html

cp index.html  /var/www/html/.
