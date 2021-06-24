#--------------------------------------------------------#
# Matheus Bakaus Bruno - 21/06/2021                      #
# Programa para instalação e configuração do X11vnc#     #
#--------------------------------------------------------#


#Update OS
echo "Atualizando o OS...."
sleep 1
sudo apt-get update
echo "OS Atualizado!!"
sleep 2
echo "\n\n\n"


#Instalando o  X11vnc
echo "------------------------Verificando x11vnc------------------------------------------"
       apt-get -y install x11vnc
sleep 3
echo "--------------------------------Configurando x11vnc----------------------------------"

sudo mkdir /etc/vnc
sudo x11vnc -storepasswd mirage /etc/vnc/passwd
echo "\n\n\n"
echo "------------------------------Criando serviço----------------------------------------"
       sudo apt-get -y install wget > /dev/null

echo "-------------------------------Baixando arquivo systemd------------------------------"


wget https://gist.githubusercontent.com/BakausDevops/9b0d9a90308d5e761ce7785e281ec53e/raw/x11vnc

mv x11vnc /etc/systemd/system/x11vnc.service

sudo systemctl daemon-reload
sudo systemctl restart x11vnc.service

echo "----------------------x11vnc configurado----------------------------------------------"
