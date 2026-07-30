import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace WakesJetsCanonicalLaneLean

structure FarFieldSelfSimilarWake where
  centerlineDecayLaw : Prop
  wakeWidthSpread : Prop
  turbulentKineticEnergyBudget : Prop
  reynoldsStressAnisotropy : Prop

structure FarFieldWakeEvidence (F : FarFieldSelfSimilarWake) where
  centerlineDecayLawClosed : F.centerlineDecayLaw
  wakeWidthSpreadClosed : F.wakeWidthSpread
  turbulentKineticEnergyBudgetClosed : F.turbulentKineticEnergyBudget
  reynoldsStressAnisotropyClosed : F.reynoldsStressAnisotropy

def FarFieldWakeAdmissibleClosed (F : FarFieldSelfSimilarWake) : Prop :=
  F.centerlineDecayLaw ∧ F.wakeWidthSpread ∧
  F.turbulentKineticEnergyBudget ∧ F.reynoldsStressAnisotropy

theorem far_field_wake_admissible_from_evidence (F : FarFieldSelfSimilarWake)
    (E : FarFieldWakeEvidence F) : FarFieldWakeAdmissibleClosed F := by
  exact And.intro E.centerlineDecayLawClosed
    (And.intro E.wakeWidthSpreadClosed
      (And.intro E.turbulentKineticEnergyBudgetClosed E.reynoldsStressAnisotropyClosed))

end WakesJetsCanonicalLaneLean
end HautevilleHouse