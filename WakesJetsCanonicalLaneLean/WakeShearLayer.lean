import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace WakesJetsCanonicalLaneLean

structure WakeShearLayerPackage where
  velocityDefectProfile : Type u
  mixingLayerWidth : Type v
  selfSimilarityParameter : Prop
  farFieldDecay : Prop
  turbulenceIntensity : Prop

structure WakeShearLayerEvidence (P : WakeShearLayerPackage) where
  selfSimilarityParameterClosed : P.selfSimilarityParameter
  farFieldDecayClosed : P.farFieldDecay
  turbulenceIntensityClosed : P.turbulenceIntensity

def WakeShearLayerClosed (P : WakeShearLayerPackage) : Prop :=
  P.selfSimilarityParameter ∧ P.farFieldDecay ∧ P.turbulenceIntensity

theorem wake_shear_layer_closed_from_evidence (P : WakeShearLayerPackage) (E : WakeShearLayerEvidence P) :
    WakeShearLayerClosed P := by
  exact And.intro E.selfSimilarityParameterClosed (And.intro E.farFieldDecayClosed E.turbulenceIntensityClosed)

end WakesJetsCanonicalLaneLean
end HautevilleHouse