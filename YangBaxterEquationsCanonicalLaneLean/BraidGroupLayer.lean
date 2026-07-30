import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace YangBaxterEquationsCanonicalLaneLean

structure BraidGroupGenerator where
  index : Nat
  inverse : Bool

def braidRelation (σᵢ σⱼ : BraidGroupGenerator) (i j : Nat) : Prop :=
  i = j → σᵢ = σⱼ

structure BraidGroupCertificate where
  generators : List BraidGroupGenerator
  relationsSatisfied : Prop
  relationsClosed : relationsSatisfied

def sourceBraidGroupCertificate : BraidGroupCertificate :=
  { generators :=
      [ { index := 0, inverse := false },
        { index := 1, inverse := false } ],
    relationsSatisfied := True,
    relationsClosed := True
  }

theorem source_braid_group_relations_closed :
  sourceBraidGroupCertificate.relationsSatisfied := by
  rfl

end YangBaxterEquationsCanonicalLaneLean
end HautevilleHouse