import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace WakesJetsCanonicalLaneLean

structure StabilityPackage where
  linearGrowthRate : Prop
  instabilityMechanism : Prop
  transitionCriterion : Prop
  absoluteVsConvective : Prop

structure StabilityEvidence (P : StabilityPackage) where
  linearGrowthRateClosed : P.linearGrowthRate
  instabilityMechanismClosed : P.instabilityMechanism
  transitionCriterionClosed : P.transitionCriterion
  absoluteVsConvectiveClosed : P.absoluteVsConvective

def StabilityClosed (P : StabilityPackage) : Prop :=
  P.linearGrowthRate ∧ P.instabilityMechanism ∧ P.transitionCriterion ∧ P.absoluteVsConvective

theorem stability_closed_from_evidence (P : StabilityPackage) (E : StabilityEvidence P) :
    StabilityClosed P := by
  exact And.intro E.linearGrowthRateClosed
    (And.intro E.instabilityMechanismClosed
      (And.intro E.transitionCriterionClosed E.absoluteVsConvectiveClosed))

end WakesJetsCanonicalLaneLean
end HautevilleHouse
