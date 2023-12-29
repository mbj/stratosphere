module Stratosphere.Lex.Bot.ConditionalBranchProperty (
        module Exports, ConditionalBranchProperty(..),
        mkConditionalBranchProperty
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import {-# SOURCE #-} Stratosphere.Lex.Bot.ConditionProperty as Exports
import {-# SOURCE #-} Stratosphere.Lex.Bot.DialogStateProperty as Exports
import {-# SOURCE #-} Stratosphere.Lex.Bot.ResponseSpecificationProperty as Exports
import Stratosphere.ResourceProperties
import Stratosphere.Value
data ConditionalBranchProperty
  = ConditionalBranchProperty {condition :: ConditionProperty,
                               name :: (Value Prelude.Text),
                               nextStep :: DialogStateProperty,
                               response :: (Prelude.Maybe ResponseSpecificationProperty)}
  deriving stock (Prelude.Eq, Prelude.Show)
mkConditionalBranchProperty ::
  ConditionProperty
  -> Value Prelude.Text
     -> DialogStateProperty -> ConditionalBranchProperty
mkConditionalBranchProperty condition name nextStep
  = ConditionalBranchProperty
      {condition = condition, name = name, nextStep = nextStep,
       response = Prelude.Nothing}
instance ToResourceProperties ConditionalBranchProperty where
  toResourceProperties ConditionalBranchProperty {..}
    = ResourceProperties
        {awsType = "AWS::Lex::Bot.ConditionalBranch",
         supportsTags = Prelude.False,
         properties = Prelude.fromList
                        ((Prelude.<>)
                           ["Condition" JSON..= condition, "Name" JSON..= name,
                            "NextStep" JSON..= nextStep]
                           (Prelude.catMaybes [(JSON..=) "Response" Prelude.<$> response]))}
instance JSON.ToJSON ConditionalBranchProperty where
  toJSON ConditionalBranchProperty {..}
    = JSON.object
        (Prelude.fromList
           ((Prelude.<>)
              ["Condition" JSON..= condition, "Name" JSON..= name,
               "NextStep" JSON..= nextStep]
              (Prelude.catMaybes [(JSON..=) "Response" Prelude.<$> response])))
instance Property "Condition" ConditionalBranchProperty where
  type PropertyType "Condition" ConditionalBranchProperty = ConditionProperty
  set newValue ConditionalBranchProperty {..}
    = ConditionalBranchProperty {condition = newValue, ..}
instance Property "Name" ConditionalBranchProperty where
  type PropertyType "Name" ConditionalBranchProperty = Value Prelude.Text
  set newValue ConditionalBranchProperty {..}
    = ConditionalBranchProperty {name = newValue, ..}
instance Property "NextStep" ConditionalBranchProperty where
  type PropertyType "NextStep" ConditionalBranchProperty = DialogStateProperty
  set newValue ConditionalBranchProperty {..}
    = ConditionalBranchProperty {nextStep = newValue, ..}
instance Property "Response" ConditionalBranchProperty where
  type PropertyType "Response" ConditionalBranchProperty = ResponseSpecificationProperty
  set newValue ConditionalBranchProperty {..}
    = ConditionalBranchProperty {response = Prelude.pure newValue, ..}