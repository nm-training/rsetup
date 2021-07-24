
copy_folder <- function(source, dest, incl_dirs) {

  old <- dir(path = here::here(source), pattern = incl_dirs, full.names = T)

  new <- gsub(source, dest, old)

  purrr::map2(.x = here::here(old), .y = here::here(new), R.utils::copyDirectory)

}


# copy_folder("docs", "slides2", "libs|imgs|figures")

copy_file <- function(source, dest, pattern) {
  files <- list.files(path = source, pattern = pattern, full.names = T)

  file.copy(files, dest)
}


render_slides <- function(name = ".Rmd", docs = "docs",
                          slides = "slides", ext = ".css|.html",
                          includes = "libs|figures") {
  files <- list.files(path = docs, pattern = name, full.names = T)

  purrr::map(here::here(files), rmarkdown::render)

  copy_folder(docs, slides, includes)

  copy_file(docs, slides, ext)

}

