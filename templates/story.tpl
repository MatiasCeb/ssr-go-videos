{{ define "story" }}

  {{ template "navigation" }}

  <div class="s-bg-grey-800 lg-py-4 l-section">
    <div class="full-w ed-grid lg-grid-7 lg-py-2 s-relative z-normal">
      <div class="course-banner-cover lg-order-2 lg-cols-4 s-ratio-16-9 s-overflow-hidden false">
        <div class="img-container lg-radius-1 s-ratio-16-9 background black-400">
          <video controls width="672">
            <source src={{ .Class.Video }} type="video/mp4" />
            Download the
            <a href="/media/cc0-videos/flower.webm">WEBM</a>
            or
            <a href="/videos/{{ .Class.Video }}">MP4</a>
            video.
          </video>
        </div>
      </div>
      <div class="s-py-3 s-px-2 lg-cols-3 lg-pxy-0">
        <nav class="breadcrumbs ed-grid blue-400 s-mb-05">
          <i class="breadcrumbs__line smaller">
            <a class="color" href="/">
              <svg xmlns="http://www.w3.org/2000/svg" viewBox="0 0 20 16.103" class="svg-icon s-mr-05">
                <path
                  d="M19.945,53.621,18.1,50.152a.468.468,0,0,0-.29-.232h0l-7.671-2.071a.469.469,0,0,0-.244,0l-7.71,2.071h0a.468.468,0,0,0-.29.232L.055,53.621a.468.468,0,0,0,.214.643l1.6.757V59.76a.468.468,0,0,0,.265.422l7.681,3.707a.465.465,0,0,0,.4,0h0L17.9,60.182a.468.468,0,0,0,.265-.422V55.022c0-.006,0-.012,0-.018l1.564-.74a.468.468,0,0,0,.214-.643Zm-9.926-4.835,6.134,1.656L10,52.722,3.85,50.442ZM2.531,50.953,9.37,53.487,7.864,56.818,1.112,53.627Zm.276,8.513v-4l5.087,2.4a.468.468,0,0,0,.627-.23l1.03-2.277v7.359Zm14.424,0-6.744,3.255V55.447l.991,2.192a.468.468,0,0,0,.627.23l5.126-2.423Zm-5.1-2.648L10.63,53.487l6.839-2.535,1.419,2.674Z"
                  transform="translate(0 -47.832)"></path>
              </svg>
              Narrador
            </a>
            <span class="s-px-1 color">&gt;</span>
            <a class="color" href="/">{{ .Class.Narrator }}</a>
          </i>
        </nav>
        <h1 class="s-mb-1 s-cross-start s-nowrap">
          <span class="color white-color s-mr-1">
          <span class="hidden">Relato: </span>{{ .Class.Title }}</span>
        </h1>
        <p class="color grey-500">{{ .Class.Duration }}</p>
      </div>
    </div>
  </div>

{{ end }}