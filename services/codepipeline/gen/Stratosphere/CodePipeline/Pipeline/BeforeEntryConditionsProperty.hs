module Stratosphere.CodePipeline.Pipeline.BeforeEntryConditionsProperty (
        module Exports, BeforeEntryConditionsProperty(..),
        mkBeforeEntryConditionsProperty
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import {-# SOURCE #-} Stratosphere.CodePipeline.Pipeline.ConditionProperty as Exports
import Stratosphere.ResourceProperties
data BeforeEntryConditionsProperty
  = BeforeEntryConditionsProperty {conditions :: (Prelude.Maybe [ConditionProperty])}
  deriving stock (Prelude.Eq, Prelude.Show)
mkBeforeEntryConditionsProperty :: BeforeEntryConditionsProperty
mkBeforeEntryConditionsProperty
  = BeforeEntryConditionsProperty {conditions = Prelude.Nothing}
instance ToResourceProperties BeforeEntryConditionsProperty where
  toResourceProperties BeforeEntryConditionsProperty {..}
    = ResourceProperties
        {awsType = "AWS::CodePipeline::Pipeline.BeforeEntryConditions",
         supportsTags = Prelude.False,
         properties = Prelude.fromList
                        (Prelude.catMaybes
                           [(JSON..=) "Conditions" Prelude.<$> conditions])}
instance JSON.ToJSON BeforeEntryConditionsProperty where
  toJSON BeforeEntryConditionsProperty {..}
    = JSON.object
        (Prelude.fromList
           (Prelude.catMaybes
              [(JSON..=) "Conditions" Prelude.<$> conditions]))
instance Property "Conditions" BeforeEntryConditionsProperty where
  type PropertyType "Conditions" BeforeEntryConditionsProperty = [ConditionProperty]
  set newValue BeforeEntryConditionsProperty {}
    = BeforeEntryConditionsProperty
        {conditions = Prelude.pure newValue, ..}