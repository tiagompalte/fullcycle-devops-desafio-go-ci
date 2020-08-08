package main

import "testing"

func TestSoma(t *testing.T) {
	resultado := soma(5,5)
	if resultado != 10 {
		t.Errorf("Soma(5,5) \n got: %v \n want: %v", resultado, 10)
	}
}
