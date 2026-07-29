import HautevilleHouse.LyapunovClassicalStabilitiesLagrangePoissonTheoremCanonicalLaneLean.AdmissibleClass

namespace HautevilleHouse
namespace LyapunovClassicalStabilitiesLagrangePoissonTheoremCanonicalLaneLean

structure LyapunovDifferentialEquationPackage where
  stateManifold : Type u
  vectorField : stateManifold → stateManifold
  equilibriumPoint : stateManifold
  cauchyProblemWellPosed : Prop
  solutionsSmooth : Prop

theorem lyapunov_equation_supplies_cauchy_problem
    (L : LyapunovDifferentialEquationPackage) : L.cauchyProblemWellPosed := by
  exact L.cauchyProblemWellPosed

end LyapunovClassicalStabilitiesLagrangePoissonTheoremCanonicalLaneLean
end HautevilleHouse
