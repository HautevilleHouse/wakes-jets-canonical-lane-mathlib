import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace WakesJetsCanonicalLaneLean

structure JetTurbulencePackage where
  reynoldsNumber : ℝ
  turbulentIntensity : ℝ
  integralLengthScale : ℝ
  turbulentKineticEnergy : ℝ
  dissipationRate : ℝ
  closureAssumptions : Prop

structure JetTurbulenceEvidence (P : JetTurbulencePackage) where
  reynoldsNumberClosed : P.reynoldsNumber > 0
  turbulentIntensityClosed : P.turbulentIntensity ≥ 0
  integralLengthScaleClosed : P.integralLengthScale > 0
  turbulentKineticEnergyClosed : P.turbulentKineticEnergy ≥ 0
  dissipationRateClosed : P.dissipationRate ≥ 0
  closureAssumptionsClosed : P.closureAssumptions

def JetTurbulenceClosed (P : JetTurbulencePackage) : Prop :=
  P.reynoldsNumber > 0 ∧ P.turbulentIntensity ≥ 0 ∧ P.integralLengthScale > 0 ∧
  P.turbulentKineticEnergy ≥ 0 ∧ P.dissipationRate ≥ 0 ∧ P.closureAssumptions

theorem jet_turbulence_closed_from_evidence (P : JetTurbulencePackage) (E : JetTurbulenceEvidence P) :
  JetTurbulenceClosed P := by
  exact And.intro E.reynoldsNumberClosed
    (And.intro E.turbulentIntensityClosed
      (And.intro E.integralLengthScaleClosed
        (And.intro E.turbulentKineticEnergyClosed
          (And.intro E.dissipationRateClosed E.closureAssumptionsClosed))))

end WakesJetsCanonicalLaneLean
end HautevilleHouse