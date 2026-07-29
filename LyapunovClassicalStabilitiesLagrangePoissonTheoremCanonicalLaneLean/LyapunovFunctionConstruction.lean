import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace LyapunovClassicalStabilitiesLagrangePoissonTheoremCanonicalLaneLean

structure LyapunovFunctionPackage (M : Type) [TopologicalSpace M] where
  equilibriumPoint : M
  lyapunovFunction : M → ℝ
  positiveDefinite : Prop
  derivativeNonPositive : Prop
  stabilityConclusion : Prop

structure LyapunovFunctionEvidence {M : Type} [TopologicalSpace M] (L : LyapunovFunctionPackage M) where
  positiveDefiniteClosed : L.positiveDefinite
  derivativeNonPositiveClosed : L.derivativeNonPositive

def LyapunovFunctionClosed {M : Type} [TopologicalSpace M] (L : LyapunovFunctionPackage M) : Prop :=
  L.positiveDefinite ∧ L.derivativeNonPositive

theorem lyapunov_function_closed_from_evidence {M : Type} [TopologicalSpace M] (L : LyapunovFunctionPackage M) (E : LyapunovFunctionEvidence L) : LyapunovFunctionClosed L := by
  exact And.intro E.positiveDefiniteClosed E.derivativeNonPositiveClosed

end LyapunovClassicalStabilitiesLagrangePoissonTheoremCanonicalLaneLean
end HautevilleHouse
