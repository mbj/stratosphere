module Stratosphere.Batch.JobDefinition.ResourceRequirementProperty (
        ResourceRequirementProperty(..), mkResourceRequirementProperty
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import Stratosphere.ResourceProperties
import Stratosphere.Value
data ResourceRequirementProperty
  = ResourceRequirementProperty {type' :: (Prelude.Maybe (Value Prelude.Text)),
                                 value :: (Prelude.Maybe (Value Prelude.Text))}
mkResourceRequirementProperty :: ResourceRequirementProperty
mkResourceRequirementProperty
  = ResourceRequirementProperty
      {type' = Prelude.Nothing, value = Prelude.Nothing}
instance ToResourceProperties ResourceRequirementProperty where
  toResourceProperties ResourceRequirementProperty {..}
    = ResourceProperties
        {awsType = "AWS::Batch::JobDefinition.ResourceRequirement",
         properties = Prelude.fromList
                        (Prelude.catMaybes
                           [(JSON..=) "Type" Prelude.<$> type',
                            (JSON..=) "Value" Prelude.<$> value])}
instance JSON.ToJSON ResourceRequirementProperty where
  toJSON ResourceRequirementProperty {..}
    = JSON.object
        (Prelude.fromList
           (Prelude.catMaybes
              [(JSON..=) "Type" Prelude.<$> type',
               (JSON..=) "Value" Prelude.<$> value]))
instance Property "Type" ResourceRequirementProperty where
  type PropertyType "Type" ResourceRequirementProperty = Value Prelude.Text
  set newValue ResourceRequirementProperty {..}
    = ResourceRequirementProperty {type' = Prelude.pure newValue, ..}
instance Property "Value" ResourceRequirementProperty where
  type PropertyType "Value" ResourceRequirementProperty = Value Prelude.Text
  set newValue ResourceRequirementProperty {..}
    = ResourceRequirementProperty {value = Prelude.pure newValue, ..}