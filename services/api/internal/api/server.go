package api

import "net/http"

type server struct {
	mux *http.ServeMux
}

func NewServer() *server {
	s := &server{
		mux: http.NewServeMux(),
	}
	s.routes()
	return s
}

func (s *server) routes() {
	s.mux.HandleFunc("GET /health", s.getHealth)
}

func (s *server) Mux() http.Handler {
	return s.mux
}
