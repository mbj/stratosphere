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
  = ConfigurationAssociation {broker :: (Value Prelude.Text),
                              configuration :: ConfigurationIdProperty}
mkConfigurationAssociation ::
  Value Prelude.Text
  -> ConfigurationIdProperty -> ConfigurationAssociation
mkConfigurationAssociation broker configuration
  = ConfigurationAssociation
      {broker = broker, configuration = configuration}
instance ToResourceProperties ConfigurationAssociation where
  toResourceProperties ConfigurationAssociation {..}
    = ResourceProperties
        {awsType = "AWS::AmazonMQ::ConfigurationAssociation",
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