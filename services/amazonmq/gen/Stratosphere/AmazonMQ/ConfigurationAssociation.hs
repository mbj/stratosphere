module Stratosphere.AmazonMQ.ConfigurationAssociation (
        module Exports, ConfigurationAssociation(..),
        mkConfigurationAssociation
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import {-# SOURCE #-} Stratosphere.AmazonMQ.ConfigurationAssociation.ConfigurationIdProperty as Exports
import Stratosphere.ResourceProperties
import Stratosphere.Value
data ConfigurationAssociation
  = -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-amazonmq-configurationassociation.html>
    ConfigurationAssociation {haddock_workaround_ :: (),
                              -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-amazonmq-configurationassociation.html#cfn-amazonmq-configurationassociation-broker>
                              broker :: (Value Prelude.Text),
                              -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-amazonmq-configurationassociation.html#cfn-amazonmq-configurationassociation-configuration>
                              configuration :: ConfigurationIdProperty}
  deriving stock (Prelude.Eq, Prelude.Show)
mkConfigurationAssociation ::
  Value Prelude.Text
  -> ConfigurationIdProperty -> ConfigurationAssociation
mkConfigurationAssociation broker configuration
  = ConfigurationAssociation
      {haddock_workaround_ = (), broker = broker,
       configuration = configuration}
instance ToResourceProperties ConfigurationAssociation where
  toResourceProperties ConfigurationAssociation {..}
    = ResourceProperties
        {awsType = "AWS::AmazonMQ::ConfigurationAssociation",
         supportsTags = Prelude.False,
         properties = ["Broker" JSON..= broker,
                       "Configuration" JSON..= configuration]}
instance JSON.ToJSON ConfigurationAssociation where
  toJSON ConfigurationAssociation {..}
    = JSON.object
        ["Broker" JSON..= broker, "Configuration" JSON..= configuration]
instance Property "Broker" ConfigurationAssociation where
  type PropertyType "Broker" ConfigurationAssociation = Value Prelude.Text
  set newValue ConfigurationAssociation {..}
    = ConfigurationAssociation {broker = newValue, ..}
instance Property "Configuration" ConfigurationAssociation where
  type PropertyType "Configuration" ConfigurationAssociation = ConfigurationIdProperty
  set newValue ConfigurationAssociation {..}
    = ConfigurationAssociation {configuration = newValue, ..}