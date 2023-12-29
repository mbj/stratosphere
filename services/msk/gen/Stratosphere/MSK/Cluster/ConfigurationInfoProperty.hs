module Stratosphere.MSK.Cluster.ConfigurationInfoProperty (
        ConfigurationInfoProperty(..), mkConfigurationInfoProperty
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import Stratosphere.ResourceProperties
import Stratosphere.Value
data ConfigurationInfoProperty
  = ConfigurationInfoProperty {arn :: (Value Prelude.Text),
                               revision :: (Value Prelude.Integer)}
  deriving stock (Prelude.Eq, Prelude.Show)
mkConfigurationInfoProperty ::
  Value Prelude.Text
  -> Value Prelude.Integer -> ConfigurationInfoProperty
mkConfigurationInfoProperty arn revision
  = ConfigurationInfoProperty {arn = arn, revision = revision}
instance ToResourceProperties ConfigurationInfoProperty where
  toResourceProperties ConfigurationInfoProperty {..}
    = ResourceProperties
        {awsType = "AWS::MSK::Cluster.ConfigurationInfo",
         supportsTags = Prelude.False,
         properties = ["Arn" JSON..= arn, "Revision" JSON..= revision]}
instance JSON.ToJSON ConfigurationInfoProperty where
  toJSON ConfigurationInfoProperty {..}
    = JSON.object ["Arn" JSON..= arn, "Revision" JSON..= revision]
instance Property "Arn" ConfigurationInfoProperty where
  type PropertyType "Arn" ConfigurationInfoProperty = Value Prelude.Text
  set newValue ConfigurationInfoProperty {..}
    = ConfigurationInfoProperty {arn = newValue, ..}
instance Property "Revision" ConfigurationInfoProperty where
  type PropertyType "Revision" ConfigurationInfoProperty = Value Prelude.Integer
  set newValue ConfigurationInfoProperty {..}
    = ConfigurationInfoProperty {revision = newValue, ..}