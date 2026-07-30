import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace WakesJetsCanonicalLaneLean

structure MixingLayerPackage where
  shearLayerGrowthRate : Prop
  turbulentIntensity : Prop
  entrainmentRatio : Prop

structure MixingLayerEvidence (M : MixingLayerPackage) where
  shearLayerGrowthRateClosed : M.shearLayerGrowthRate
  turbulentIntensityClosed : M.turbulentIntensity
  entrainmentRatioClosed : M.entrainmentRatio

def MixingLayerClosed (M : MixingLayerPackage) : Prop :=
  M.shearLayerGrowthRate ∧ M.turbulentIntensity ∧ M.entrainmentRatio

theorem mixing_layer_closed_from_evidence (M : MixingLayerPackage)
    (E : MixingLayerEvidence M) : MixingLayerClosed M := by
  exact And.intro E.shearLayerGrowthRateClosed
    (And.intro E.turbulentIntensityClosed E.entrainmentRatioClosed)

end WakesJetsCanonicalLaneLean
end HautevilleHouse