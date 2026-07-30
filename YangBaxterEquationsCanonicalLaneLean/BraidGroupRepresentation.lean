import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace YangBaxterEquationsCanonicalLaneLean

structure BraidGroupRepresentation (n : ℕ) where
  generators : Fin (n-1) → Matrix (Fin n) (Fin n) ℂ
  braidRelations : ∀ i : Fin (n-2), generators i * generators (i.succ) * generators i = generators (i.succ) * generators i * generators (i.succ)
  farCommutativity : ∀ i j : Fin (n-1), (i.val + 1 < j.val) → generators i * generators j = generators j * generators i

def braidGroupRepresentationClosed {n : ℕ} (rep : BraidGroupRepresentation n) : Prop :=
  rep.braidRelations ∧ rep.farCommutativity

theorem braid_representation_from_admissible (n : ℕ) (A : AdmissibleClass) : braidGroupRepresentationClosed (someRepresentation n) := by
  sorry

end YangBaxterEquationsCanonicalLaneLean
end HautevilleHouse
