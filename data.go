package main

type class struct {
	Title    string
	Duration string
	Slug     string
	Video    string
}

type module struct {
	Title       string
	Description string
	Slug        string
	Video       string
	Classes     []class
}

type author struct {
	Title       string
	Description string
	Slug        string
	Classes     []class
}

type course struct {
	Slug         string
	Img          string
	Title        string
	Name         string
	Description  string
	Average      float64
	Professor    string
	ProfessorImg string
	Price        float64
	Modules      []module
}

type narratorData struct {
	Slug        string
	Img         string
	Title       string
	Name        string
	Description string
	Authors     []author
}

type story struct {
	Slug         string
	Img          string
	Video        string
	Title        string
	Name         string
	Description  string
	Average      float64
	Professor    string
	ProfessorImg string
	Price        float64
	Modules      []module
}

type gridPage struct {
	InternalTemplate string
	Course           []course
}

type gridStoryPage struct {
	InternalTemplate string
	Story            []story
}

type gridNarratorPage struct {
	InternalTemplate string
	Narrator         []narratorData
}

type gridAuthorsPage struct {
	InternalTemplate string
	Narrator         narratorData
}

type coursePage struct {
	InternalTemplate string
	Course           course
}

type storyPage struct {
	InternalTemplate string
	Story            story
}

type classPage struct {
	InternalTemplate string
	Class            class
}

func loadGrid() []course {
	return []course{
		{
			Slug:         "go",
			Img:          "https://pbs.twimg.com/profile_images/1529577556118323202/cpsIFpki_400x400.jpg",
			Title:        "Eduardo Sacheri",
			Name:         "Eduardo Sacheri",
			Description:  "Los mejores relatos en la voz del reconocido escritor argentino.",
			Average:      4.7,
			Professor:    "Alejo Rodriguez",
			ProfessorImg: "https://edteam-media.s3.amazonaws.com/users/thumbnail/952327c3-2bd9-41d1-819e-9b5d7eb84c13.jpg",
			Price:        30,
			Modules: []module{
				{
					Title:       "Eduardo Sacheri",
					Description: "Eduardo Sacheri",
					Classes: []class{
						{
							Title:    "Pericón",
							Duration: "05:33",
						},
						{
							Title:    "Creadores",
							Duration: "03:02",
						},
					},
				},
				{
					Title:       "Sintaxis",
					Description: "Bases del lenguaje",
					Classes: []class{
						{
							Title:    "Declaración de Variables",
							Duration: "05:33",
						},
						{
							Title:    "Constantes",
							Duration: "03:02",
						},
					},
				},
			},
		},
		{
			Slug:         "go-poo",
			Img:          "https://edteam-media.s3.amazonaws.com/courses/big/8f37ebcc-16a1-4001-93e1-5f21893cd3cc.jpg",
			Title:        "POO con Go",
			Name:         "POO con Go",
			Description:  "Aprende a usar la programación orientada a objetos en Go",
			Average:      4.8,
			Professor:    "Alejo Rodriguez",
			ProfessorImg: "https://edteam-media.s3.amazonaws.com/users/thumbnail/952327c3-2bd9-41d1-819e-9b5d7eb84c13.jpg",
			Price:        30,
		},
		{
			Slug:         "go-database",
			Img:          "https://edteam-media.s3.amazonaws.com/courses/big/4d60ef81-2e58-457f-97c7-ee8847663985.jpg",
			Title:        "Bases de datos con Go",
			Name:         "Bases de datos con Go",
			Description:  "Aprende a integrar y usar las bases de datos en Go",
			Average:      4.8,
			Professor:    "Alejo Rodriguez",
			ProfessorImg: "https://edteam-media.s3.amazonaws.com/users/thumbnail/952327c3-2bd9-41d1-819e-9b5d7eb84c13.jpg",
			Price:        30,
		},
		{
			Slug:         "go-testing",
			Img:          "https://edteam-media.s3.amazonaws.com/courses/big/a9913502-8af2-400b-8095-7b78f52200dc.png",
			Title:        "Testing con Go",
			Name:         "Testing con Go",
			Description:  "Aprende a crear tests y medir la eficiencia de tus proyectos con Go",
			Average:      4.7,
			Professor:    "Alexys Lozada",
			ProfessorImg: "https://edteam-media.s3.amazonaws.com/users/thumbnail/66f015b2-0dfb-4ba9-bd0d-f7a7e1855275.jpeg",
			Price:        24,
		},
	}
}

