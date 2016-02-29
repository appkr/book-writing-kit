# Book Writing Start Kit

Markdown 으로 집필한 책을, Gitbook 과 Pandoc 을 이용하여 `.pdf`, `.epub`, `.mobi`, `.docx` 로 출판하려는 집필자를 위한 집필 스타트 킷이다.

이 [블로그 포스트](http://blog.appkr.kr/work-n-play/pandoc-gitbook-전자출판)에서 자세한 설명을 확인할 수 있다.

## 프로젝트 생성

이 스타트 킷을 복제하여 집필 프로젝트를 시작한다. (프로젝트 디렉터리를 `my-book` 이라 가정한다.)

```bash
$ git clone https://github.com/appkr/book-writing-kit.git my-book
```

## Gitbook, Pandoc 설치

이 스타트 킷은 아래 도구들과 함께 동작한다.

```bash
$ npm install gitbook-cli -g
$ brew install Caskroom/cask/calibre
$ brew install pandoc
```

## 전자책 출판

아래 명령으로 출판한다. (전자책 파일명은 `my-book.{ext}` 로 가정한다.)

```bash
$ gitbook build # 정적 웹페이지. 결과물은 _book 디렉터리에
$ gitbook pdf ./ _build/my-book.pdf   # pdf
$ gitbook epub ./ _build/my-book.epub # epub
$ gitbook mobi ./ _build/my-book.mobi # mobi

# MS 워드
$ cd _draft
$ pandoc --smart --output=../_build/my-book.docx ../README.md ../SUMMARY.md chapter1.md chapter2.md
```

Happy writing~