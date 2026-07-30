import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace WakesJetsCanonicalLaneLean

structure TurbulentWakeDecayPackage where
  turbulentKineticEnergyBudget : Prop
  dissipationRateTied : Prop
  meanVelocityDefect : Prop
  selfSimilarityProfile : Prop
  farWakeAsymptotic : Prop

structure TurbulentWakeDecayEvidence (P : TurbulentWakeDecayPackage) where
  turbulentKineticEnergyBudgetClosed : P.turbulentKineticEnergyBudget
  dissipationRateTiedClosed : P.dissipationRateTied
  meanVelocityDefectClosed : P.meanVelocityDefect
  selfSimilarityProfileClosed : P.selfSimilarityProfile
  farWakeAsymptoticClosed : P.farWakeAsymptotic

def TurbulentWakeDecayClosed (P : TurbulentWakeDecayPackage) : Prop :=
  P.turbulentKineticEnergyBudget ∧ P.dissipationRateTied ∧ P.meanVelocityDefect ∧
  P.selfSimilarityProfile ∧ P.farWakeAsymptotic

theorem turbulent_wake_decay_closed_from_evidence (P : TurbulentWakeDecayPackage)
    (E : TurbulentWakeDecayEvidence P) : TurbulentWakeDecayClosed P := by
  exact And.intro E.turbulentKineticEnergyBudgetClosed
    (And.intro E.dissipationRateTiedClosed
      (And.intro E.meanVelocityDefectClosed
        (And.intro E.selfSimilarityProfileClosed E.farWakeAsymptoticClosed)))

end WakesJetsCanonicalLaneLean
end HautevilleHouse