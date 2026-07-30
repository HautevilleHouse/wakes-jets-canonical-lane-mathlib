import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace WakesJetsCanonicalLaneLean

structure FarWakePackage where
  turbulentKineticEnergy : Prop
  dissipationRate : Prop
  integralLengthScale : Prop
  selfSimilarity : Prop

structure FarWakeEvidence (P : FarWakePackage) where
  turbulentKineticEnergyClosed : P.turbulentKineticEnergy
  dissipationRateClosed : P.dissipationRate
  integralLengthScaleClosed : P.integralLengthScale
  selfSimilarityClosed : P.selfSimilarity

def FarWakeClosed (P : FarWakePackage) : Prop :=
  P.turbulentKineticEnergy ∧ P.dissipationRate ∧ P.integralLengthScale ∧ P.selfSimilarity

theorem far_wake_closed_from_evidence (P : FarWakePackage) (E : FarWakeEvidence P) :
    FarWakeClosed P := by
  exact And.intro E.turbulentKineticEnergyClosed
    (And.intro E.dissipationRateClosed
      (And.intro E.integralLengthScaleClosed E.selfSimilarityClosed))

end WakesJetsCanonicalLaneLean
end HautevilleHouse
