{{ define "grid" }}

  {{ template "navigation" }}
  <div class="ed-grid m-grid-2 lg-grid-4 row-gap">

  {{ range $i, $story := .Story }}
    <article
      class="course-card s-radius-1 s-shadow-bottom background s-shadow-card-micro s-transition white-color nowrap s-column s-mb-0">
      <div class="s-column flex-grow ">
        <div class="img-container s-ratio-16-9 s-radius-tl-1 s-radius-tr-1">
          <a href="/narrator/{{ $story.Slug }}">
            <img class="img-course-card s-transition" alt="{{ $story.Title }}"
              src="{{ $story.Img }}">
          </a>
        </div>
        <div title="{{ $story.Title }}" class="course-progress s-mt-05"></div>
        <div class="s-pxy-2 s-column flex-grow">
          <a href="/narrator/{{ $story.Slug }}">
            <h3 class="s-mb-1 t4">
              <span class="s-color-grey-700">{{ $story.Name }}</span>
            </h3>
          </a>
          <p class="description small s-row-text-3 s-mb-2"
            title="{{ $story.Description }}">
                {{ $story.Description }}
          </p>
        </div>
      </div>
    </article>
  
    {{ end }}
 
  </div>

{{ end }}