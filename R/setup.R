

# install_url

# create_from_github()

setup_rbasic <- function(){

options(Ncpus = 4)

if ((rtraining)) { remove.packages("rtraining") }

usethis::use_course("https://github.com/rugnepal/weather_station_data/archive/refs/heads/master.zip",
           destdir = get_dir ())

}


get_dir <- function() {
  if (interactive() && .Platform$OS.type == "windows") {
  utils::choose.dir(getwd(), "Choose a suitable folder")

}

  else {
    dirname(file.choose())
  }

}















