module Stratosphere.SES.ReceiptRule.SNSActionProperty (
        SNSActionProperty(..), mkSNSActionProperty
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import Stratosphere.ResourceProperties
import Stratosphere.Value
data SNSActionProperty
  = -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-ses-receiptrule-snsaction.html>
    SNSActionProperty {haddock_workaround_ :: (),
                       -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-ses-receiptrule-snsaction.html#cfn-ses-receiptrule-snsaction-encoding>
                       encoding :: (Prelude.Maybe (Value Prelude.Text)),
                       -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-ses-receiptrule-snsaction.html#cfn-ses-receiptrule-snsaction-topicarn>
                       topicArn :: (Prelude.Maybe (Value Prelude.Text))}
  deriving stock (Prelude.Eq, Prelude.Show)
mkSNSActionProperty :: SNSActionProperty
mkSNSActionProperty
  = SNSActionProperty
      {haddock_workaround_ = (), encoding = Prelude.Nothing,
       topicArn = Prelude.Nothing}
instance ToResourceProperties SNSActionProperty where
  toResourceProperties SNSActionProperty {..}
    = ResourceProperties
        {awsType = "AWS::SES::ReceiptRule.SNSAction",
         supportsTags = Prelude.False,
         properties = Prelude.fromList
                        (Prelude.catMaybes
                           [(JSON..=) "Encoding" Prelude.<$> encoding,
                            (JSON..=) "TopicArn" Prelude.<$> topicArn])}
instance JSON.ToJSON SNSActionProperty where
  toJSON SNSActionProperty {..}
    = JSON.object
        (Prelude.fromList
           (Prelude.catMaybes
              [(JSON..=) "Encoding" Prelude.<$> encoding,
               (JSON..=) "TopicArn" Prelude.<$> topicArn]))
instance Property "Encoding" SNSActionProperty where
  type PropertyType "Encoding" SNSActionProperty = Value Prelude.Text
  set newValue SNSActionProperty {..}
    = SNSActionProperty {encoding = Prelude.pure newValue, ..}
instance Property "TopicArn" SNSActionProperty where
  type PropertyType "TopicArn" SNSActionProperty = Value Prelude.Text
  set newValue SNSActionProperty {..}
    = SNSActionProperty {topicArn = Prelude.pure newValue, ..}