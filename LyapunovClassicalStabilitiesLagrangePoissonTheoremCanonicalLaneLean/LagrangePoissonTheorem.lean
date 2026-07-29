import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace LyapunovClassicalStabilitiesLagrangePoissonTheoremCanonicalLaneLean

structure LagrangePoissonTheoremPackage {M : Type} [TopologicalSpace M] (L : LyapunovFunctionPackage M) where
  lagrangeStability : LagrangeStabilityPackage L
  poissonStability : PoissonStabilityPackage L
  theoremStatement : Prop

structure LagrangePoissonTheoremEvidence {M : Type} [TopologicalSpace M] {L : LyapunovFunctionPackage M} (LPT : LagrangePoissonTheoremPackage L) where
  lagrangeClosed : LagrangeStabilityClosed LPT.lagrangeStability
  poissonClosed : PoissonStabilityClosed LPT.poissonStability
  theoremStatementClosed : LPT.theoremStatement

def LagrangePoissonTheoremClosed {M : Type} [TopologicalSpace M] {L : LyapunovFunctionPackage M} (LPT : LagrangePoissonTheoremPackage L) : Prop :=
  LagrangeStabilityClosed LPT.lagrangeStability ∧ PoissonStabilityClosed LPT.poissonStability ∧ LPT.theoremStatement

theorem lagrange_poisson_theorem_closed_from_evidence {M : Type} [TopologicalSpace M] {L : LyapunovFunctionPackage M} (LPT : LagrangePoissonTheoremPackage L) (E : LagrangePoissonTheoremEvidence LPT) : LagrangePoissonTheoremClosed LPT := by
  exact And.intro E.lagrangeClosed (And.intro E.poissonClosed E.theoremStatementClosed)

end LyapunovClassicalStabilitiesLagrangePoissonTheoremCanonicalLaneLean
end HautevilleHouse
