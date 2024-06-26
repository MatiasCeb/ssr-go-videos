package main

import (
	"fmt"
	"html/template"
	"log"
	"net/http"
)

func main() {
	myFunctions := template.FuncMap{
		"usd": func(a float64) string {
			return fmt.Sprintf("$%.fUSD", a)
		},
	}

	t, err := template.New("").Funcs(myFunctions).ParseGlob("templates/*.tpl")
	if err != nil {
		log.Fatalf("Error haciendo parse de los templates: %v", err)
	}

	http.Handle("/css/", http.StripPrefix("/css/", http.FileServer(http.Dir("public/css"))))
	http.Handle("/imgs/", http.StripPrefix("/imgs/", http.FileServer(http.Dir("public/imgs"))))
	http.Handle("/videos/", http.StripPrefix("/videos/", http.FileServer(http.Dir("public/videos"))))

	http.HandleFunc("/", middleware(t, "narrator-list"))
	http.HandleFunc("/narrator-list", middleware(t, "narrator-list"))
	http.HandleFunc("/narrator/", middleware(t, "narrator"))
	http.HandleFunc("/cursos/", middleware(t, "courses"))
	http.HandleFunc("/story/", middleware(t, "stories"))

	err = http.ListenAndServe(":8080", nil)
	if err != nil {
		log.Fatalf("Error al subir el servidor: %v", err)
	}
}

func middleware(t *template.Template, funcName string) func(w http.ResponseWriter, r *http.Request) {
	switch funcName {
	case "index":
		return func(w http.ResponseWriter, r *http.Request) {
			index(t, w, r)
		}
	case "narrator-list":
		return func(w http.ResponseWriter, r *http.Request) {
			NarratorList(t, w, r)
		}
	case "narrator":
		return func(w http.ResponseWriter, r *http.Request) {
			narrator(t, w, r)
		}
	case "courses":
		return func(w http.ResponseWriter, r *http.Request) {
			courses(t, w, r)
		}
	case "stories":
		return func(w http.ResponseWriter, r *http.Request) {
			stories(t, w, r)
		}
	}

	return func(w http.ResponseWriter, r *http.Request) {
		http.NotFound(w, r)
	}
}

func index(t *template.Template, w http.ResponseWriter, r *http.Request) {
	gp := gridStoryPage{"grid", loadStory()}
	err := t.ExecuteTemplate(w, "wrapper", &gp)
	if err != nil {
		http.Error(w, err.Error(), http.StatusInternalServerError)
	}
}

func NarratorList(t *template.Template, w http.ResponseWriter, r *http.Request) {
	gnp := gridNarratorPage{"narrator-list", loadNarrators()}
	err := t.ExecuteTemplate(w, "wrapper", &gnp)
	if err != nil {
		http.Error(w, err.Error(), http.StatusInternalServerError)
	}
}

func narrator(t *template.Template, w http.ResponseWriter, r *http.Request) {
	slug := r.URL.Path[len("/narrator/"):]
	np := gridAuthorsPage{"narrator", getNarrators(slug)}
	err := t.ExecuteTemplate(w, "wrapper", &np)
	if err != nil {
		http.Error(w, err.Error(), http.StatusInternalServerError)
	}
}

func courses(t *template.Template, w http.ResponseWriter, r *http.Request) {
	slug := r.URL.Path[len("/cursos/"):]
	cp := coursePage{"course", getCourse(slug)}
	err := t.ExecuteTemplate(w, "wrapper", &cp)
	if err != nil {
		http.Error(w, err.Error(), http.StatusInternalServerError)
	}
}

func stories(t *template.Template, w http.ResponseWriter, r *http.Request) {
	slug := r.URL.Path[len("/story/"):]
	sp := classPage{"story", getStoryVideo(slug)}
	err := t.ExecuteTemplate(w, "wrapper", &sp)
	if err != nil {
		http.Error(w, err.Error(), http.StatusInternalServerError)
	}
}
