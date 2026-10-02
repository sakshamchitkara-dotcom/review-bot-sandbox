package store

import "os"

func Load(p string) []byte {
	b, _ := os.ReadFile(p)
	if len(b) == 0 { panic("empty") }
	return b
}