func loadStory() []story {
	return []story{
		{
			Slug:         "eduardo-sacheri",
			Img:          "https://pbs.twimg.com/profile_images/1529577556118323202/cpsIFpki_400x400.jpg",
			Video:        "/videos/pericon-eduardo-sacheri.mp4",
			Title:        "Eduardo Sacheri5",
			Name:         "Eduardo Sacheri5",
			Description:  "Los mejores relatos en la voz del reconocido escritor argentino.",
			Average:      4.7,
			Professor:    "Alejo Rodriguez",
			ProfessorImg: "https://edteam-media.s3.amazonaws.com/users/thumbnail/952327c3-2bd9-41d1-819e-9b5d7eb84c13.jpg",
			Price:        30,
			Modules: []module{
				{
					Title:       "Jorge Luis Borges",
					Description: "Textos de Jorge Luis Borges",
					Slug:        "pericon-eduardo-sacheri",
					Video:       "/videos/pericon-eduardo-sacheri.mp4",
					Classes: []class{
						{
							Title:    "Pericón",
							Duration: "05:33",
							Slug:     "pericon-eduardo-sacheri",
							Video:    "/videos/pericon-eduardo-sacheri.mp4",
						},
						{
							Title:    "Pericón 2",
							Duration: "03:02",
							Slug:     "pericon-eduardo-sacheri",
							Video:    "/videos/pericon-eduardo-sacheri.mp4",
						},
					},
				},
				{
					Title:       "Ray Bradbury",
					Description: "Textos de Ray Bradbury",
					Slug:        "la-sirena-ray-bradbury",
					Video:       "/videos/la-sirena-ray-bradbury.mp4",
					Classes: []class{
						{
							Title:    "La sirena",
							Duration: "05:33",
							Slug:     "la-sirena-ray-bradbury",
							Video:    "/videos/la-sirena-ray-bradbury.mp4",
						},
						{
							Title:    "La sirena 2",
							Duration: "03:02",
							Slug:     "la-sirena-ray-bradbury",
							Video:    "/videos/la-sirena-ray-bradbury.mp4",
						},
					},
				},
			},
		},
		{
			Slug:         "go-poo",
			Img:          "https://pbs.twimg.com/profile_images/1529577556118323202/cpsIFpki_400x400.jpg",
			Title:        "POO con Go",
			Name:         "POO con Go",
			Description:  "Aprende a usar la programación orientada a objetos en Go",
			Average:      4.8,
			Professor:    "Alejo Rodriguez",
			ProfessorImg: "https://edteam-media.s3.amazonaws.com/users/thumbnail/952327c3-2bd9-41d1-819e-9b5d7eb84c13.jpg",
			Price:        30,
		},
		{
			Slug:         "go-database",
			Img:          "https://edteam-media.s3.amazonaws.com/courses/big/4d60ef81-2e58-457f-97c7-ee8847663985.jpg",
			Title:        "Bases de datos con Go",
			Name:         "Bases de datos con Go",
			Description:  "Aprende a integrar y usar las bases de datos en Go",
			Average:      4.8,
			Professor:    "Alejo Rodriguez",
			ProfessorImg: "https://edteam-media.s3.amazonaws.com/users/thumbnail/952327c3-2bd9-41d1-819e-9b5d7eb84c13.jpg",
			Price:        30,
		},
		{
			Slug:         "go-testing",
			Img:          "https://edteam-media.s3.amazonaws.com/courses/big/a9913502-8af2-400b-8095-7b78f52200dc.png",
			Title:        "Testing con Go",
			Name:         "Testing con Go",
			Description:  "Aprende a crear tests y medir la eficiencia de tus proyectos con Go",
			Average:      4.7,
			Professor:    "Alexys Lozada",
			ProfessorImg: "https://edteam-media.s3.amazonaws.com/users/thumbnail/66f015b2-0dfb-4ba9-bd0d-f7a7e1855275.jpeg",
			Price:        24,
		},
	}
}

