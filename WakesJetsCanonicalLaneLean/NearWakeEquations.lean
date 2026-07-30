import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace WakesJetsCanonicalLaneLean

structure NearWakePackage where
  velocityDeficit : Prop
  shearLayerThickness : Prop
  centerlineDecay : Prop
  similarityScaling : Prop

structure NearWakeEvidence (P : NearWakePackage) where
  velocityDeficitClosed : P.velocityDeficit
  shearLayerThicknessClosed : P.shearLayerThickness
  centerlineDecayClosed : P.centerlineDecay
  similarityScalingClosed : P.similarityScaling

def NearWakeClosed (P : NearWakePackage) : Prop :=
  P.velocityDeficit ∧ P.shearLayerThickness ∧ P.centerlineDecay ∧ P.similarityScaling

theorem near_wake_closed_from_evidence (P : NearWakePackage) (E : NearWakeEvidence P) :
    NearWakeClosed P := by
  exact And.intro E.velocityDeficitClosed
    (And.intro E.shearLayerThicknessClosed
      (And.intro E.centerlineDecayClosed E.similarityScalingClosed))

end WakesJetsCanonicalLaneLean
end HautevilleHouse
