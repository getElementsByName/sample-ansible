## master-node

### 초기화
- `kubeadm init`
- 초기화 결과로 나온 worker 등록 명령어 저장

### kube 관련 context 설정
```
mkdir -p $HOME/.kube
sudo cp -i /etc/kubernetes/admin.conf $HOME/.kube/config
sudo chown $(id -u):$(id -g) $HOME/.kube/config
```
- `$HOME/.kube/config` 파일 정보는 cluster 전체를 제어할 수 있는 정보. 로컬에 설정하면 해당 클러스터 제어


### cluster 네트워크 설치
- weave net 설치
```
kubectl apply -f "https://cloud.weave.works/k8s/net?k8s-version=$(kubectl version | base64 | tr -d '\n')"
```

## worker node
- `kubeadm join`


## access node
- 로컬 `$HOME/.kube/config` 설정
