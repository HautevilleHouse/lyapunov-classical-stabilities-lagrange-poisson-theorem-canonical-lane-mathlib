import HautevilleHouse.LyapunovClassicalStabilitiesLagrangePoissonTheoremCanonicalLaneLean.AdmissibleClass

namespace HautevilleHouse
namespace LyapunovClassicalStabilitiesLagrangePoissonTheoremCanonicalLaneLean

def bridgeClosed (A : AdmissibleClass) : Prop :=
  LyapunovWitnessClosed A.object

theorem bridge_from_admissible_class (A : AdmissibleClass) :
    bridgeClosed A := by
  exact A.object.conclusion

end LyapunovClassicalStabilitiesLagrangePoissonTheoremCanonicalLaneLean
end HautevilleHouse
