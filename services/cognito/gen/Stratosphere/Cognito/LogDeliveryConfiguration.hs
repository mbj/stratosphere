module Stratosphere.Cognito.LogDeliveryConfiguration (
        module Exports, LogDeliveryConfiguration(..),
        mkLogDeliveryConfiguration
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import {-# SOURCE #-} Stratosphere.Cognito.LogDeliveryConfiguration.LogConfigurationProperty as Exports
import Stratosphere.ResourceProperties
import Stratosphere.Value
data LogDeliveryConfiguration
  = LogDeliveryConfiguration {logConfigurations :: (Prelude.Maybe [LogConfigurationProperty]),
                              userPoolId :: (Value Prelude.Text)}
  deriving stock (Prelude.Eq, Prelude.Show)
mkLogDeliveryConfiguration ::
  Value Prelude.Text -> LogDeliveryConfiguration
mkLogDeliveryConfiguration userPoolId
  = LogDeliveryConfiguration
      {userPoolId = userPoolId, logConfigurations = Prelude.Nothing}
instance ToResourceProperties LogDeliveryConfiguration where
  toResourceProperties LogDeliveryConfiguration {..}
    = ResourceProperties
        {awsType = "AWS::Cognito::LogDeliveryConfiguration",
         supportsTags = Prelude.False,
         properties = Prelude.fromList
                        ((Prelude.<>)
                           ["UserPoolId" JSON..= userPoolId]
                           (Prelude.catMaybes
                              [(JSON..=) "LogConfigurations" Prelude.<$> logConfigurations]))}
instance JSON.ToJSON LogDeliveryConfiguration where
  toJSON LogDeliveryConfiguration {..}
    = JSON.object
        (Prelude.fromList
           ((Prelude.<>)
              ["UserPoolId" JSON..= userPoolId]
              (Prelude.catMaybes
                 [(JSON..=) "LogConfigurations" Prelude.<$> logConfigurations])))
instance Property "LogConfigurations" LogDeliveryConfiguration where
  type PropertyType "LogConfigurations" LogDeliveryConfiguration = [LogConfigurationProperty]
  set newValue LogDeliveryConfiguration {..}
    = LogDeliveryConfiguration
        {logConfigurations = Prelude.pure newValue, ..}
instance Property "UserPoolId" LogDeliveryConfiguration where
  type PropertyType "UserPoolId" LogDeliveryConfiguration = Value Prelude.Text
  set newValue LogDeliveryConfiguration {..}
    = LogDeliveryConfiguration {userPoolId = newValue, ..}