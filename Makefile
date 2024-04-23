NAME=gopli
DATE=`date +%Y-%m-%d\ %H:%M`
FLAGS=-v -ldflags="-s -w"



build:
	@echo "Building ${NAME}"
	go mod tidy
	CGO_ENABLED=0 go build -o $(NAME) $(FLAGS)
	upx ${NAME}
	@ls -sh ${NAME}
