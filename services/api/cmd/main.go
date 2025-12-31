package main

import (
	"flag"
	"fmt"
	"log"
	"net/http"

	"github.com/caryoneill/haunted-road-atlas/api/internal/api"
)

func main() {
	port := flag.String("port", "8080", "server port")
	flag.Parse()

	srv := api.NewServer()

	addr := fmt.Sprintf("%s%s", ":", *port)
	fmt.Printf("Listening on %s\n", addr)
	if err := http.ListenAndServe(addr, srv.Mux()); err != nil {
		log.Fatal(err)
	}
}
