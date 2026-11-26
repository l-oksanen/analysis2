/-
# Lean demo 2: the basic structure of the language

Following Notes on Lean, Section 1.1 Primitives:
https://l-oksanen.github.io/lean-notes/Introduction/Primitives/
-/
import Mathlib

namespace Demo2
/-
## 1. Definitions and types

Every expression has a type. `def` gives an expression a name.
-/
def z : ℕ := 0
/-

`example` checks the type without giving a name.
-/
example : ℕ := 0

-- example : ℕ := (0, 1)    -- type mismatch
/-

`#check` shows the type.
-/
#check 0
#check (0, 1)

def p : ℕ × ℕ := (0, 1)
/-

Types are expressions too.
-/
#check ℕ

example : (ℕ × ℕ) = (Prod Nat Nat) := rfl
/-

## 2. Propositions

A proposition is an expression of type `Prop`, provable or not.
-/
example : Prop := 0 = 0
example : Prop := 1 = 0
/-

A proposition is itself a type: a proof is an expression of that type.
-/
example : 0 = 0 := rfl
example : 1 + 1 = 2 := rfl

-- example : 1 = 0 := rfl    -- type mismatch
/-

## 4. Functions
-/
def plus1 : ℕ → ℕ := fun n => n + 1

def plus1' (n : ℕ) : ℕ := n + 1

example : plus1 = plus1' := rfl

#eval plus1 0

example : plus1 0 = 1 := rfl
/-

A function takes exactly one argument. Several arguments are notation.
-/
def add : ℕ → (ℕ → ℕ) := fun n => (fun m => n + m)

example : (ℕ → (ℕ → ℕ)) = (ℕ → ℕ → ℕ) := rfl

def add' (n m : ℕ) : ℕ := n + m

example : add = add' := rfl
/-

An implication is a function type: a proof turns proofs into proofs.
-/
example : 1 = 0 → 1 = 0 := fun h => h
/-

So is `∀`: the type of the value depends on the argument.
-/
example (n : ℕ) : n + 1 ≠ 0 := nofun

example : (n : ℕ) → n + 1 ≠ 0 := nofun

example : ∀ n : ℕ, n + 1 ≠ 0 := nofun

example : (∀ n : ℕ, n + 1 ≠ 0) = ((n : ℕ) → n + 1 ≠ 0) := rfl

example (p : Prop) : p → p := id
/-

## 5. Inductive types

`ℕ` is notation for `Nat`, an inductive type with two constructors.
-/
set_option pp.notation false in
#check ℕ

#print Nat
/-

Our own copy.
-/
inductive Nat' : Type where
  | zero : Nat'
  | succ (n : Nat') : Nat'

def z' : Nat' := Nat'.zero
/-

Pattern matching takes values apart.
-/
def Nat'.pred (n : Nat') : Nat' :=
  match n with
  | zero => zero
  | succ m => m

open Nat' in
example (n : Nat') : pred (succ n) = n := rfl
/-

Pairs: one constructor with two fields.
-/
#print Prod

inductive Prod' (α β : Type) : Type where
  | mk (fst : α) (snd : β) : Prod' α β

def p' : Prod' Nat' Nat' := Prod'.mk z' (Nat'.succ z')
/-

`And` is a product type.
-/
#print And
/-

`Or` has two constructors.
-/
#print Or
