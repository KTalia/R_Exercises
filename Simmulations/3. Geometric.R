x_geom <- rgeom(n = 100, prob = 0.3)

# Theoretical probability (P[X <= 20])
theoretical.geom <- pgeom(20, prob = 0.3)

# Empirical probability
empirical.geom <- mean(x_geom <= 20)