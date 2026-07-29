import HautevilleHouse.LyapunovClassicalStabilitiesLagrangePoissonTheoremCanonicalLaneLean.AdmissibleClass

namespace HautevilleHouse
namespace LyapunovClassicalStabilitiesLagrangePoissonTheoremCanonicalLaneLean

structure StabilityConditionPackage (A : AdmissibleClass) where
  lyapunovFunctionExists : Prop
  derivativeNegativeDefinite : Prop
  asymptoticStability : Prop
  exponentialStability : Prop
  stabilityFromLyapunov : Prop

structure StabilityConditionEvidence {A : AdmissibleClass} (S : StabilityConditionPackage A) where
  lyapunovFunctionExistsClosed : S.lyapunovFunctionExists
  derivativeNegativeDefiniteClosed : S.derivativeNegativeDefinite
  asymptoticStabilityClosed : S.asymptoticStability
  exponentialStabilityClosed : S.exponentialStability
  stabilityFromLyapunovClosed : S.stabilityFromLyapunov

def StabilityConditionClosed {A : AdmissibleClass} (S : StabilityConditionPackage A) : Prop :=
  S.lyapunovFunctionExists ∧ S.derivativeNegativeDefinite ∧ S.asymptoticStability ∧ S.exponentialStability ∧ S.stabilityFromLyapunov

theorem stability_condition_closed_from_evidence {A : AdmissibleClass} (S : StabilityConditionPackage A) (E : StabilityConditionEvidence S) : StabilityConditionClosed S := by
  exact And.intro E.lyapunovFunctionExistsClosed (And.intro E.derivativeNegativeDefiniteClosed (And.intro E.asymptoticStabilityClosed (And.intro E.exponentialStabilityClosed E.stabilityFromLyapunovClosed)))

end LyapunovClassicalStabilitiesLagrangePoissonTheoremCanonicalLaneLean
end HautevilleHouse