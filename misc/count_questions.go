package main

import (
	"bufio"
	"fmt"
	"log"
	"net/http"
	"strings"
)

func main() {
	// repo linkkk
	url := "https://raw.githubusercontent.com/moabukar/tech-interview-questions/main/README.md"

	resp, err := http.Get(url)
	if err != nil {
		log.Fatal(err)
	}
	defer resp.Body.Close()

	scanner := bufio.NewScanner(resp.Body)
	questionCount := -18

	for scanner.Scan() {
		line := scanner.Text()
		if strings.HasPrefix(line, "- ") {
			questionCount++
		}
	}

	if err := scanner.Err(); err != nil {
		log.Fatal(err)
	}

	fmt.Printf("There are %d questions in the repo.\n", questionCount)
}
