package main

import (
	"fmt"
	"log"
	"net/http"
)

func basePage(w http.ResponseWriter, r *http.Request) {
	fmt.Fprintf(w, "This is a simple GO™ (golang) webserver")
	fmt.Println("Endpoint Hit: basePage")
}

func helloWorld(w http.ResponseWriter, r *http.Request) {
	fmt.Fprintf(w, "Hello World!")
	fmt.Println("Endpoint Hit: helloWorld")
}

func handleRequests() {
	http.HandleFunc("/", basePage)
	http.HandleFunc("/hello-world", helloWorld)
	log.Fatal(http.ListenAndServe(":10000", nil))
}

func main() {
	fmt.Println("starting server on localhost:10000/")
	handleRequests()
}
