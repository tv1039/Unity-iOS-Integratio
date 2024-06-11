# Note
## iOS-Unity 통합 앱을 GitHub에 업로드 과정
(iOS와 Unity를 통합하는 일반적인 방법)

### 프로젝트 설정
- Unity에서 iOS 빌드를 생성합니다.
- 생성된 Xcode 프로젝트를 열고 SwiftUI 코드를 추가합니다.
- Unity와 SwiftUI 간의 데이터 교환을 위한 인터페이스를 생성합니다.

### Git LFS 설정
- Git LFS를 설치하고 초기화합니다: `git lfs install`
- 대용량 파일을 추적하도록 설정합니다. 예를 들어, 모든 `.a` 파일을 추적하려면: `git lfs track "*.a"`
- `.gitattributes` 파일을 커밋합니다.

### GitHub에 업로드
- 로컬 저장소를 원격 GitHub 저장소에 연결합니다: `git remote add origin [내 저장소]`
- 변경 사항을 스테이징하고 커밋합니다: `git add .` -> `git commit -m "커밋 메세지"`
- GitHub에 푸시합니다: `git push -u origin main`


