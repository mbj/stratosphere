module Stratosphere.SMSVOICE.ConfigurationSet.SnsDestinationProperty (
        SnsDestinationProperty(..), mkSnsDestinationProperty
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import Stratosphere.ResourceProperties
import Stratosphere.Value
data SnsDestinationProperty
  = -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-smsvoice-configurationset-snsdestination.html>
    SnsDestinationProperty {haddock_workaround_ :: (),
                            -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-smsvoice-configurationset-snsdestination.html#cfn-smsvoice-configurationset-snsdestination-topicarn>
                            topicArn :: (Value Prelude.Text)}
  deriving stock (Prelude.Eq, Prelude.Show)
mkSnsDestinationProperty ::
  Value Prelude.Text -> SnsDestinationProperty
mkSnsDestinationProperty topicArn
  = SnsDestinationProperty
      {haddock_workaround_ = (), topicArn = topicArn}
instance ToResourceProperties SnsDestinationProperty where
  toResourceProperties SnsDestinationProperty {..}
    = ResourceProperties
        {awsType = "AWS::SMSVOICE::ConfigurationSet.SnsDestination",
         supportsTags = Prelude.False,
         properties = ["TopicArn" JSON..= topicArn]}
instance JSON.ToJSON SnsDestinationProperty where
  toJSON SnsDestinationProperty {..}
    = JSON.object ["TopicArn" JSON..= topicArn]
instance Property "TopicArn" SnsDestinationProperty where
  type PropertyType "TopicArn" SnsDestinationProperty = Value Prelude.Text
  set newValue SnsDestinationProperty {..}
    = SnsDestinationProperty {topicArn = newValue, ..}