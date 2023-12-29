module Stratosphere.AmazonMQ.ConfigurationAssociation.ConfigurationIdProperty (
        ConfigurationIdProperty(..), mkConfigurationIdProperty
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import Stratosphere.ResourceProperties
import Stratosphere.Value
data ConfigurationIdProperty
  = ConfigurationIdProperty {id :: (Value Prelude.Text),
                             revision :: (Value Prelude.Integer)}
  deriving stock (Prelude.Eq, Prelude.Show)
mkConfigurationIdProperty ::
  Value Prelude.Text
  -> Value Prelude.Integer -> ConfigurationIdProperty
mkConfigurationIdProperty id revision
  = ConfigurationIdProperty {id = id, revision = revision}
instance ToResourceProperties ConfigurationIdProperty where
  toResourceProperties ConfigurationIdProperty {..}
    = ResourceProperties
        {awsType = "AWS::AmazonMQ::ConfigurationAssociation.ConfigurationId",
         supportsTags = Prelude.False,
         properties = ["Id" JSON..= id, "Revision" JSON..= revision]}
instance JSON.ToJSON ConfigurationIdProperty where
  toJSON ConfigurationIdProperty {..}
    = JSON.object ["Id" JSON..= id, "Revision" JSON..= revision]
instance Property "Id" ConfigurationIdProperty where
  type PropertyType "Id" ConfigurationIdProperty = Value Prelude.Text
  set newValue ConfigurationIdProperty {..}
    = ConfigurationIdProperty {id = newValue, ..}
instance Property "Revision" ConfigurationIdProperty where
  type PropertyType "Revision" ConfigurationIdProperty = Value Prelude.Integer
  set newValue ConfigurationIdProperty {..}
    = ConfigurationIdProperty {revision = newValue, ..}