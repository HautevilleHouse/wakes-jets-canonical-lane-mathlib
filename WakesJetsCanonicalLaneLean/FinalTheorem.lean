import canonicalLaneMathlib.AdmissibleClass
import WakesJetsCanonicalLaneLean.BridgeLemmas
import WakesJetsCanonicalLaneLean.GateLemmas

namespace HautevilleHouse
namespace WakesJetsCanonicalLaneLean

def ConstrainedJetsClosure (A : AdmissibleClass) : Prop :=
  bridgeClosed A ∧ gateClosed A

theorem constrained_jets_endgame (A : AdmissibleClass) :
    ConstrainedJetsClosure A := by
  exact And.intro (bridge_from_admissible_class A) (gate_from_admissible_class A)

end WakesJetsCanonicalLaneLean
end HautevilleHouse
