module Stratosphere.KinesisFirehose.DeliveryStream.MSKSourceConfigurationProperty (
        module Exports, MSKSourceConfigurationProperty(..),
        mkMSKSourceConfigurationProperty
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import {-# SOURCE #-} Stratosphere.KinesisFirehose.DeliveryStream.AuthenticationConfigurationProperty as Exports
import Stratosphere.ResourceProperties
import Stratosphere.Value
data MSKSourceConfigurationProperty
  = MSKSourceConfigurationProperty {authenticationConfiguration :: AuthenticationConfigurationProperty,
                                    mSKClusterARN :: (Value Prelude.Text),
                                    topicName :: (Value Prelude.Text)}
  deriving stock (Prelude.Eq, Prelude.Show)
mkMSKSourceConfigurationProperty ::
  AuthenticationConfigurationProperty
  -> Value Prelude.Text
     -> Value Prelude.Text -> MSKSourceConfigurationProperty
mkMSKSourceConfigurationProperty
  authenticationConfiguration
  mSKClusterARN
  topicName
  = MSKSourceConfigurationProperty
      {authenticationConfiguration = authenticationConfiguration,
       mSKClusterARN = mSKClusterARN, topicName = topicName}
instance ToResourceProperties MSKSourceConfigurationProperty where
  toResourceProperties MSKSourceConfigurationProperty {..}
    = ResourceProperties
        {awsType = "AWS::KinesisFirehose::DeliveryStream.MSKSourceConfiguration",
         supportsTags = Prelude.False,
         properties = ["AuthenticationConfiguration"
                         JSON..= authenticationConfiguration,
                       "MSKClusterARN" JSON..= mSKClusterARN,
                       "TopicName" JSON..= topicName]}
instance JSON.ToJSON MSKSourceConfigurationProperty where
  toJSON MSKSourceConfigurationProperty {..}
    = JSON.object
        ["AuthenticationConfiguration" JSON..= authenticationConfiguration,
         "MSKClusterARN" JSON..= mSKClusterARN,
         "TopicName" JSON..= topicName]
instance Property "AuthenticationConfiguration" MSKSourceConfigurationProperty where
  type PropertyType "AuthenticationConfiguration" MSKSourceConfigurationProperty = AuthenticationConfigurationProperty
  set newValue MSKSourceConfigurationProperty {..}
    = MSKSourceConfigurationProperty
        {authenticationConfiguration = newValue, ..}
instance Property "MSKClusterARN" MSKSourceConfigurationProperty where
  type PropertyType "MSKClusterARN" MSKSourceConfigurationProperty = Value Prelude.Text
  set newValue MSKSourceConfigurationProperty {..}
    = MSKSourceConfigurationProperty {mSKClusterARN = newValue, ..}
instance Property "TopicName" MSKSourceConfigurationProperty where
  type PropertyType "TopicName" MSKSourceConfigurationProperty = Value Prelude.Text
  set newValue MSKSourceConfigurationProperty {..}
    = MSKSourceConfigurationProperty {topicName = newValue, ..}