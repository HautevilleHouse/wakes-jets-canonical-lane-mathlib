import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace WakesJetsCanonicalLaneLean

structure TurbulentJetsSelfSimilarityPackage where
  centerlineVelocityDecay : Prop
  radialGaussianProfile : Prop
  spreadingRate : Prop
  farFieldAsymptotics : Prop

structure TurbulentJetsSelfSimilarityEvidence (P : TurbulentJetsSelfSimilarityPackage) where
  centerlineVelocityDecayClosed : P.centerlineVelocityDecay
  radialGaussianProfileClosed : P.radialGaussianProfile
  spreadingRateClosed : P.spreadingRate
  farFieldAsymptoticsClosed : P.farFieldAsymptotics

def TurbulentJetsSelfSimilarityClosed (P : TurbulentJetsSelfSimilarityPackage) : Prop :=
  P.centerlineVelocityDecay ∧ P.radialGaussianProfile ∧ P.spreadingRate ∧ P.farFieldAsymptotics

theorem turbulent_jets_self_similarity_closed_from_evidence (P : TurbulentJetsSelfSimilarityPackage) (E : TurbulentJetsSelfSimilarityEvidence P) :
    TurbulentJetsSelfSimilarityClosed P := by
  exact And.intro E.centerlineVelocityDecayClosed (And.intro E.radialGaussianProfileClosed (And.intro E.spreadingRateClosed E.farFieldAsymptoticsClosed))

end WakesJetsCanonicalLaneLean
end HautevilleHouse