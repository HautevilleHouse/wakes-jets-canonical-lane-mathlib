import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace WakesJetsCanonicalLaneLean

structure VortexPairingPackage where
  primaryVorticesFormed : Prop
  pairingInstabilityTriggered : Prop
  mergerDynamics : Prop
  secondaryVorticityProduced : Prop
  wakeWidthModulation : Prop

structure VortexPairingEvidence (P : VortexPairingPackage) where
  primaryVorticesFormedClosed : P.primaryVorticesFormed
  pairingInstabilityTriggeredClosed : P.pairingInstabilityTriggered
  mergerDynamicsClosed : P.mergerDynamics
  secondaryVorticityProducedClosed : P.secondaryVorticityProduced
  wakeWidthModulationClosed : P.wakeWidthModulation

def VortexPairingClosed (P : VortexPairingPackage) : Prop :=
  P.primaryVorticesFormed ∧ P.pairingInstabilityTriggered ∧ P.mergerDynamics ∧
  P.secondaryVorticityProduced ∧ P.wakeWidthModulation

theorem vortex_pairing_closed_from_evidence (P : VortexPairingPackage)
    (E : VortexPairingEvidence P) : VortexPairingClosed P := by
  exact And.intro E.primaryVorticesFormedClosed
    (And.intro E.pairingInstabilityTriggeredClosed
      (And.intro E.mergerDynamicsClosed
        (And.intro E.secondaryVorticityProducedClosed E.wakeWidthModulationClosed)))

end WakesJetsCanonicalLaneLean
end HautevilleHouse