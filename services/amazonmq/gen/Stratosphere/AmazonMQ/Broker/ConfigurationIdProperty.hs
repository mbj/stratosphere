module Stratosphere.AmazonMQ.Broker.ConfigurationIdProperty (
        ConfigurationIdProperty(..), mkConfigurationIdProperty
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import Stratosphere.ResourceProperties
import Stratosphere.Value
data ConfigurationIdProperty
  = -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-amazonmq-broker-configurationid.html>
    ConfigurationIdProperty {haddock_workaround_ :: (),
                             -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-amazonmq-broker-configurationid.html#cfn-amazonmq-broker-configurationid-id>
                             id :: (Value Prelude.Text),
                             -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-amazonmq-broker-configurationid.html#cfn-amazonmq-broker-configurationid-revision>
                             revision :: (Value Prelude.Integer)}
  deriving stock (Prelude.Eq, Prelude.Show)
mkConfigurationIdProperty ::
  Value Prelude.Text
  -> Value Prelude.Integer -> ConfigurationIdProperty
mkConfigurationIdProperty id revision
  = ConfigurationIdProperty
      {haddock_workaround_ = (), id = id, revision = revision}
instance ToResourceProperties ConfigurationIdProperty where
  toResourceProperties ConfigurationIdProperty {..}
    = ResourceProperties
        {awsType = "AWS::AmazonMQ::Broker.ConfigurationId",
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