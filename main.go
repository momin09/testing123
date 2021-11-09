package main

import "net/http"

func main() {

	http.HandleFunc("/hello", func(w http.ResponseWriter, req *http.Request) {
		w.Write([]byte("Hello?"))
	})

	http.HandleFunc("/world", func(w http.ResponseWriter, req *http.Request) {
		w.Write([]byte("Is that u?"))
	})

	http.ListenAndServe(":8080", nil)
}
