import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace LyapunovClassicalStabilitiesLagrangePoissonTheoremCanonicalLaneLean

structure LyapunovStabilityPackage {M : Type} [TopologicalSpace M] (L : LyapunovFunctionPackage M) where
  epsilonDeltaCondition : Prop
  localStability : Prop
  stabilityFromLyapunovFunction : Prop

structure LyapunovStabilityEvidence {M : Type} [TopologicalSpace M] {L : LyapunovFunctionPackage M} (LS : LyapunovStabilityPackage L) where
  epsilonDeltaConditionClosed : LS.epsilonDeltaCondition
  localStabilityClosed : LS.localStability
  stabilityFromLyapunovFunctionClosed : LS.stabilityFromLyapunovFunction

def LyapunovStabilityClosed {M : Type} [TopologicalSpace M] {L : LyapunovFunctionPackage M} (LS : LyapunovStabilityPackage L) : Prop :=
  LS.epsilonDeltaCondition ∧ LS.localStability ∧ LS.stabilityFromLyapunovFunction

theorem lyapunov_stability_closed_from_evidence {M : Type} [TopologicalSpace M] {L : LyapunovFunctionPackage M} (LS : LyapunovStabilityPackage L) (E : LyapunovStabilityEvidence LS) : LyapunovStabilityClosed LS := by
  exact And.intro E.epsilonDeltaConditionClosed (And.intro E.localStabilityClosed E.stabilityFromLyapunovFunctionClosed)

end LyapunovClassicalStabilitiesLagrangePoissonTheoremCanonicalLaneLean
end HautevilleHouse
