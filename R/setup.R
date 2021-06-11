
# download course file and unzip it
get_course <- function(url_path, set_path) {
  options(Ncpus = 4)

  # if (require(rsetup)) { remove.packages("rsetup") }

  usethis::use_course(
    url = url_path,
    destdir = set_path
  )
}

# get course from url and activate the project
set_project <- function(url_path, set_path) {

  # usethis::create_project(dir)

  rsetup::get_course(url_path, set_path)

  usethis::proj_activate(set_path)
}

# get project path from user
set_path <- function() {
  if (.Platform$OS.type == "windows") {
    utils::choose.dir("", caption = "Choose a Suitable Folder")
    # choose.files()
  }

  else {
    rstudioapi::selectDirectory(
      caption = "Select Directory",
      label = "Select",
      path = ""
    )
  }
}


install_pdf <- \() {

  tinytex::install_tinytex(version = "latest")

}





