import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace WakesJetsCanonicalLaneLean

structure TurbulentScalingPackage where
  kolmogorovSpectrum : Prop
  dissipationRate : Prop
  integralLengthScale : Prop

structure TurbulentScalingEvidence (T : TurbulentScalingPackage) where
  kolmogorovSpectrumClosed : T.kolmogorovSpectrum
  dissipationRateClosed : T.dissipationRate
  integralLengthScaleClosed : T.integralLengthScale

def TurbulentScalingClosed (T : TurbulentScalingPackage) : Prop :=
  T.kolmogorovSpectrum ∧ T.dissipationRate ∧ T.integralLengthScale

theorem turbulent_scaling_closed_from_evidence (T : TurbulentScalingPackage)
    (E : TurbulentScalingEvidence T) : TurbulentScalingClosed T := by
  exact And.intro E.kolmogorovSpectrumClosed
    (And.intro E.dissipationRateClosed E.integralLengthScaleClosed)

end WakesJetsCanonicalLaneLean
end HautevilleHouse