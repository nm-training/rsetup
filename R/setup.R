

# install_url

# create_from_github()

get_course <- function(url_path, set_path) {

  options(Ncpus = 4)

  #if (require(rsetup)) { remove.packages("rsetup") }

  usethis::use_course(url = url_path,
                      destdir = set_path
  )


}


set_project <- function(url_path, set_path=set_path){

  # usethis::create_project(dir)

  get_course(url_path, set_path )

  usethis::proj_activate(set_path)

}





get_dir <- function() {

  rstudioapi::selectDirectory(
    caption = "Select Directory",
    label = "Select",
    path = ""
  )


  #   if (.Platform$OS.type == "windows") {
  #    utils::choose.dir("", caption = "Choose a suitable folder to load R Training file")
  # }
  #
  #   else {
  #     dirname(file.choose())
  #   }

}
