import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace WakesJetsCanonicalLaneLean

structure JetsAdmittedObject where
  flowField : Type
  wakeRegion : Type
  reynoldsNumber : ℝ
  meanFlowProfile : Prop
  fluctuationField : Prop
  reynoldsStress : Prop
  conclusion : meanFlowProfile ∧ fluctuationField ∧ reynoldsStress

structure JetAdmissibleClass where
  object : JetsAdmittedObject
  endpointSatisfied : Prop
  remainderRecorded : Prop
  gateWitness : endpointSatisfied ∨ remainderRecorded

def jetAdmittedClosure (A : JetAdmissibleClass) : Prop :=
  JetsWitnessClosed A.object ∧ (A.endpointSatisfied ∨ A.remainderRecorded)

def JetsWitnessClosed (O : JetsAdmittedObject) : Prop :=
  O.conclusion

end WakesJetsCanonicalLaneLean
end HautevilleHouse