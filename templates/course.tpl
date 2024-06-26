{{ define "course" }}

  {{ template "navigation" }}

  <div class="s-bg-grey-800 lg-py-4 l-section">
    <div class="full-w ed-grid lg-grid-7 lg-py-2 s-relative z-normal">
      <div class="course-banner-cover lg-order-2 lg-cols-4 s-ratio-16-9 s-overflow-hidden false">
        <div class="img-container lg-radius-1 s-ratio-16-9 background black-400">
          <img
            src="{{ .Course.Img }}"
            alt="{{ .Course.Name }}" class="lg-radius-1 color white-color s-transition" loading="auto">
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
              Cursos
            </a>
            <span class="s-px-1 color">&gt;</span>
            <a class="color" href="{{ .Course.Slug }}">{{ .Course.Title }}</a>
          </i>
        </nav>
        <h1 class="s-mb-1 s-cross-start s-nowrap">
          <span class="color white-color s-mr-1">
          <span class="hidden">Curso: </span>{{ .Course.Name }}</span>
        </h1>
        <p class="color grey-500">{{ .Course.Description }}</p>
        <div class="ed-grid row-gap s-gap-1 full s-mb-3">
          <div class="small flex">
            <div class="grey-400 s-mr-05 s-cross-start nowrap">
              <svg xmlns="http://www.w3.org/2000/svg" viewBox="0 0 512 512"
                class="svg-icon fill normal yellow-400 s-mr-1">
                <path
                  d="M496.986,481.993h-44.999V151.002h44.999c13.303,0,20.017-16.117,10.65-25.562L387.639,4.443 c-5.865-5.914-15.435-5.914-21.3,0L246.342,125.44c-9.368,9.446-2.652,25.562,10.65,25.562h44.999V241H194.995 c-8.284,0-15,6.716-15,15v74.998H74.998c-8.284,0-15,6.716-15,15v135.996H15c-8.284,0-15,6.716-15,15c0,8.284,6.716,15,15,15 h481.987c8.284,0,15-6.716,15-15C511.986,488.709,505.27,481.993,496.986,481.993z M179.995,481.993H89.998V360.996h89.997 V481.993z M301.992,481.993h-91.997V270.999h91.997V481.993z M421.988,136.002v345.991h-89.997V136.002c0-8.284-6.716-15-15-15 h-23.997l83.996-84.696l83.996,84.696h-23.997C428.704,121.003,421.988,127.719,421.988,136.002z">
                </path>
              </svg>
              <span class="color s-whitespace-nowrap">Nivel: básico</span>
            </div>
          </div>
          <div class="small flex">
            <div class="grey-400 s-mr-05 s-cross-start nowrap">
              <svg xmlns="http://www.w3.org/2000/svg" viewBox="0 0 30 31"
                class="svg-icon fill normal yellow-400 s-mr-1">
                <rect x="7" y="0.5" width="2" height="7.5" rx="1"></rect>
                <rect x="14" y="0.5" width="2" height="7.5" rx="1"></rect>
                <rect x="21" y="0.5" width="2" height="7.5" rx="1"></rect>
                <rect x="7" y="12" width="2" height="2" rx="1"></rect>
                <rect x="21" y="12" width="2" height="2" rx="1"></rect>
                <rect x="14" y="12" width="2" height="2" rx="1"></rect>
                <rect x="7" y="17" width="2" height="2" rx="1"></rect>
                <rect x="21" y="17" width="2" height="2" rx="1"></rect>
                <rect x="14" y="17" width="2" height="2" rx="1"></rect>
                <rect x="7" y="22" width="2" height="2" rx="1"></rect>
                <rect x="21" y="22" width="2" height="2" rx="1"></rect>
                <rect x="14" y="22" width="2" height="2" rx="1"></rect>
                <rect x="0.5" y="3.5" width="2" height="27" rx="1"></rect>
                <rect x="27.5" y="3.5" width="2" height="27" rx="1"></rect>
                <rect x="29.5" y="28.5" width="2" height="29" rx="1" transform="rotate(90 29.5 28.5)"></rect>
                <rect x="29.5" y="3.5" width="2" height="29" rx="1" transform="rotate(90 29.5 3.5)"></rect>
              </svg>
              <span class="color s-whitespace-nowrap">Fecha de lanzamiento: 26 de jul.</span>
            </div>
          </div>
          <div class="small flex">
            <div class="grey-400 s-mr-05 s-cross-start nowrap">
              <svg xmlns="http://www.w3.org/2000/svg" viewBox="0 0 512.009 512.009"
                class="svg-icon fill normal yellow-400 s-mr-1">
                <path
                  d="M272.392,249.22l-0.009-132.207c0-9.052-7.339-16.383-16.383-16.383s-16.383,7.331-16.383,16.383L239.626,256c0,4.349,1.731,8.511,4.801,11.59l85.765,85.765c3.204,3.195,7.393,4.792,11.59,4.792c4.189,0,8.378-1.589,11.573-4.792c6.399-6.399,6.399-16.764,0-23.172L272.392,249.22z">
                </path>
                <path
                  d="M512.009,256.009c0-0.079-0.011-0.155-0.012-0.234C511.87,114.712,397.083,0.009,256,0.009c-141.161,0-256,114.839-256,256S114.839,512,256,512c141.083,0,255.87-114.695,255.997-255.757C511.998,256.164,512.009,256.088,512.009,256.009z M272.383,478.64v-25.471c0-9.052-7.339-16.383-16.383-16.383s-16.383,7.331-16.383,16.383v25.471c-110.061-8.023-198.227-96.196-206.248-206.257h25.471c9.052,0,16.383-7.322,16.383-16.374c0-9.052-7.331-16.383-16.383-16.383H33.368c8.018-110.065,96.185-198.235,206.249-206.257v25.471c0,9.043,7.339,16.383,16.383,16.383c9.052,0,16.383-7.339,16.383-16.383V33.369c110.068,8.022,198.227,96.195,206.249,206.257h-25.462c-9.052,0-16.392,7.322-16.392,16.374c0,9.052,7.339,16.383,16.392,16.383h25.462C470.615,382.448,382.454,470.619,272.383,478.64z">
                </path>
              </svg>
              <span class="color s-whitespace-nowrap">Duración: +10 horas</span>
            </div>
            <a href="#">(Ver temario)</a>
          </div>
          <div class="small flex">
            <div class="grey-400 s-mr-05 s-cross-start nowrap">
              <svg xmlns="http://www.w3.org/2000/svg" viewBox="0 0 32 32"
                class="svg-icon fill normal yellow-400 s-mr-1">
                <path
                  d="M31.2205 14.7937C31.5658 14.4417 31.8098 13.996 31.9251 13.5071C32.0404 13.0182 32.0223 12.5054 31.8729 12.0266C31.7235 11.5478 31.4487 11.1221 31.0796 10.7974C30.7104 10.4728 30.2616 10.2621 29.7837 10.1893L22.2008 9.03814C22.097 9.02234 21.9986 8.98049 21.9138 8.91619C21.829 8.8519 21.7606 8.76709 21.7142 8.66907L18.3244 1.50556C18.1104 1.05362 17.7793 0.673115 17.3687 0.407057C16.9581 0.140999 16.4843 0 16.0008 0C15.5173 0 15.0435 0.140999 14.6329 0.407057C14.2222 0.673115 13.8912 1.05362 13.6772 1.50556L10.2867 8.66907C10.2401 8.76701 10.1715 8.8517 10.0866 8.91586C10.0017 8.98003 9.90319 9.02174 9.79944 9.03742L2.21648 10.1885C1.73852 10.2613 1.28959 10.4719 0.920362 10.7965C0.551137 11.1212 0.27633 11.547 0.126968 12.0259C-0.0223928 12.5047 -0.0403595 13.0176 0.0750971 13.5066C0.190554 13.9955 0.434835 14.4411 0.78036 14.793L6.26675 20.3679C6.34208 20.4442 6.39847 20.5384 6.43106 20.6424C6.46364 20.7465 6.47144 20.8572 6.45377 20.9651L5.15843 28.8387C5.07513 29.3359 5.1273 29.8474 5.30902 30.3152C5.49074 30.783 5.79472 31.1883 6.18639 31.4849C6.57806 31.7816 7.04171 31.9577 7.52463 31.9933C8.00755 32.0289 8.49036 31.9225 8.91816 31.6862L15.6992 27.9689C15.7921 27.918 15.8955 27.8914 16.0004 27.8914C16.1054 27.8914 16.2088 27.918 16.3017 27.9689L23.0834 31.6862C23.4559 31.8905 23.8703 31.9976 24.2911 31.9985C24.6684 31.9977 25.0409 31.9111 25.3828 31.7449C25.7247 31.5787 26.0277 31.3368 26.2708 31.036C26.5139 30.7352 26.6911 30.3828 26.7902 30.0033C26.8893 29.6238 26.9078 29.2264 26.8445 28.8387L25.5471 20.9665C25.5294 20.8586 25.5372 20.7479 25.5698 20.6439C25.6024 20.5398 25.6588 20.4456 25.7341 20.3694L31.2205 14.7937ZM7.07487 29.1826L8.37021 21.3104C8.44098 20.879 8.41011 20.4361 8.28028 20.0199C8.15044 19.6037 7.92553 19.2266 7.62489 18.9211L2.13574 13.3419C2.04925 13.254 1.98805 13.1427 1.95906 13.0205C1.93008 12.8983 1.93447 12.77 1.97173 12.6503C2.00899 12.5305 2.07764 12.424 2.16991 12.3428C2.26219 12.2616 2.37442 12.2089 2.49391 12.1907L10.0762 11.0396C10.4917 10.9778 10.8866 10.8116 11.2268 10.5553C11.5671 10.299 11.8424 9.96027 12.0292 9.56837L15.4204 2.40199C15.4739 2.28931 15.5566 2.19448 15.6591 2.12817C15.7616 2.06187 15.8798 2.02674 16.0004 2.02674C16.1211 2.02674 16.2393 2.06187 16.3418 2.12817C16.4443 2.19448 16.5269 2.28931 16.5805 2.40199L19.971 9.56837C20.157 9.96066 20.4317 10.2999 20.7715 10.5568C21.1112 10.8138 21.5058 10.9807 21.9213 11.0432L29.5042 12.1943C29.6236 12.2127 29.7357 12.2654 29.8279 12.3466C29.9201 12.4278 29.9888 12.5342 30.0261 12.6539C30.0634 12.7735 30.0679 12.9017 30.0391 13.0239C30.0103 13.1461 29.9493 13.2574 29.8631 13.3455L24.376 18.9211C24.0752 19.2269 23.8502 19.6044 23.7205 20.021C23.5907 20.4376 23.5602 20.8809 23.6314 21.3126V21.3126L24.9267 29.1847C24.9472 29.3087 24.9341 29.4362 24.8887 29.5528C24.8433 29.6694 24.7676 29.7705 24.67 29.8445C24.5724 29.9185 24.4569 29.9626 24.3365 29.9718C24.2161 29.9809 24.0957 29.9548 23.9888 29.8963L17.2057 26.1782C16.834 25.9743 16.4202 25.8677 16.0001 25.8677C15.58 25.8677 15.1662 25.9743 14.7945 26.1782L8.01481 29.8948C7.90792 29.9536 7.78739 29.98 7.66687 29.971C7.54634 29.962 7.43063 29.9181 7.33282 29.8441C7.23501 29.7702 7.15902 29.6691 7.11343 29.5525C7.06784 29.4358 7.05449 29.3082 7.07487 29.184V29.1826Z">
                </path>
              </svg>
              <span class="color s-whitespace-nowrap">Calificación: {{ .Course.Average }}</span>
            </div>
            <a href="#">(Ver 7 opiniones)</a>
          </div>
          <div class="small flex">
            <div class="grey-400 s-mr-05 s-cross-start nowrap">
              <svg xmlns="http://www.w3.org/2000/svg" viewBox="0 0 32 32"
                class="svg-icon fill normal yellow-400 s-mr-1">
                <rect x="32" y="30.1813" width="2" height="32" rx="1" transform="rotate(90 32 30.1813)"></rect>
                <rect x="2" y="32.1813" width="2" height="7" rx="1" transform="rotate(-180 2 32.1813)"></rect>
                <rect x="8" y="31.1813" width="2" height="10" rx="1" transform="rotate(-180 8 31.1813)"></rect>
                <rect x="14" y="31.1813" width="2" height="15" rx="1" transform="rotate(-180 14 31.1813)"></rect>
                <rect x="20" y="31.1813" width="2" height="20" rx="1" transform="rotate(-180 20 31.1813)"></rect>
                <rect x="24" y="13.1813" width="2" height="13" rx="1" transform="rotate(-180 24 13.1813)"></rect>
                <rect x="22" y="2.18129" width="2" height="10" rx="1" transform="rotate(-90 22 2.18129)"></rect>
                <rect x="22" y="8.18129" width="2" height="10" rx="1" transform="rotate(-90 22 8.18129)"></rect>
                <rect x="26.7205" y="4.31604" width="2" height="6.05466" rx="1" transform="rotate(-45 26.7205 4.31604)">
                </rect>
                <rect width="2" height="6.05466" rx="1"
                  transform="matrix(0.707107 0.707107 0.707107 -0.707107 26.7205 4.2813)"></rect>
                <rect x="32" y="32.1813" width="2" height="21" rx="1" transform="rotate(-180 32 32.1813)"></rect>
                <rect y="27.1813" width="2" height="8" rx="1" transform="rotate(-90 0 27.1813)"></rect>
                <rect x="6" y="23.1813" width="2" height="8" rx="1" transform="rotate(-90 6 23.1813)"></rect>
                <rect x="12" y="18.1813" width="2" height="8" rx="1" transform="rotate(-90 12 18.1813)"></rect>
                <rect x="18" y="13.1813" width="2" height="14" rx="1" transform="rotate(-90 18 13.1813)"></rect>
              </svg>
              <span class="color s-whitespace-nowrap">Ruta de aprendizaje:</span>
            </div>
            <div class="s-column"><a href="#">Desarrollo con Go</a></div>
          </div>
        </div>
        <div>
          <div class="s-mb-1 s-cross-center">
            <a target="" class="s-cursor-pointer button small banner-course-button blue-500 s-mr-1 s-weight-semibold">
              <span class="s-cross-center s-main-center nowrap">
                <svg xmlns="http://www.w3.org/2000/svg" viewBox="0 0 32 32" class="svg-icon s-mr-05 ">
                  <path fill-rule="evenodd" clip-rule="evenodd"
                    d="M16 32C24.8366 32 32 24.8366 32 16C32 7.16344 24.8366 0 16 0C7.16344 0 0 7.16344 0 16C0 24.8366 7.16344 32 16 32ZM16 29.758C23.5984 29.758 29.758 23.5983 29.758 16C29.758 8.40165 23.5984 2.24198 16 2.24198C8.40171 2.24198 2.24205 8.40165 2.24205 16C2.24205 23.5983 8.40171 29.758 16 29.758Z">
                  </path>
                  <path
                    d="M10.8728 24.3391C10.7539 24.3589 10.6326 24.3589 10.5137 24.3391C10.3185 24.2985 10.134 24.217 9.97246 24.1001C9.81088 23.9832 9.6758 23.8335 9.57607 23.6608C9.37874 23.3386 9.31435 22.9523 9.39652 22.5835L10.5337 17.8354L6.74315 14.6234C6.5926 14.4975 6.46904 14.3425 6.37991 14.1677C6.29077 13.9928 6.23789 13.8018 6.22445 13.606C6.20525 13.4128 6.22541 13.2178 6.2837 13.0326C6.34199 12.8474 6.43721 12.676 6.5636 12.5287C6.6942 12.3655 6.85753 12.2315 7.04308 12.1353C7.22863 12.039 7.43228 11.9828 7.64091 11.9701L12.6484 11.5511L14.6434 7.06234C14.7251 6.88218 14.8417 6.72 14.9865 6.5852C15.1313 6.45039 15.3014 6.34564 15.4869 6.27699C15.6724 6.20835 15.8697 6.17717 16.0674 6.18527C16.265 6.19337 16.4591 6.24059 16.6384 6.32419C16.9648 6.46412 17.2277 6.71998 17.3766 7.04239L19.3716 11.5312L24.419 11.9701C24.6066 11.9756 24.7909 12.0211 24.9595 12.1037C25.1281 12.1863 25.2771 12.304 25.3965 12.4489C25.5326 12.592 25.6381 12.7613 25.7067 12.9465C25.7753 13.1317 25.8055 13.3289 25.7955 13.5262C25.7838 13.7301 25.7298 13.9294 25.6371 14.1114C25.5444 14.2934 25.4149 14.4541 25.2569 14.5835L21.4464 17.7955L22.5835 22.5037C22.6276 22.699 22.6326 22.901 22.5982 23.0981C22.5638 23.2953 22.4907 23.4837 22.3831 23.6525C22.2756 23.8213 22.1356 23.9671 21.9714 24.0815C21.8072 24.1959 21.622 24.2767 21.4264 24.3192C21.0486 24.3945 20.6563 24.3232 20.3292 24.1197L15.9601 21.6259L11.6309 24.1397C11.4025 24.2772 11.1394 24.3464 10.8728 24.3391ZM15.9601 19.1721L20.1496 21.586L19.0723 17.0175L22.7033 13.9651L17.9551 13.606L15.9601 9.23691L13.9651 13.606L9.29677 13.9651L12.9077 17.0175L11.8105 21.586L15.9601 19.1721Z">
                  </path>
                </svg>
                <span class="">Sube a premium desde <span class="s-mr-05">$</span><span
                    class="s-mr-05">30</span><span>USD</span></span>
              </span>
            </a>
            <div class="grey-color s-pt-2 m-pt-0">
              <div class="flex false">
                <a class="network-btn" title="Compartir en facebook" rel="noopener noreferrer"
                  href="https://www.facebook.com/sharer/sharer.php?u=https://ed.team/cursos/flutter" target="_blank">
                  <svg xmlns="http://www.w3.org/2000/svg" viewBox="0 0 16 16"
                    class="svg-icon fill normal s-mr-1 facebook">
                    <g clip-path="url(#clip0)">
                      <path fill-rule="evenodd" clip-rule="evenodd"
                        d="M16.0656 8.04889C16.0656 3.60361 12.4692 0 8.03279 0C3.5964 0 0 3.60361 0 8.04889C0 12.0663 2.93747 15.3962 6.77766 16V10.3755H4.73809V8.04889H6.77766V6.27562C6.77766 4.25837 7.9769 3.1441 9.81177 3.1441C10.6906 3.1441 11.6099 3.3013 11.6099 3.3013V5.28208H10.597C9.5991 5.28208 9.28791 5.90252 9.28791 6.53905V8.04889H11.5158L11.1596 10.3755H9.28791V16C13.1281 15.3962 16.0656 12.0663 16.0656 8.04889Z">
                      </path>
                    </g>
                    <defs>
                      <clipPath id="clip0">
                        <rect width="16" height="16" fill="white"></rect>
                      </clipPath>
                    </defs>
                  </svg>
                </a>
                <a class="network-btn" title="Compartir en twitter" rel="noopener noreferrer"
                  href="https://twitter.com/intent/tweet?text=Cursos%20de%20programación%20diseño%20y%20emprendimiento%20por%20@EDteamlat%20en%20twitter%20&amp;url=https://ed.team/cursos/flutter"
                  target="_blank">
                  <svg xmlns="http://www.w3.org/2000/svg" viewBox="0 0 16 16"
                    class="svg-icon fill normal s-mr-1 twitter">
                    <g clip-path="url(#clip0)">
                      <path
                        d="M16 3.03942C15.4111 3.30037 14.7793 3.47733 14.1154 3.55634C14.7933 3.1504 15.3122 2.50653 15.5581 1.74167C14.9222 2.11759 14.2204 2.39056 13.4725 2.53853C12.8736 1.89966 12.0218 1.50172 11.0769 1.50172C9.26427 1.50172 7.79455 2.97145 7.79455 4.78311C7.79455 5.04005 7.82354 5.29101 7.87954 5.53098C5.15206 5.39399 2.73353 4.08724 1.11483 2.10159C0.831878 2.58552 0.670911 3.14938 0.670911 3.75129C0.670911 4.89009 1.25081 5.8949 2.13065 6.48277C1.59274 6.46478 1.08683 6.31681 0.64393 6.07085V6.11184C0.64393 7.70154 1.77572 9.02829 3.27643 9.33025C3.00147 9.40424 2.71154 9.44523 2.41159 9.44523C2.19964 9.44523 1.99468 9.42424 1.79371 9.38424C2.21162 10.689 3.42341 11.6378 4.85915 11.6638C3.73635 12.5437 2.32061 13.0666 0.782911 13.0666C0.51797 13.0666 0.257002 13.0506 6.10352e-05 13.0216C1.45279 13.9544 3.17747 14.4983 5.03112 14.4983C11.069 14.4983 14.3694 9.49723 14.3694 5.16005L14.3584 4.73514C15.0032 4.27519 15.5611 3.69731 16 3.03942Z">
                      </path>
                    </g>
                    <defs>
                      <clipPath id="clip0">
                        <rect width="16" height="16"></rect>
                      </clipPath>
                    </defs>
                  </svg>
                </a>
                <a class="network-btn" title="Compartir en linkedin" rel="noopener noreferrer"
                  href="https://www.linkedin.com/sharing/share-offsite/?url=https://ed.team/cursos/flutter"
                  target="_blank">
                  <svg xmlns="http://www.w3.org/2000/svg" viewBox="0 0 16 16"
                    class="svg-icon fill normal s-mr-1 linkedin">
                    <path
                      d="M14.5527 0H1.44733C0.648 0 0 0.648 0 1.44733V14.5526C0 15.352 0.648 16 1.44733 16H14.5526C15.352 16 16 15.352 16 14.5526V1.44733C16 0.648 15.352 0 14.5527 0ZM4.95108 13.8155C4.95108 14.0481 4.76251 14.2366 4.52988 14.2366H2.73696C2.50434 14.2366 2.31577 14.0481 2.31577 13.8155V6.2996C2.31577 6.06697 2.50434 5.87841 2.73696 5.87841H4.52988C4.76251 5.87841 4.95108 6.06697 4.95108 6.2996V13.8155ZM3.63342 5.16993C2.69273 5.16993 1.93014 4.40733 1.93014 3.46664C1.93014 2.52595 2.69273 1.76335 3.63342 1.76335C4.57412 1.76335 5.33671 2.52595 5.33671 3.46664C5.33671 4.40733 4.57416 5.16993 3.63342 5.16993ZM14.3208 13.8494C14.3208 14.0632 14.1474 14.2366 13.9336 14.2366H12.0096C11.7958 14.2366 11.6224 14.0632 11.6224 13.8494V10.324C11.6224 9.79811 11.7766 8.01948 10.248 8.01948C9.06228 8.01948 8.82178 9.2369 8.77349 9.78325V13.8494C8.77349 14.0632 8.60013 14.2366 8.38622 14.2366H6.52545C6.31158 14.2366 6.13818 14.0632 6.13818 13.8494V6.26568C6.13818 6.05181 6.31158 5.87841 6.52545 5.87841H8.38622C8.60008 5.87841 8.77349 6.05181 8.77349 6.26568V6.92138C9.21315 6.26157 9.86655 5.75229 11.2578 5.75229C14.3385 5.75229 14.3208 8.63045 14.3208 10.2119V13.8494Z">
                    </path>
                  </svg>
                </a>
                <a class="network-btn" title="Compartir en whatsapp" rel="noopener noreferrer"
                  href="https://api.whatsapp.com/send?text=Cursos%20de%20programación%20diseño%20y%20emprendimiento%20por%20EDteam%20en%20Whatsapp%20https://ed.team/cursos/flutter"
                  target="_blank">
                  <svg xmlns="http://www.w3.org/2000/svg" viewBox="0 0 14 14"
                    class="svg-icon fill normal s-mr-1 whatsapp">
                    <path
                      d="M12.036,1.964A6.707,6.707,0,0,0,1.42,9.944L0,14l4.056-1.42a6.707,6.707,0,0,0,7.98-10.616ZM10.609,9.2l-.774.774c-.641.641-2.461-.139-4.065-1.742S3.387,4.807,4.028,4.165L4.8,3.391a.411.411,0,0,1,.581,0l.968.968a.411.411,0,0,1,0,.581L5.77,5.52A5.7,5.7,0,0,0,8.48,8.23l.581-.581a.411.411,0,0,1,.581,0l.968.968A.411.411,0,0,1,10.609,9.2Z">
                    </path>
                  </svg>
                </a>
                <input type="text" readonly="" class="jsx-1046511311 input-clipboard"
                  value="https://ed.team/cursos/flutter">
                <a href="#" title="Copiar enlace al portapapeles" class="jsx-1046511311 network-btn">
                  <svg xmlns="http://www.w3.org/2000/svg" viewBox="0 0 699.428 699.428"
                    class="svg-icon fill clipboard normal s-mr-1">
                    <g>
                      <path
                        d="M502.714,0.678C500.004,0.678,240.428,0,240.428,0C194.178,0,153,42.425,153,87.429l-25.267,0.59c-46.228,0-84.019,41.834-84.019,86.838V612c0,45.004,41.179,87.428,87.429,87.428H459c46.249,0,87.428-42.424,87.428-87.428h21.857c46.25,0,87.429-42.424,87.429-87.428v-349.19L502.714,0.678z M459,655.715H131.143c-22.95,0-43.714-21.441-43.714-43.715V174.857c0-32.523,26.753-43.714,65.571-43.714v393.429C153,569.576,194.178,612,240.428,612c0,0,236.975-0.24,262.482-0.24C502.91,638.295,485.513,655.715,459,655.715z M502.714,459.24H306c-12.065,0-21.857-9.77-21.857-21.836c0-12.064,9.792-21.834,21.857-21.834h196.714c12.065,0,21.857,9.77,21.857,21.834C524.571,449.471,514.779,459.24,502.714,459.24z M502.714,350.064H306c-12.065,0-21.857-9.771-21.857-21.835c0-12.065,9.792-21.835,21.857-21.835h196.714c12.065,0,21.857,9.77,21.857,21.835C524.571,340.272,514.779,350.064,502.714,350.064z M546.428,174.857c-23.277,0-43.714-21.004-43.714-43.714c0,0,0-44.283,0-86.751v-0.044L612,174.857H546.428z">
                      </path>
                    </g>
                  </svg>
                </a>
              </div>
            </div>
          </div>
          <p class="smaller s-mb-2 color grey-500">* Accede a este y a todos los cursos, talleres y especialidades</p>
          <div class="s-main-start s-cross-center">
            <a target="" class="s-cursor-pointer  small color yellow-400 s-mr-2">
              <span class="s-cross-center s-main-center nowrap">
                <svg xmlns="http://www.w3.org/2000/svg" viewBox="0 0 32 32" class="svg-icon s-mr-05 s-mr-1">
                  <g>
                    <path
                      d="M24.0003 26.6177C23.9997 27.1872 24.1966 27.7394 24.5575 28.18C24.9183 28.6207 25.4209 28.9225 25.9794 29.0342C26.5379 29.1458 27.1178 29.0604 27.6204 28.7923C28.123 28.5243 28.5171 28.0903 28.7355 27.5642C28.9539 27.0382 28.9832 26.4527 28.8183 25.9076C28.6534 25.3624 28.3046 24.8913 27.8313 24.5745C27.3579 24.2577 26.7894 24.1148 26.2225 24.1702C25.6556 24.2256 25.1255 24.4758 24.7225 24.8783C24.4897 25.1035 24.3056 25.374 24.1813 25.6732C24.0571 25.9723 23.9955 26.2938 24.0003 26.6177Z">
                    </path>
                    <rect x="7" y="2" width="2" height="7" rx="1" transform="rotate(90 7 2)"></rect>
                    <rect x="11.0105" y="21.7759" width="2" height="20.1162" rx="1"
                      transform="rotate(167.811 11.0105 21.7759)"></rect>
                    <rect x="8.93015" y="24.5331" width="2" height="4.07966" rx="1"
                      transform="rotate(-150 8.93015 24.5331)"></rect>
                    <rect x="8" y="24" width="2" height="21" rx="1" transform="rotate(-90 8 24)"></rect>
                    <rect x="32" y="4" width="2" height="26" rx="1" transform="rotate(90 32 4)"></rect>
                    <rect x="32" y="17" width="2" height="13" rx="1" transform="rotate(-180 32 17)"></rect>
                    <rect x="31.84" y="15" width="2" height="23.8096" rx="1" transform="rotate(83.3797 31.84 15)">
                    </rect>
                    <path
                      d="M7.3851 26.6173C7.38504 27.187 7.5825 27.739 7.94385 28.1793C8.3052 28.6196 8.80806 28.921 9.36673 29.0321C9.9254 29.1431 10.5053 29.0571 11.0076 28.7885C11.5099 28.5199 11.9035 28.0854 12.1214 27.5591C12.3392 27.0328 12.3679 26.4472 12.2023 25.9022C12.0368 25.3572 11.6874 24.8864 11.2136 24.5702C10.7399 24.2539 10.1711 24.1117 9.6043 24.1678C9.03746 24.2239 8.50763 24.4749 8.10509 24.8779C7.87264 25.1033 7.68883 25.3739 7.56499 25.6731C7.44116 25.9722 7.37994 26.2936 7.3851 26.6173V26.6173Z">
                    </path>
                  </g>
                </svg>
                <span class="">Compra este curso por <span>$</span>&nbsp;<span>{{ .Course.Price }}</span><span>USD</span></span>
              </span>
            </a>
          </div>
        </div>
      </div>
      <div class="course-banner-cover lg-order-2 lg-cols-4 s-ratio-16-9 s-overflow-hidden false">
        <div class="img-container lg-radius-1 s-ratio-16-9 background black-400">
          <video controls width="250">
            <source src="/videos/pericon-eduardo-sacheri.mp4" type="video/mp4" />
            Download the
            <a href="/media/cc0-videos/flower.webm">WEBM</a>
            or
            <a href="/public/videos/pericon-eduardo-sacheri.mp4">MP4</a>
            video.
          </video>
        </div>
      </div>
    </div>
  </div>



  <!-- Temario -->
  <div class="ed-grid">
    <section class="l-section">
      <div class="ed-grid m-grid-2 s-mb-2 s-px-2 lg-px-0">
        <h2 class="s-mb-1 m-mb-0">Temario del curso</h2>
        <div class="search-input form__item "><input type="search" name="search"
            placeholder="¿Buscas algo en específico?"></div>
      </div>
      <div class="temary landing s-bg-white s-radius-1">
        <div class="ed-grid card-template row-gap s-gap-0 s-overflow-hidden">

        {{ range $i, $module := .Course.Modules }}

          <article class="article s-mb-0 s-border-bottom">
            <div class="s-pt-2 m-pt-3 s-px-2 s-px-3 s-pb-2 s-cursor-pointer">
              <div class="s-cross-center nowrap">
                <h3 class="course-class__temary-title s-mb-05 s-mr-1">{{ $module.Title }}</h3>
              </div>
              <p class="small color grey-500 s-mb-0">{{ $module.Description }}</p>
            </div>
            <ul class="s-mb-0 ed-grid row-gap s-gap-1 s-overflow-hidden s-transition s-px-2 m-px-3 s-pb-2">

            {{ range $j, $class := $module.Classes }}

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
                  <p class="s-mb-0 color text-color s-mr-2">{{ $class.Title }}</p>
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