func loadNarrators() []narratorData {
	return []narratorData{
		{
			Slug:        "eduardo-sacheri",
			Img:         "https://pbs.twimg.com/profile_images/1529577556118323202/cpsIFpki_400x400.jpg",
			Title:       "Eduardo Sacheri",
			Name:        "Eduardo Sacheri",
			Description: "Los mejores relatos en la voz del reconocido escritor argentino.",
			Authors: []author{
				{
					Title:       "Eduardo Sacheri",
					Description: "Textos de Eduardo Sacheri",
					Slug:        "eduardo-sacheri",
					Classes: []class{
						{
							Title:    "Pericón",
							Duration: "05:33",
							Slug:     "pericon-eduardo-sacheri",
							Video:    "/videos/pericon-eduardo-sacheri.mp4",
						},
						{
							Title:    "Pericón 2",
							Duration: "03:02",
							Slug:     "pericon-eduardo-sacheri",
							Video:    "/videos/pericon-eduardo-sacheri.mp4",
						},
					},
				},
				{
					Title:       "Ray Bradbury",
					Description: "Textos de Ray Bradbury",
					Slug:        "la-sirena-ray-bradbury",
					Classes: []class{
						{
							Title:    "La sirena",
							Duration: "05:33",
							Slug:     "la-sirena-ray-bradbury",
							Video:    "/videos/la-sirena-ray-bradbury.mp4",
						},
						{
							Title:    "La sirena 2",
							Duration: "03:02",
							Slug:     "la-sirena-ray-bradbury",
							Video:    "/videos/la-sirena-ray-bradbury.mp4",
						},
					},
				},
				{
					Title:       "Jorge Luis Borges",
					Description: "Textos de Jorge Luis Borges",
					Slug:        "la-sirena-ray-bradbury",
					Classes: []class{
						{
							Title:    "El fin",
							Duration: "05:33",
							Slug:     "el-fin-jorge-luis-borges",
							Video:    "/videos/el-fin-jorge-luis-borges.mp4",
						},
						{
							Title:    "La sirena 2",
							Duration: "03:02",
							Slug:     "la-sirena-ray-bradbury",
							Video:    "/videos/la-sirena-ray-bradbury.mp4",
						},
					},
				},
				{
					Title:       "Lucía Berlín",
					Description: "Textos de Jorge Lucía Berlín",
					Slug:        "doctor-h-a-moynihan-lucía-berlin",
					Classes: []class{
						{
							Title:    "El fin",
							Duration: "05:33",
							Slug:     "doctor-h-a-moynihan-lucía-berlin",
							Video:    "/videos/doctor-h-a-moynihan-lucía-berlin.mp4",
						},
						{
							Title:    "La sirena 2",
							Duration: "03:02",
							Slug:     "la-sirena-ray-bradbury",
							Video:    "/videos/la-sirena-ray-bradbury.mp4",
						},
					},
				},
			},
		},
		{
			Slug:        "eduardo-sacheri2",
			Img:         "https://pbs.twimg.com/profile_images/1529577556118323202/cpsIFpki_400x400.jpg",
			Title:       "Eduardo Sacheri",
			Name:        "Eduardo Sacheri2",
			Description: "Los mejores relatos en la voz del reconocido escritor argentino.",
			Authors: []author{
				{
					Title:       "Jorge Luis Borges",
					Description: "Textos de Jorge Luis Borges",
					Slug:        "pericon-eduardo-sacheri",
					Classes: []class{
						{
							Title:    "Pericón",
							Duration: "05:33",
							Slug:     "pericon-eduardo-sacheri",
							Video:    "/videos/pericon-eduardo-sacheri.mp4",
						},
						{
							Title:    "Pericón 2",
							Duration: "03:02",
							Slug:     "pericon-eduardo-sacheri",
							Video:    "/videos/pericon-eduardo-sacheri.mp4",
						},
					},
				},
				{
					Title:       "Ray Bradbury",
					Description: "Textos de Ray Bradbury",
					Slug:        "la-sirena-ray-bradbury",
					Classes: []class{
						{
							Title:    "La sirena",
							Duration: "05:33",
							Slug:     "la-sirena-ray-bradbury",
							Video:    "/videos/la-sirena-ray-bradbury.mp4",
						},
						{
							Title:    "La sirena 2",
							Duration: "03:02",
							Slug:     "la-sirena-ray-bradbury",
							Video:    "/videos/la-sirena-ray-bradbury.mp4",
						},
					},
				},
			},
		},
		{
			Slug:        "eduardo-sacheri3",
			Img:         "https://pbs.twimg.com/profile_images/1529577556118323202/cpsIFpki_400x400.jpg",
			Title:       "Eduardo Sacheri",
			Name:        "Eduardo Sacheri3",
			Description: "Los mejores relatos en la voz del reconocido escritor argentino.",
			Authors: []author{
				{
					Title:       "Jorge Luis Borges",
					Description: "Textos de Jorge Luis Borges",
					Slug:        "pericon-eduardo-sacheri",
					Classes: []class{
						{
							Title:    "Pericón",
							Duration: "05:33",
							Slug:     "pericon-eduardo-sacheri",
							Video:    "/videos/pericon-eduardo-sacheri.mp4",
						},
						{
							Title:    "Pericón 2",
							Duration: "03:02",
							Slug:     "pericon-eduardo-sacheri",
							Video:    "/videos/pericon-eduardo-sacheri.mp4",
						},
					},
				},
				{
					Title:       "Ray Bradbury",
					Description: "Textos de Ray Bradbury",
					Slug:        "la-sirena-ray-bradbury",
					Classes: []class{
						{
							Title:    "La sirena",
							Duration: "05:33",
							Slug:     "la-sirena-ray-bradbury",
							Video:    "/videos/la-sirena-ray-bradbury.mp4",
						},
						{
							Title:    "La sirena 2",
							Duration: "03:02",
							Slug:     "la-sirena-ray-bradbury",
							Video:    "/videos/la-sirena-ray-bradbury.mp4",
						},
					},
				},
			},
		},
		{
			Slug:        "eduardo-sacheri4",
			Img:         "https://pbs.twimg.com/profile_images/1529577556118323202/cpsIFpki_400x400.jpg",
			Title:       "Eduardo Sacheri",
			Name:        "Eduardo Sacheri4",
			Description: "Los mejores relatos en la voz del reconocido escritor argentino.",
			Authors: []author{
				{
					Title:       "Jorge Luis Borges",
					Description: "Textos de Jorge Luis Borges",
					Slug:        "pericon-eduardo-sacheri",
					Classes: []class{
						{
							Title:    "Pericón",
							Duration: "05:33",
							Slug:     "pericon-eduardo-sacheri",
							Video:    "/videos/pericon-eduardo-sacheri.mp4",
						},
						{
							Title:    "Pericón 2",
							Duration: "03:02",
							Slug:     "pericon-eduardo-sacheri",
							Video:    "/videos/pericon-eduardo-sacheri.mp4",
						},
					},
				},
				{
					Title:       "Ray Bradbury",
					Description: "Textos de Ray Bradbury",
					Slug:        "la-sirena-ray-bradbury",
					Classes: []class{
						{
							Title:    "La sirena",
							Duration: "05:33",
							Slug:     "la-sirena-ray-bradbury",
							Video:    "/videos/la-sirena-ray-bradbury.mp4",
						},
						{
							Title:    "La sirena 2",
							Duration: "03:02",
							Slug:     "la-sirena-ray-bradbury",
							Video:    "/videos/la-sirena-ray-bradbury.mp4",
						},
					},
				},
			},
		},
	}
}

