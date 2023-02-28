module Stratosphere.KafkaConnect.Connector.CustomPluginProperty (
        CustomPluginProperty(..), mkCustomPluginProperty
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import Stratosphere.ResourceProperties
import Stratosphere.Value
data CustomPluginProperty
  = CustomPluginProperty {customPluginArn :: (Value Prelude.Text),
                          revision :: (Value Prelude.Integer)}
mkCustomPluginProperty ::
  Value Prelude.Text -> Value Prelude.Integer -> CustomPluginProperty
mkCustomPluginProperty customPluginArn revision
  = CustomPluginProperty
      {customPluginArn = customPluginArn, revision = revision}
instance ToResourceProperties CustomPluginProperty where
  toResourceProperties CustomPluginProperty {..}
    = ResourceProperties
        {awsType = "AWS::KafkaConnect::Connector.CustomPlugin",
         supportsTags = Prelude.False,
         properties = ["CustomPluginArn" JSON..= customPluginArn,
                       "Revision" JSON..= revision]}
instance JSON.ToJSON CustomPluginProperty where
  toJSON CustomPluginProperty {..}
    = JSON.object
        ["CustomPluginArn" JSON..= customPluginArn,
         "Revision" JSON..= revision]
instance Property "CustomPluginArn" CustomPluginProperty where
  type PropertyType "CustomPluginArn" CustomPluginProperty = Value Prelude.Text
  set newValue CustomPluginProperty {..}
    = CustomPluginProperty {customPluginArn = newValue, ..}
instance Property "Revision" CustomPluginProperty where
  type PropertyType "Revision" CustomPluginProperty = Value Prelude.Integer
  set newValue CustomPluginProperty {..}
    = CustomPluginProperty {revision = newValue, ..}