import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace WakesJetsCanonicalLaneLean

structure FlowField where
  velocityProfile : Type
  vorticityField : Type
  boundaryLayerThickness : Type
  velocityProfileDefined : Prop
  vorticityFieldDefined : Prop
  boundaryLayerThicknessMeasured : Prop

structure WakeVelocityDeficit where
  centerlineDecay : Prop
  selfSimilarProfile : Prop
  momentumIntegral : Prop

structure FlowFieldAdmittedObject where
  flow : FlowField
  wake : WakeVelocityDeficit
  fullyDevelopedWake : Prop
  conclusion : fullyDevelopedWake

def FlowFieldWitnessClosed (O : FlowFieldAdmittedObject) : Prop :=
  O.conclusion

end WakesJetsCanonicalLaneLean
end HautevilleHouse