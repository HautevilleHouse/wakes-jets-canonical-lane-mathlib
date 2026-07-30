import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace WakesJetsCanonicalLaneLean

structure WakeVelocityProfile where
  wakeCenterDefect : Prop
  wakeWidthGrowth : Prop
  entrainmentRate : Prop
  selfSimilarityApproach : Prop

structure NearFieldWakeAdmissibleEvidence (W : WakeVelocityProfile) where
  wakeCenterDefectClosed : W.wakeCenterDefect
  wakeWidthGrowthClosed : W.wakeWidthGrowth
  entrainmentRateClosed : W.entrainmentRate
  selfSimilarityApproachClosed : W.selfSimilarityApproach

def NearFieldWakeAdmissibleClosed (W : WakeVelocityProfile) : Prop :=
  W.wakeCenterDefect ∧ W.wakeWidthGrowth ∧ W.entrainmentRate ∧ W.selfSimilarityApproach

theorem near_field_wake_admissible_from_evidence (W : WakeVelocityProfile)
    (E : NearFieldWakeAdmissibleEvidence W) : NearFieldWakeAdmissibleClosed W := by
  exact And.intro E.wakeCenterDefectClosed
    (And.intro E.wakeWidthGrowthClosed
      (And.intro E.entrainmentRateClosed E.selfSimilarityApproachClosed))

end WakesJetsCanonicalLaneLean
end HautevilleHouse