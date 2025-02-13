# 1. Node.js 기반 이미지 사용
FROM node:18-alpine

# 2. 컨테이너 안에서 작업할 디렉토리 설정
WORKDIR /

# 3. package.json과 package-lock.json 복사
COPY package*.json ./

# 4. 의존성 설치
RUN npm install

# 5. 모든 프로젝트 파일 복사
COPY . .

# 6. 빌드 (필요할 경우)
RUN npm run build

# 7. React 앱 실행
CMD ["npm", "start"]

# 8. 컨테이너의 포트 설정
EXPOSE 8080