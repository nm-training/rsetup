

# install_url

# create_from_github()

setup_rbasic <- function(path){

options(Ncpus = 4)

# if (require(rsetup)) { remove.packages("rsetup") }

usethis::use_zip(url = path,
           destdir = get_dir(),
           cleanup = F
           )

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