func loadClasses() []class {
	return []class{
		{
			Title:    "Pericón",
			Duration: "05:33",
			Slug:     "pericon-eduardo-sacheri",
			Video:    "/videos/pericon-eduardo-sacheri.mp4",
		},
		{
			Title:    "Pericón 2",
			Duration: "03:02",
			Slug:     "pericon-eduardo-sacheri",
			Video:    "/videos/pericon-eduardo-sacheri.mp4",
		},
		{
			Title:    "La sirena",
			Duration: "05:33",
			Slug:     "la-sirena-ray-bradbury",
			Video:    "/videos/la-sirena-ray-bradbury.mp4",
		},
		{
			Title:    "La sirena 2",
			Duration: "03:02",
			Slug:     "la-sirena-ray-bradbury",
			Video:    "/videos/la-sirena-ray-bradbury.mp4",
		},
	}
}

func getCourse(slug string) course {
	data := loadGrid()
	for _, v := range data {
		if v.Slug == slug {
			return v
		}
	}

	return course{}
}

func getStory(slug string) story {
	data := loadStory()
	for _, s := range data {
		if s.Slug == slug {
			return s
		}
	}

	return story{}
}

func getNarrators(slug string) narratorData {
	data := loadNarrators()
	for _, n := range data {
		if n.Slug == slug {
			return n
		}
	}

	return narratorData{}
}

func getAuthors(slug string) []author {
	data := loadNarrators()
	for _, a := range data {
		if a.Slug == slug {
			return a.Authors
		}
	}

	return []author{}
}

func getStoryVideo(slug string) class {
	data := loadClasses()
	for _, c := range data {
		if c.Slug == slug {
			return c
		}
	}

	return class{}
}
