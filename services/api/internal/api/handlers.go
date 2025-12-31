package api

import (
	"encoding/json"
	"fmt"
	"net/http"
)

func (s *server) getHealth(w http.ResponseWriter, r *http.Request) {
	fmt.Println("health check")
	w.Header().Set("Content-Type", "application/json")
	json.NewEncoder(w).Encode(map[string]bool{"ok": true})
}
