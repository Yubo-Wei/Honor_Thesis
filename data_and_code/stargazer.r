# remove the first two lines of credit info
mod_stargazer <- function(...){
  output <- capture.output(stargazer(...))
  output <- output[4:length(output)]
  cat(paste(output, collapse = "\n"), "\n")
}

# this function is used to make the size of the
# table appropriate in RMD pdf, we don't need it if using Latex.
resizebox.stargazer = function(..., tab.width = "!", tab.height = "!"
){
  require(stringr) 
  res = capture.output(
    mod_stargazer(...)
  )
  tab.width = tab.width
  tab.height = tab.height
  res = 
    prepend(res, "}", before = length(res))
  res = 
    c(res[1:str_which(res, "^\\\\begin\\{tabular\\}.*")-1],
      paste0("\\resizebox{",tab.width,"}{",tab.height,"}{%"),
      res[str_which(res, "^\\\\begin\\{tabular\\}.*"):length(res)]
    )
  cat(res, sep = "\n")
}
# example
# resizebox.stargazer(fit, type = "latex",
#                     title="The relationship between hours and patient severity.", dep.var.caption = "")
