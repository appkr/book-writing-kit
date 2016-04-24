# Book Writing Start Kit

Markdown으로 집필한 책을, Gitbook 과 Pandoc 을 이용하여 `.pdf`, `.epub`, `.mobi`, `.docx` 로 출판하려는 집필자를 위한 집필 스타트 킷이다.

이 [블로그 포스트](http://blog.appkr.kr/work-n-play/pandoc-gitbook-전자출판)에서 자세한 설명을 확인할 수 있다.

## 1. 프로젝트 생성

이 스타트 킷을 복제하여 집필 프로젝트를 시작한다. (프로젝트 디렉터리를 `my-book` 이라 가정한다.)

```sh
$ git clone https://github.com/appkr/book-writing-kit.git my-book
```

## 2. Gitbook, Pandoc 설치

이 스타트 킷은 아래 도구들과 함께 동작한다(Mac 운영체제 기준).

```sh
$ npm install gitbook-cli -g
$ brew install Caskroom/cask/calibre
$ brew install pandoc
```

## 3. 집필

`_draft` 디렉터리에 마크다운 형식으로 집필한다. 여러 개의 파일로 쪼개서 집필한다면, `SUMMARY.md`, `build.sh` 파일을 열어 집필한 파일 이름을 추가해 준다.

```markdown
<!--// SUMMARY.md-->

-   [Chapter 1](_draft/chapter1.md)
-   [Chapter 2](_draft/chapter2.md)
-   ...
```

```sh
# build.sh

pandoc --verbose --smart --reference-docx=reference.docx --output=../_build/my-book.docx\
    ../README.md \
    ../SUMMARY.md \
    chapter1.md \
    chapter2.md \
    ...
;;
```

## 4. 전자책 출판

아래 명령으로 출판한다. 출판된 파일은 `_build` 디렉터리에서 찾을 수 있다.

```sh
$ bash build_all.sh

- OR -

$ bash build.sh {docx|pdf|epub|mobi}
```

Happy writing~