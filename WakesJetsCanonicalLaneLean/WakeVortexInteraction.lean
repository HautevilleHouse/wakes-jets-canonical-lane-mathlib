import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace WakesJetsCanonicalLaneLean

structure VortexPairDynamics where
  circulationStrength : Prop
  coreRadius : Prop
  mutualInduction : Prop
  vortexMergeCriteria : Prop

structure VortexPairEvidence (V : VortexPairDynamics) where
  circulationStrengthClosed : V.circulationStrength
  coreRadiusClosed : V.coreRadius
  mutualInductionClosed : V.mutualInduction
  vortexMergeCriteriaClosed : V.vortexMergeCriteria

def VortexPairAdmissibleClosed (V : VortexPairDynamics) : Prop :=
  V.circulationStrength ∧ V.coreRadius ∧ V.mutualInduction ∧ V.vortexMergeCriteria

theorem vortex_pair_admissible_from_evidence (V : VortexPairDynamics)
    (E : VortexPairEvidence V) : VortexPairAdmissibleClosed V := by
  exact And.intro E.circulationStrengthClosed
    (And.intro E.coreRadiusClosed
      (And.intro E.mutualInductionClosed E.vortexMergeCriteriaClosed))

end WakesJetsCanonicalLaneLean
end HautevilleHouse