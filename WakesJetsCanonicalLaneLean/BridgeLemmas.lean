import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace WakesJetsCanonicalLaneLean

def bridgeClosed (A : AdmissibleClass) : Prop :=
  WakeWitnessClosed A.object

theorem bridge_from_admissible_class (A : AdmissibleClass) :
    bridgeClosed A := by
  exact A.object.conclusion

end WakesJetsCanonicalLaneLean
end HautevilleHouse
