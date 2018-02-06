#' Calculate the isotope mass ratio term
#' @param m_light mass of the light isotope
#' @param m_heavy mass of the heavy isotope
#' @param n_atoms number of atoms of the isotope in the molcule
calc_m_ratio <- function(m_light, m_heavy, n_atoms) {
  return( (m_heavy/m_light)^(3*n_atoms/2) )
}

#' Calculate the vibrational frequency ratio term
#' @param w_light wave number of light isotoplogue (cm-1)
#' @param w_heavy wave number of heavey isotoplogue (cm-1)
calc_vib_freq_ratio <- function(w_light, w_heavy) {
  # vib_freq = w * speed of light
  # in the ratio, speed of light cancels
  return (w_heavy/w_light)
}

#' Calculate the U term
#' @param w wave number (cm-1)
#' @param temp.C temperature in celsius
calc_U <- function(w, temp.C) {
  temp.K <- 273.15 + temp.C
  return(h * sol * w / (k * temp.K))
}

#' Calculate the low temperature dependent term of the vibrational
#' component (the one most directly related to ZPE)
#' @param w_light wave number of light isotoplogue (cm-1)
#' @param w_heavy wave number of heavey isotoplogue (cm-1)
#' @param temp.C temperature in celsius
calc_low_T_term_ratio <- function(w_light, w_heavy, temp.C) {
  U_light <- calc_U(w_light, temp.C)
  U_heavy <- calc_U(w_heavy, temp.C)
  return(exp(-U_heavy/2) / exp(-U_light/2))
}

#' Calculate hte high temperature dependent term of the vibrational
#' component (the one that changes as temperature increases)
#' @param same as for calc_low_T_term_ratio
calc_high_T_term_ratio <- function(w_light, w_heavy, temp.C) {
  U_light <- calc_U(w_light, temp.C)
  U_heavy <- calc_U(w_heavy, temp.C)
  return((1 - exp(-U_light)) / (1 - exp(-U_heavy)))
}