module Stratosphere.LookoutMetrics.Alert.SNSConfigurationProperty (
        SNSConfigurationProperty(..), mkSNSConfigurationProperty
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import Stratosphere.ResourceProperties
import Stratosphere.Value
data SNSConfigurationProperty
  = SNSConfigurationProperty {roleArn :: (Value Prelude.Text),
                              snsTopicArn :: (Value Prelude.Text)}
mkSNSConfigurationProperty ::
  Value Prelude.Text
  -> Value Prelude.Text -> SNSConfigurationProperty
mkSNSConfigurationProperty roleArn snsTopicArn
  = SNSConfigurationProperty
      {roleArn = roleArn, snsTopicArn = snsTopicArn}
instance ToResourceProperties SNSConfigurationProperty where
  toResourceProperties SNSConfigurationProperty {..}
    = ResourceProperties
        {awsType = "AWS::LookoutMetrics::Alert.SNSConfiguration",
         supportsTags = Prelude.False,
         properties = ["RoleArn" JSON..= roleArn,
                       "SnsTopicArn" JSON..= snsTopicArn]}
instance JSON.ToJSON SNSConfigurationProperty where
  toJSON SNSConfigurationProperty {..}
    = JSON.object
        ["RoleArn" JSON..= roleArn, "SnsTopicArn" JSON..= snsTopicArn]
instance Property "RoleArn" SNSConfigurationProperty where
  type PropertyType "RoleArn" SNSConfigurationProperty = Value Prelude.Text
  set newValue SNSConfigurationProperty {..}
    = SNSConfigurationProperty {roleArn = newValue, ..}
instance Property "SnsTopicArn" SNSConfigurationProperty where
  type PropertyType "SnsTopicArn" SNSConfigurationProperty = Value Prelude.Text
  set newValue SNSConfigurationProperty {..}
    = SNSConfigurationProperty {snsTopicArn = newValue, ..}