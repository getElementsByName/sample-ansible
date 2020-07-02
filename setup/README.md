## ansible
- 서버 환경 구축 자동화
  - docker 설치
  - es 관련 설정

### ansible install (제어 서버 1대)
- `sudo yum install ansible -y`

### 제어 서버의 SSH 접근 권한을 각 서버에 추가
- 접근하려는 서버에는 제어 서버의 공개키를 인증키 정보에 등록하여 ssh로 접근 할 수 있도록 설정만 한다.
- (제어서버) 로컬에 키 생성: `ssh-keygen -t rsa -b 4096`
- (제어서버) `~/.ssh/id_rsa.pub` 파일에 들어있는 공개키값을 접속하려는 서버의 `~/.ssh/authorized_keys` 에 등록
  - [`register_auth_key.sh`](./register_auth_key.sh) 파일 참고
  - `~/.ssh/authorized_keys` 에 등록하는 방법
    - `cat ~/.ssh/id_rsa.pub`
    - `mkdir ~/.ssh & vim ~/.ssh/authorized_keys`
- 관리 서버에서 `ssh {유저명@타겟서버의호스트명}` 으로 접속 테스트

### 접속 테스트
- `ansible --inventory=./hosts.dev.yaml --module-name shell -a 'hostname' all`
