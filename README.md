# AsteroidThermoPPhysicalModels.jl

[![Stable](https://img.shields.io/badge/docs-stable-blue.svg)](https://hyrodium.github.io/AsteroidThermoPPhysicalModels.jl/stable)
[![Dev](https://img.shields.io/badge/docs-dev-blue.svg)](https://hyrodium.github.io/AsteroidThermoPPhysicalModels.jl/dev)
[![Build Status](https://github.com/hyrodium/AsteroidThermoPPhysicalModels.jl/workflows/CI/badge.svg)](https://github.com/hyrodium/AsteroidThermoPPhysicalModels.jl/actions?query=workflow%3ACI+branch%3Amain)
[![codecov](https://codecov.io/gh/hyrodium/AsteroidThermoPPhysicalModels.jl/branch/main/graph/badge.svg?token=dJBiR91dCD)](https://codecov.io/gh/hyrodium/AsteroidThermoPPhysicalModels.jl)
[![Aqua QA](https://raw.githubusercontent.com/JuliaTesting/Aqua.jl/master/badge.svg)](https://github.com/JuliaTesting/Aqua.jl)

Julia-based toolkit for dynamical simulations of planets and small solar system bodies.


## Installation

```julia
using Pkg
Pkg.add(url="https://github.com/hyrodium/AsteroidThermoPPhysicalModels.jl")
using AsteroidThermoPPhysicalModels
```

You can update the module and run tests as follows.

```julia
Pkg.update("AsteroidThermoPPhysicalModels")
Pkg.test("AsteroidThermoPPhysicalModels")
```

## Thermophysical modeling
Based on orbit, spin, and 3-D shape, you can calculate the distribution of the surface temperature on an asteroid. The temperature distribution can be used to calculate the non-gravitational perturbations on its orbital and rotational motion (Yarkovsky and YORP effects, respectively).

### Available format for shape model
- Wavefront OBJ format (\*.obj)

### Thermophysics included
- 1-dimensional heat diffusion in depth direction
- Self-shadowing: Local shadows casted by topography
- Self-heating: Re-absorption of scattered and radiated photons by surrounding facets. Only single scattering is implemented.

### Thermophysics to be implemented
- Surface roughness (smaller than facets of the shape model)

### Example
Distribution of surface temperature on asteroid Ryugu. The color map ranges from 200 to 400 K.

![Thermophysics_Ryugu](https://user-images.githubusercontent.com/21192162/149468024-f403011f-b3d3-47ce-a69c-7daf78a40658.png)
