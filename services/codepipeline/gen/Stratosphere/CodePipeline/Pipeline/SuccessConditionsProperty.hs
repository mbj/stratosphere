module Stratosphere.CodePipeline.Pipeline.SuccessConditionsProperty (
        module Exports, SuccessConditionsProperty(..),
        mkSuccessConditionsProperty
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import {-# SOURCE #-} Stratosphere.CodePipeline.Pipeline.ConditionProperty as Exports
import Stratosphere.ResourceProperties
data SuccessConditionsProperty
  = SuccessConditionsProperty {conditions :: (Prelude.Maybe [ConditionProperty])}
  deriving stock (Prelude.Eq, Prelude.Show)
mkSuccessConditionsProperty :: SuccessConditionsProperty
mkSuccessConditionsProperty
  = SuccessConditionsProperty {conditions = Prelude.Nothing}
instance ToResourceProperties SuccessConditionsProperty where
  toResourceProperties SuccessConditionsProperty {..}
    = ResourceProperties
        {awsType = "AWS::CodePipeline::Pipeline.SuccessConditions",
         supportsTags = Prelude.False,
         properties = Prelude.fromList
                        (Prelude.catMaybes
                           [(JSON..=) "Conditions" Prelude.<$> conditions])}
instance JSON.ToJSON SuccessConditionsProperty where
  toJSON SuccessConditionsProperty {..}
    = JSON.object
        (Prelude.fromList
           (Prelude.catMaybes
              [(JSON..=) "Conditions" Prelude.<$> conditions]))
instance Property "Conditions" SuccessConditionsProperty where
  type PropertyType "Conditions" SuccessConditionsProperty = [ConditionProperty]
  set newValue SuccessConditionsProperty {}
    = SuccessConditionsProperty
        {conditions = Prelude.pure newValue, ..}