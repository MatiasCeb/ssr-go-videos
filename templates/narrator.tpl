{{ define "narrator" }}

  {{ template "navigation" }}



  <!-- Temario -->
  <div class="ed-grid">
    <section class="l-section">
      <div class="ed-grid m-grid-2 s-mb-2 s-px-2 lg-px-0">
        <h2 class="s-mb-1 m-mb-0">Narraciones de {{ .Narrator.Name }}</h2>
        <div class="search-input form__item "><input type="search" name="search"
            placeholder="¿Buscas algo en específico?"></div>
      </div>
      <div class="temary landing s-bg-white s-radius-1">
        <div class="ed-grid card-template row-gap s-gap-0 s-overflow-hidden">

        {{ range $i, $author := .Narrator.Authors }}

          <article class="article s-mb-0 s-border-bottom">
            <div class="s-pt-2 m-pt-3 s-px-2 s-px-3 s-pb-2 s-cursor-pointer">
              <div class="s-cross-center nowrap">
                <h3 class="course-class__temary-title s-mb-05 s-mr-1">{{ $author.Title }}</h3>
              </div>
              <p class="small color grey-500 s-mb-0">{{ $author.Description }}</p>
            </div>
            <ul class="s-mb-0 ed-grid row-gap s-gap-1 s-overflow-hidden s-transition s-px-2 m-px-3 s-pb-2">

            {{ range $j, $class := $author.Classes }}

              <li class="fragment flex nowrap s-pxy-1 s-radius s-transition s-cursor-pointer s-relative false">
                <div class="flex nowrap s-cross-baseline">
                  <svg xmlns="http://www.w3.org/2000/svg" width="16" height="16" viewBox="0 0 15 15" class="svg-icon flex-none s-mr-1 fill 
                           red-400">
                    <path fill-rule="evenodd" clip-rule="evenodd"
                      d="M7.5 14.4951C11.366 14.4951 14.5 11.3611 14.5 7.49512C14.5 3.62912 11.366 0.495117 7.5 0.495117C3.63401 0.495117 0.5 3.62912 0.5 7.49512C0.5 11.3611 3.63401 14.4951 7.5 14.4951ZM7.50002 13.5142C10.8243 13.5142 13.5191 10.8194 13.5191 7.49511C13.5191 4.17084 10.8243 1.47598 7.50002 1.47598C4.17575 1.47598 1.4809 4.17084 1.4809 7.49511C1.4809 10.8194 4.17575 13.5142 7.50002 13.5142Z">
                    </path>
                    <rect x="5.42188" y="4.58569" width="0.875" height="6.125" rx="0.4375"></rect>
                    <rect x="5.3125" y="5.19043" width="0.875" height="6.125" rx="0.4375"
                      transform="rotate(-60 5.3125 5.19043)"></rect>
                    <rect width="0.875" height="6.125" rx="0.4375"
                      transform="matrix(0.5 0.866025 0.866025 -0.5 5.3125 10.1201)"></rect>
                  </svg>
                  <a href="/story/{{ $class.Slug }}" class="s-mb-0 color text-color s-mr-2">{{ $class.Title }}</p>
                  </a>
                </div>
                <time class="s-to-right color text-color">{{ $class.Duration }}</time>
              </li>
            
            {{ end }}

            </ul>
          </article>

          {{ end }}

        </div>
      </div>
  </div>
  </section>
  </div>

{{ end }}