import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace WakesJetsCanonicalLaneLean

structure VortexStreetPackage where
  sheddingFrequency : Prop
  streetPatternStable : Prop
  vortexCoreRadius : Prop

structure VortexDynamicsEvidence (V : VortexStreetPackage) where
  sheddingFrequencyClosed : V.sheddingFrequency
  streetPatternStableClosed : V.streetPatternStable
  vortexCoreRadiusClosed : V.vortexCoreRadius

def VortexDynamicsClosed (V : VortexStreetPackage) : Prop :=
  V.sheddingFrequency ∧ V.streetPatternStable ∧ V.vortexCoreRadius

theorem vortex_dynamics_closed_from_evidence (V : VortexStreetPackage)
    (E : VortexDynamicsEvidence V) : VortexDynamicsClosed V := by
  exact And.intro E.sheddingFrequencyClosed
    (And.intro E.streetPatternStableClosed E.vortexCoreRadiusClosed)

end WakesJetsCanonicalLaneLean
end HautevilleHouse