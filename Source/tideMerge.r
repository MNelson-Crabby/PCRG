# function to merge dataframe with dide data
tideMerge <- function(df, tidalRange){
  df2 <- merge(df, tidalRange, all=T)
  df2$Organization <- unique(df$Organization[!is.na(df$Organization)])
  return(df2)
}