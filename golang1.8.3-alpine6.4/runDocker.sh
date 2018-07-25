#docker run -it --rm -v /Users/cruise/go/src/github.com/cruisechang:/go/src/github.com/cruisechang -w /go/src/github.com/cruisechang/slotServer kumay/golang:1.8.3 go build -v
#docker run -it --rm -v /Users/cruise/go/src/github.com/cruisechang:/go/src/github.com/cruisechang -w /go/src/github.com/cruisechang/slotServer kumay/golang:1.8.3 go build -v -buildmode=exe
docker run -it  -v /Users/cruise/go/src/github.com/cruisechang:/go/src/github.com/cruisechang -w /go/src/github.com/cruisechang/slotServer cruisechang/golang:1.8.3 bash
