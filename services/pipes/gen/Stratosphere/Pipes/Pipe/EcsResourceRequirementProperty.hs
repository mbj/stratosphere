module Stratosphere.Pipes.Pipe.EcsResourceRequirementProperty (
        EcsResourceRequirementProperty(..),
        mkEcsResourceRequirementProperty
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import Stratosphere.ResourceProperties
import Stratosphere.Value
data EcsResourceRequirementProperty
  = EcsResourceRequirementProperty {type' :: (Value Prelude.Text),
                                    value :: (Value Prelude.Text)}
mkEcsResourceRequirementProperty ::
  Value Prelude.Text
  -> Value Prelude.Text -> EcsResourceRequirementProperty
mkEcsResourceRequirementProperty type' value
  = EcsResourceRequirementProperty {type' = type', value = value}
instance ToResourceProperties EcsResourceRequirementProperty where
  toResourceProperties EcsResourceRequirementProperty {..}
    = ResourceProperties
        {awsType = "AWS::Pipes::Pipe.EcsResourceRequirement",
         supportsTags = Prelude.False,
         properties = ["Type" JSON..= type', "Value" JSON..= value]}
instance JSON.ToJSON EcsResourceRequirementProperty where
  toJSON EcsResourceRequirementProperty {..}
    = JSON.object ["Type" JSON..= type', "Value" JSON..= value]
instance Property "Type" EcsResourceRequirementProperty where
  type PropertyType "Type" EcsResourceRequirementProperty = Value Prelude.Text
  set newValue EcsResourceRequirementProperty {..}
    = EcsResourceRequirementProperty {type' = newValue, ..}
instance Property "Value" EcsResourceRequirementProperty where
  type PropertyType "Value" EcsResourceRequirementProperty = Value Prelude.Text
  set newValue EcsResourceRequirementProperty {..}
    = EcsResourceRequirementProperty {value = newValue, ..}