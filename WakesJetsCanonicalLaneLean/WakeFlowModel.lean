import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace WakesJetsCanonicalLaneLean

structure WakeFlowPackage where
  bodyShape : Type
  freestreamVelocity : ℝ
  wakeDefectVelocity : ℝ → ℝ
  wakeWidth : ℝ → ℝ
  turbulenceIntensityWake : ℝ
  wakeAssumptions : Prop

structure WakeFlowEvidence (P : WakeFlowPackage) where
  bodyShapeClosed : Nonempty P.bodyShape
  freestreamVelocityClosed : P.freestreamVelocity > 0
  wakeDefectVelocityClosed : ∀ x : ℝ, P.wakeDefectVelocity x ≤ 0
  wakeWidthClosed : ∀ x : ℝ, P.wakeWidth x > 0
  turbulenceIntensityWakeClosed : P.turbulenceIntensityWake ≥ 0
  wakeAssumptionsClosed : P.wakeAssumptions

def WakeFlowClosed (P : WakeFlowPackage) : Prop :=
  Nonempty P.bodyShape ∧ P.freestreamVelocity > 0 ∧ (∀ x : ℝ, P.wakeDefectVelocity x ≤ 0) ∧
  (∀ x : ℝ, P.wakeWidth x > 0) ∧ P.turbulenceIntensityWake ≥ 0 ∧ P.wakeAssumptions

theorem wake_flow_closed_from_evidence (P : WakeFlowPackage) (E : WakeFlowEvidence P) :
  WakeFlowClosed P := by
  refine And.intro E.bodyShapeClosed
    (And.intro E.freestreamVelocityClosed
      (And.intro E.wakeDefectVelocityClosed
        (And.intro E.wakeWidthClosed
          (And.intro E.turbulenceIntensityWakeClosed E.wakeAssumptionsClosed))))

end WakesJetsCanonicalLaneLean
end HautevilleHouse