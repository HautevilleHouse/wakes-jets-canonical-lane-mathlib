import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace WakesJetsCanonicalLaneLean

structure MixingLayerVelocityProfile where
  streamwiseVelocity : Type u
  crossStreamCoordinate : Type v
  centerlineDefect : Prop
  shearLayerThickness : Prop
  selfSimilarProfile : Prop

structure MixingLayerMomentumTransport where
  momentumEquation : Prop
  turbulentStressModel : Prop
  turbulentViscosityClosure : Prop
  momentumTransportClosed : Prop
  momentumTransportEvidence : momentumTransportClosed

structure MixingLayerAdmissibleEvidence (M : MixingLayerVelocityProfile) where
  centerlineDefectClosed : M.centerlineDefect
  shearLayerThicknessClosed : M.shearLayerThickness
  selfSimilarProfileClosed : M.selfSimilarProfile

def MixingLayerAdmissibleClosed (M : MixingLayerVelocityProfile) : Prop :=
  M.centerlineDefect ∧ M.shearLayerThickness ∧ M.selfSimilarProfile

theorem mixing_layer_admissible_from_evidence (M : MixingLayerVelocityProfile)
    (E : MixingLayerAdmissibleEvidence M) : MixingLayerAdmissibleClosed M := by
  exact And.intro E.centerlineDefectClosed
    (And.intro E.shearLayerThicknessClosed E.selfSimilarProfileClosed)

end WakesJetsCanonicalLaneLean
end HautevilleHouse