import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace WakesJetsCanonicalLaneLean

structure JetFarFieldPackage where
  centerlineVelocityDecay : ℝ → ℝ
  jetSpreadRate : ℝ
  selfSimilarVelocityProfile : ℝ → ℝ
  momentumIntegralConstraint : Prop
  farFieldAssumptions : Prop

structure JetFarFieldEvidence (P : JetFarFieldPackage) where
  centerlineVelocityDecayClosed : ∀ x : ℝ, P.centerlineVelocityDecay x > 0
  jetSpreadRateClosed : P.jetSpreadRate > 0
  selfSimilarVelocityProfileClosed : ∀ η : ℝ, P.selfSimilarVelocityProfile η ≥ 0
  momentumIntegralConstraintClosed : P.momentumIntegralConstraint
  farFieldAssumptionsClosed : P.farFieldAssumptions

def JetFarFieldClosed (P : JetFarFieldPackage) : Prop :=
  (∀ x : ℝ, P.centerlineVelocityDecay x > 0) ∧ P.jetSpreadRate > 0 ∧
  (∀ η : ℝ, P.selfSimilarVelocityProfile η ≥ 0) ∧ P.momentumIntegralConstraint ∧ P.farFieldAssumptions

theorem jet_far_field_closed_from_evidence (P : JetFarFieldPackage) (E : JetFarFieldEvidence P) :
  JetFarFieldClosed P := by
  exact And.intro E.centerlineVelocityDecayClosed
    (And.intro E.jetSpreadRateClosed
      (And.intro E.selfSimilarVelocityProfileClosed
        (And.intro E.momentumIntegralConstraintClosed E.farFieldAssumptionsClosed)))

end WakesJetsCanonicalLaneLean
end HautevilleHouse