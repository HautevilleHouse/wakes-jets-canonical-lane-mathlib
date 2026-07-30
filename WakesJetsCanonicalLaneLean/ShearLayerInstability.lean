import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace WakesJetsCanonicalLaneLean

structure ShearLayerInstabilityPackage where
  baseFlowProfile : Prop
  inflectionPointExists : Prop
  rayleighCriterionSatisfied : Prop
  kelvinHelmholtzGrowthRate : Prop
  rollUpIntoVortices : Prop

structure ShearLayerInstabilityEvidence (P : ShearLayerInstabilityPackage) where
  baseFlowProfileClosed : P.baseFlowProfile
  inflectionPointExistsClosed : P.inflectionPointExists
  rayleighCriterionSatisfiedClosed : P.rayleighCriterionSatisfied
  kelvinHelmholtzGrowthRateClosed : P.kelvinHelmholtzGrowthRate
  rollUpIntoVorticesClosed : P.rollUpIntoVortices

def ShearLayerInstabilityClosed (P : ShearLayerInstabilityPackage) : Prop :=
  P.baseFlowProfile ∧ P.inflectionPointExists ∧ P.rayleighCriterionSatisfied ∧
  P.kelvinHelmholtzGrowthRate ∧ P.rollUpIntoVortices

theorem shear_layer_instability_closed_from_evidence (P : ShearLayerInstabilityPackage)
    (E : ShearLayerInstabilityEvidence P) : ShearLayerInstabilityClosed P := by
  exact And.intro E.baseFlowProfileClosed
    (And.intro E.inflectionPointExistsClosed
      (And.intro E.rayleighCriterionSatisfiedClosed
        (And.intro E.kelvinHelmholtzGrowthRateClosed E.rollUpIntoVorticesClosed)))

end WakesJetsCanonicalLaneLean
end HautevilleHouse