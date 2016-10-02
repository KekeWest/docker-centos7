# docker-centos7
SSHサーバが備わっているシンプルなCentOS7のDockerコンテナのイメージです

初期状態では以下のようなツールが入っています

- sudo
- vim
- git
- net-tools
- iproute
- wget
- openssh-server
- openssh-clients

## 使用方法
Dockerコンテナのイメージを作成するため、Dockerfileがあるディレクトリで以下のコマンドを実行してください
```
$ docker build -t kekewest/docker-centos7 .
```

## Dockerコンテナのセットアップと起動
作成したDockerコンテナのイメージを起動させるため、まずはユーザー作成などのセットアップを行います
```
$ docker run --name testcontainer -i -t kekewest/docker-centos7
creating user...
New UserName: test
Changing password for user test.
New password:
Retype new password:
passwd: all authentication tokens updated successfully.
```
セットアップが完了したら、
```
$ docker start testcontainer
```
でSSHサーバが起動している状態のDockerコンテナが起動します
