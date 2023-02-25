module Stratosphere.Timestream.ScheduledQuery.SnsConfigurationProperty (
        SnsConfigurationProperty(..), mkSnsConfigurationProperty
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import Stratosphere.ResourceProperties
import Stratosphere.Value
data SnsConfigurationProperty
  = SnsConfigurationProperty {topicArn :: (Value Prelude.Text)}
mkSnsConfigurationProperty ::
  Value Prelude.Text -> SnsConfigurationProperty
mkSnsConfigurationProperty topicArn
  = SnsConfigurationProperty {topicArn = topicArn}
instance ToResourceProperties SnsConfigurationProperty where
  toResourceProperties SnsConfigurationProperty {..}
    = ResourceProperties
        {awsType = "AWS::Timestream::ScheduledQuery.SnsConfiguration",
         properties = ["TopicArn" JSON..= topicArn]}
instance JSON.ToJSON SnsConfigurationProperty where
  toJSON SnsConfigurationProperty {..}
    = JSON.object ["TopicArn" JSON..= topicArn]
instance Property "TopicArn" SnsConfigurationProperty where
  type PropertyType "TopicArn" SnsConfigurationProperty = Value Prelude.Text
  set newValue SnsConfigurationProperty {}
    = SnsConfigurationProperty {topicArn = newValue, ..}