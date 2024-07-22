FROM node:16-alpine 
# 베이스 이미지로 node:16-alpine를 사용한다.

WORKDIR /app
# 작업 디렉토리를 /app으로 설정한다. root경로 안에 /app 이라는 폴더 안에 관련된 파일을 다 카피하겠다.d

COPY package.json package-lock.json ./
# 현재 디렉토리에 있는 package.json, package-lock.json을 /app으로 복사한다.
# 변경이 많은 파일일 수록 나중에 copy 하도록 하자

RUN npm ci
# npm install(버전이 조금 달라질 수 있다) or ci을 실행한다. package.json에 있는 모듈들을 설치한다.

COPY index.js .

USER root

ENTRYPOINT [ "node", "index.js" ]