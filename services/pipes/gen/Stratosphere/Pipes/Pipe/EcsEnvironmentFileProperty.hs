module Stratosphere.Pipes.Pipe.EcsEnvironmentFileProperty (
        EcsEnvironmentFileProperty(..), mkEcsEnvironmentFileProperty
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import Stratosphere.ResourceProperties
import Stratosphere.Value
data EcsEnvironmentFileProperty
  = EcsEnvironmentFileProperty {type' :: (Value Prelude.Text),
                                value :: (Value Prelude.Text)}
mkEcsEnvironmentFileProperty ::
  Value Prelude.Text
  -> Value Prelude.Text -> EcsEnvironmentFileProperty
mkEcsEnvironmentFileProperty type' value
  = EcsEnvironmentFileProperty {type' = type', value = value}
instance ToResourceProperties EcsEnvironmentFileProperty where
  toResourceProperties EcsEnvironmentFileProperty {..}
    = ResourceProperties
        {awsType = "AWS::Pipes::Pipe.EcsEnvironmentFile",
         supportsTags = Prelude.False,
         properties = ["Type" JSON..= type', "Value" JSON..= value]}
instance JSON.ToJSON EcsEnvironmentFileProperty where
  toJSON EcsEnvironmentFileProperty {..}
    = JSON.object ["Type" JSON..= type', "Value" JSON..= value]
instance Property "Type" EcsEnvironmentFileProperty where
  type PropertyType "Type" EcsEnvironmentFileProperty = Value Prelude.Text
  set newValue EcsEnvironmentFileProperty {..}
    = EcsEnvironmentFileProperty {type' = newValue, ..}
instance Property "Value" EcsEnvironmentFileProperty where
  type PropertyType "Value" EcsEnvironmentFileProperty = Value Prelude.Text
  set newValue EcsEnvironmentFileProperty {..}
    = EcsEnvironmentFileProperty {value = newValue, ..}