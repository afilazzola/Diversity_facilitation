library(metafor)

## Gives identical result as metareg
m2 <- rma(yi = rii_calc, vi = var.es, mods = ~n_species, data=data)
summary(m2)

## Inclusion of polynomial doesn't do anything
m2poly <- rma(yi = rii_calc, vi = var.es, mods = ~ poly(n_species,2), data=data)
summary(m2poly)