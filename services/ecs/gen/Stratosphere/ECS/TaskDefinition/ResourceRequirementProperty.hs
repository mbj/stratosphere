module Stratosphere.ECS.TaskDefinition.ResourceRequirementProperty (
        ResourceRequirementProperty(..), mkResourceRequirementProperty
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import Stratosphere.ResourceProperties
import Stratosphere.Value
data ResourceRequirementProperty
  = ResourceRequirementProperty {type' :: (Value Prelude.Text),
                                 value :: (Value Prelude.Text)}
  deriving stock (Prelude.Eq, Prelude.Show)
mkResourceRequirementProperty ::
  Value Prelude.Text
  -> Value Prelude.Text -> ResourceRequirementProperty
mkResourceRequirementProperty type' value
  = ResourceRequirementProperty {type' = type', value = value}
instance ToResourceProperties ResourceRequirementProperty where
  toResourceProperties ResourceRequirementProperty {..}
    = ResourceProperties
        {awsType = "AWS::ECS::TaskDefinition.ResourceRequirement",
         supportsTags = Prelude.False,
         properties = ["Type" JSON..= type', "Value" JSON..= value]}
instance JSON.ToJSON ResourceRequirementProperty where
  toJSON ResourceRequirementProperty {..}
    = JSON.object ["Type" JSON..= type', "Value" JSON..= value]
instance Property "Type" ResourceRequirementProperty where
  type PropertyType "Type" ResourceRequirementProperty = Value Prelude.Text
  set newValue ResourceRequirementProperty {..}
    = ResourceRequirementProperty {type' = newValue, ..}
instance Property "Value" ResourceRequirementProperty where
  type PropertyType "Value" ResourceRequirementProperty = Value Prelude.Text
  set newValue ResourceRequirementProperty {..}
    = ResourceRequirementProperty {value = newValue, ..}