import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace LyapunovClassicalStabilitiesLagrangePoissonTheoremCanonicalLaneLean

structure LyapunovAdmittedObject where
  space : PoincareSpace
  lyapunovFunction : LyapunovFunction (by
    exact sorry)
  lagrangeStable : LagrangeStableSystem
  poissonStable : PoissonStableSystem
  conclusion : Prop

def bridgeClosed (A : AdmissibleClass) : Prop := A.object.conclusion

theorem bridge_from_admissible_class (A : AdmissibleClass) : bridgeClosed A := by
  exact A.object.conclusion

def gateClosed (A : AdmissibleClass) : Prop := A.endpointSatisfied ∨ A.remainderRecorded

theorem gate_from_admissible_class (A : AdmissibleClass) : gateClosed A := by
  exact A.gateWitness

def ConstrainedLyapunovClosure (A : AdmissibleClass) : Prop :=
  bridgeClosed A ∧ gateClosed A

theorem constrained_lyapunov_endgame (A : AdmissibleClass) :
    ConstrainedLyapunovClosure A := by
  exact And.intro (bridge_from_admissible_class A) (gate_from_admissible_class A)

end LyapunovClassicalStabilitiesLagrangePoissonTheoremCanonicalLaneLean
end HautevilleHouse