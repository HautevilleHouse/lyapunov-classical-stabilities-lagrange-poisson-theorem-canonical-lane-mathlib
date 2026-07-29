import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace LyapunovClassicalStabilitiesLagrangePoissonTheoremCanonicalLaneLean

structure InvariantSet {M : Type u} [TopologicalSpace M] {D : DynamicalSystem M} where
  set : Set M
  forwardInvariant : ∀ x ∈ set, ∀ t ≥ 0, D.flow (t, x) ∈ set
  backwardInvariant : ∀ x ∈ set, ∀ t ≤ 0, D.flow (t, x) ∈ set
  closed : IsClosed set

structure PoissonStableSet {M : Type u} [TopologicalSpace M] {D : DynamicalSystem M} (I : InvariantSet D) where
  recurrent : ∀ x ∈ I.set, ∀ U ∈ 𝓝 x, ∃ t > 0, D.flow (t, x) ∈ U
  lagrangeStability : Prop

end LyapunovClassicalStabilitiesLagrangePoissonTheoremCanonicalLaneLean
end HautevilleHouse