#Comandos

## stress

apt update
apt install -y stress

stress --vm-byte 64M --vm 1

free -m

ps -ef

## entrando dentro do pod

kubectl exec giropops -c strigus -- ls
kubectl exec giropops -c strigus -it -- sh
kubectl exec giropops -c girus -it -- sh
kubectl exec giropops -c girus -it -- apk add curl

## descrevendo pod

kubectl describe pod giropops

## logs de um pod

kubectl logs -f giropops

## pegando pod com opção output

kubectl get pods giropops -o json
kubectl get pods giropops -o yaml

## Todos em um namespace

kubectl get pods -n kube-system

## pods de todos namespaces

kubectl get pods --all-namespaces
kubectl get pods -A

## cria arquivoss

touch /giropops/FUNCIONAAAAAA

## adiciona curl no alpine

apk add curl

## keti

keti="kubectl exec -it"

## mudando html

cd /usr/share/nginx/html
echo "GIROPOPS STRIGUS GIRUS" > index.html

# dry-run

kubectl run --image nginx --port 80 giropops --dry-run=client
kubectl run --image nginx --port 80 giropops --dry-run=client -o yaml
kubectl run --image nginx --port 80 giropops --dry-run=client -o yaml > pod.yml

# get logs from a pod

kubectl logs girus -f -c apache

## diferença entre limits e request

limits: # limite de recursos que o pod pode usar
requests: # garantia de que o pod vai ter pelo menos esses recursos

## diferença entra M e Mi

A diferença entre M (Mega bytes) e Mi (Mega IOPS) é que Mi se refere aos recursos de memória disponíveis para um contêiner ou pod, enquanto M se refere aos recursos de entrada/saída de operações por segundo (IOPS) disponíveis para um dispositivo de armazenamento
