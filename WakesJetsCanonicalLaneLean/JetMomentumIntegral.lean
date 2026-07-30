import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace WakesJetsCanonicalLaneLean

structure JetMomentumPackage where
  thrustConservation : Prop
  entrainmentRate : Prop
  spreadingRate : Prop
  velocityProfile : Prop

structure JetMomentumEvidence (P : JetMomentumPackage) where
  thrustConservationClosed : P.thrustConservation
  entrainmentRateClosed : P.entrainmentRate
  spreadingRateClosed : P.spreadingRate
  velocityProfileClosed : P.velocityProfile

def JetMomentumClosed (P : JetMomentumPackage) : Prop :=
  P.thrustConservation ∧ P.entrainmentRate ∧ P.spreadingRate ∧ P.velocityProfile

theorem jet_momentum_closed_from_evidence (P : JetMomentumPackage) (E : JetMomentumEvidence P) :
    JetMomentumClosed P := by
  exact And.intro E.thrustConservationClosed
    (And.intro E.entrainmentRateClosed
      (And.intro E.spreadingRateClosed E.velocityProfileClosed))

end WakesJetsCanonicalLaneLean
end HautevilleHouse
