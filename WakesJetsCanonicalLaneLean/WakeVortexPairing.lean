import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace WakesJetsCanonicalLaneLean

structure WakeVortexPairingPackage where
  vortexCoreRadius : Prop
  circulationStrength : Prop
  pairingFrequency : Prop
  stabilityCriteria : Prop

structure WakeVortexPairingEvidence (P : WakeVortexPairingPackage) where
  vortexCoreRadiusClosed : P.vortexCoreRadius
  circulationStrengthClosed : P.circulationStrength
  pairingFrequencyClosed : P.pairingFrequency
  stabilityCriteriaClosed : P.stabilityCriteria

def WakeVortexPairingClosed (P : WakeVortexPairingPackage) : Prop :=
  P.vortexCoreRadius ∧ P.circulationStrength ∧ P.pairingFrequency ∧ P.stabilityCriteria

theorem wake_vortex_pairing_closed_from_evidence (P : WakeVortexPairingPackage) (E : WakeVortexPairingEvidence P) :
    WakeVortexPairingClosed P := by
  exact And.intro E.vortexCoreRadiusClosed (And.intro E.circulationStrengthClosed (And.intro E.pairingFrequencyClosed E.stabilityCriteriaClosed))

end WakesJetsCanonicalLaneLean
end HautevilleHouse