
# copy folders

copy_folder <- function(source, dest, incl_dirs) {
  old <- dir(path = here::here(source), pattern = incl_dirs, full.names = T)

  new <- gsub(source, dest, old)

  purrr::map2(.x = here::here(old), .y = here::here(new), R.utils::copyDirectory)
}


# copy_folder("docs", "slides2", "libs|imgs|figures")



## copy files

copy_file <- function(source, dest, pattern) {
  files <- list.files(path = source, pattern = pattern, full.names = T)

  file.rename(files, dest)
}


# render slide to html

render_slide <- function(name = ".Rmd", docs = "docs",
                          slides = "slides", ext = ".css|.html",
                          includes = "libs|figures", folder = F) {

  files <- list.files(path = docs, pattern = name, full.names = T)

  purrr::map(here::here(files), rmarkdown::render)

  if (folder == F & name != ".Rmd") {
    copy_file(docs, slides, ext)
  } else {
    copy_folder(docs, slides, includes)
    copy_file(docs, slides, ext)
  }
}

# open documents
open_doc <- function(name, slides = "slides") {

  rstudioapi::navigateToFile(here::here(slides, paste0(file, ".html")))

}

# open html slides

open_slide <- function(name, slides = "slides") {

  browseURL(here::here(slides, paste0(slides, file, ".html")))

}


