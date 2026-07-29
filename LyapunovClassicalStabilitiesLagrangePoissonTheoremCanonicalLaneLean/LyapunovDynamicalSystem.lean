import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace LyapunovClassicalStabilitiesLagrangePoissonTheoremCanonicalLaneLean

structure DynamicalSystem (M : Type u) [TopologicalSpace M] where
  flow : ℝ × M → M
  groupLaw : ∀ t s x, flow (t + s, x) = flow (t, flow (s, x))
  identity : ∀ x, flow (0, x) = x
  continuous : Continuous flow

structure LyapunovSpace where
  carrier : Type
  topology : TopologicalSpace carrier
  innerProduct : Inner ℝ carrier
  normedAddCommGroup : NormedAddCommGroup carrier

end LyapunovClassicalStabilitiesLagrangePoissonTheoremCanonicalLaneLean
end HautevilleHouse