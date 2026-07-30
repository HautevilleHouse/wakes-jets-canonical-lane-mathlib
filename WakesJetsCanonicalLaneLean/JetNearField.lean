import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace WakesJetsCanonicalLaneLean

structure JetNearFieldPackage where
  potentialCoreLength : ℝ
  shearLayerThickness : ℝ
  initialTurbulenceLevel : ℝ
  nearFieldVelocityProfile : ℝ × ℝ → ℝ
  nearFieldAssumptions : Prop

structure JetNearFieldEvidence (P : JetNearFieldPackage) where
  potentialCoreLengthClosed : P.potentialCoreLength > 0
  shearLayerThicknessClosed : P.shearLayerThickness > 0
  initialTurbulenceLevelClosed : P.initialTurbulenceLevel ≥ 0
  nearFieldVelocityProfileClosed : ∀ (x : ℝ × ℝ), P.nearFieldVelocityProfile x ≥ 0
  nearFieldAssumptionsClosed : P.nearFieldAssumptions

def JetNearFieldClosed (P : JetNearFieldPackage) : Prop :=
  P.potentialCoreLength > 0 ∧ P.shearLayerThickness > 0 ∧ P.initialTurbulenceLevel ≥ 0 ∧
  (∀ (x : ℝ × ℝ), P.nearFieldVelocityProfile x ≥ 0) ∧ P.nearFieldAssumptions

theorem jet_near_field_closed_from_evidence (P : JetNearFieldPackage) (E : JetNearFieldEvidence P) :
  JetNearFieldClosed P := by
  exact And.intro E.potentialCoreLengthClosed
    (And.intro E.shearLayerThicknessClosed
      (And.intro E.initialTurbulenceLevelClosed
        (And.intro E.nearFieldVelocityProfileClosed E.nearFieldAssumptionsClosed)))

end WakesJetsCanonicalLaneLean
end HautevilleHouse