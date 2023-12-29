module Stratosphere.Lex.Bot.DefaultConditionalBranchProperty (
        module Exports, DefaultConditionalBranchProperty(..),
        mkDefaultConditionalBranchProperty
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import {-# SOURCE #-} Stratosphere.Lex.Bot.DialogStateProperty as Exports
import {-# SOURCE #-} Stratosphere.Lex.Bot.ResponseSpecificationProperty as Exports
import Stratosphere.ResourceProperties
data DefaultConditionalBranchProperty
  = DefaultConditionalBranchProperty {nextStep :: (Prelude.Maybe DialogStateProperty),
                                      response :: (Prelude.Maybe ResponseSpecificationProperty)}
  deriving stock (Prelude.Eq, Prelude.Show)
mkDefaultConditionalBranchProperty ::
  DefaultConditionalBranchProperty
mkDefaultConditionalBranchProperty
  = DefaultConditionalBranchProperty
      {nextStep = Prelude.Nothing, response = Prelude.Nothing}
instance ToResourceProperties DefaultConditionalBranchProperty where
  toResourceProperties DefaultConditionalBranchProperty {..}
    = ResourceProperties
        {awsType = "AWS::Lex::Bot.DefaultConditionalBranch",
         supportsTags = Prelude.False,
         properties = Prelude.fromList
                        (Prelude.catMaybes
                           [(JSON..=) "NextStep" Prelude.<$> nextStep,
                            (JSON..=) "Response" Prelude.<$> response])}
instance JSON.ToJSON DefaultConditionalBranchProperty where
  toJSON DefaultConditionalBranchProperty {..}
    = JSON.object
        (Prelude.fromList
           (Prelude.catMaybes
              [(JSON..=) "NextStep" Prelude.<$> nextStep,
               (JSON..=) "Response" Prelude.<$> response]))
instance Property "NextStep" DefaultConditionalBranchProperty where
  type PropertyType "NextStep" DefaultConditionalBranchProperty = DialogStateProperty
  set newValue DefaultConditionalBranchProperty {..}
    = DefaultConditionalBranchProperty
        {nextStep = Prelude.pure newValue, ..}
instance Property "Response" DefaultConditionalBranchProperty where
  type PropertyType "Response" DefaultConditionalBranchProperty = ResponseSpecificationProperty
  set newValue DefaultConditionalBranchProperty {..}
    = DefaultConditionalBranchProperty
        {response = Prelude.pure newValue, ..}