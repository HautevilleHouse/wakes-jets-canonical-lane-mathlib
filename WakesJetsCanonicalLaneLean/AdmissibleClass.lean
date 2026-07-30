import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace WakesJetsCanonicalLaneLean

structure AdmissibleClass where
  object : WakeAdmittedObject
  endpointSatisfied : Prop
  remainderRecorded : Prop
  gateWitness : endpointSatisfied ∨ remainderRecorded

def admittedClosure (A : AdmissibleClass) : Prop :=
  WakeWitnessClosed A.object ∧ (A.endpointSatisfied ∨ A.remainderRecorded)

end WakesJetsCanonicalLaneLean
end HautevilleHouse
