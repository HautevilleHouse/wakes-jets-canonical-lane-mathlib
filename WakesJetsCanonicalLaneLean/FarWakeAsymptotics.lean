import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace WakesJetsCanonicalLaneLean

structure FarWakeAsymptoticsPackage where
  velocityDefectPowerLaw : Prop
  momentumIntegralConservation : Prop
  selfSimilarScaling : Prop
  turbulentDissipationRate : Prop
  closureCompatibility : Prop

structure FarWakeAsymptoticsEvidence (P : FarWakeAsymptoticsPackage) where
  velocityDefectPowerLawClosed : P.velocityDefectPowerLaw
  momentumIntegralConservationClosed : P.momentumIntegralConservation
  selfSimilarScalingClosed : P.selfSimilarScaling
  turbulentDissipationRateClosed : P.turbulentDissipationRate
  closureCompatibilityClosed : P.closureCompatibility

def FarWakeAsymptoticsClosed (P : FarWakeAsymptoticsPackage) : Prop :=
  P.velocityDefectPowerLaw ∧ P.momentumIntegralConservation ∧ P.selfSimilarScaling ∧ P.turbulentDissipationRate ∧ P.closureCompatibility

theorem far_wake_asymptotics_closed_from_evidence (P : FarWakeAsymptoticsPackage) (E : FarWakeAsymptoticsEvidence P) :
    FarWakeAsymptoticsClosed P := by
  exact And.intro E.velocityDefectPowerLawClosed (And.intro E.momentumIntegralConservationClosed (And.intro E.selfSimilarScalingClosed (And.intro E.turbulentDissipationRateClosed E.closureCompatibilityClosed)))

end WakesJetsCanonicalLaneLean
end HautevilleHouse