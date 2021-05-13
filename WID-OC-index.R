# WID-OC-index computation 
# Contact: James E. Barrett (james.barrett@uibk.ac.at)
# Date: 1 April 2021
# 
# Copyright (C) 2021 The European Translational Oncology Prevention & Screening (EUTOPS) Institute
# 
# This program is free software: you can redistribute it and/or modify
# it under the terms of the GNU General Public License as published by
# the Free Software Foundation, either version 3 of the License, or
# (at your option) any later version.
# 
# This program is distributed in the hope that it will be useful,
# but WITHOUT ANY WARRANTY; without even the implied warranty of
# MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
# GNU General Public License for more details.
# 
# You should have received a copy of the GNU General Public License
# along with this program.  If not, see <https://www.gnu.org/licenses/>.

OC_index <- function(beta, w){
  
  ind <- match(names(w),rownames(beta))
  
  B <- beta[ind[!is.na(ind)],]
  w2 <- w[!is.na(ind)]
  
  B1 <- B*w2
  index <- colSums(B1)
  
  # scale based on training dataset
  index <- (index - mean(18.17419))/3.765186
  
  return(index)
}