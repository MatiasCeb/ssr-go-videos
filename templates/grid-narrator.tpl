{{ define "grid-narrator" }}

  {{ template "navigation" }}
  <div class="ed-grid m-grid-2 lg-grid-4 row-gap">

  {{ range $i, $narrator := .Narrator }}
    <article
      class="course-card s-radius-1 s-shadow-bottom background s-shadow-card-micro s-transition white-color nowrap s-column s-mb-0">
      <div class="s-column flex-grow ">
        <div class="img-container s-ratio-16-9 s-radius-tl-1 s-radius-tr-1">
          <a href="/narrator/{{ $narrator.Slug }}">
            <img class="img-course-card s-transition" alt="{{ $narrator.Title }}"
              src="{{ $narrator.Img }}">
          </a>
        </div>
        <div title="{{ $narrator.Title }}" class="course-progress s-mt-05"></div>
        <div class="s-pxy-2 s-column flex-grow">
          <a href="/narrator/{{ $narrator.Slug }}">
            <h3 class="s-mb-1 t4">
              <span class="s-color-grey-700">{{ $narrator.Name }}</span>
            </h3>
          </a>
          <p class="description small s-row-text-3 s-mb-2"
            title="{{ $narrator.Description }}">
                {{ $narrator.Description }}
          </p>
        </div>
      </div>
    </article>
  
    {{ end }}
 
  </div>

{{ end }}