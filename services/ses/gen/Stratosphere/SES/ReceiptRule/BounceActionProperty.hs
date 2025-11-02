module Stratosphere.SES.ReceiptRule.BounceActionProperty (
        BounceActionProperty(..), mkBounceActionProperty
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import Stratosphere.ResourceProperties
import Stratosphere.Value
data BounceActionProperty
  = -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-ses-receiptrule-bounceaction.html>
    BounceActionProperty {haddock_workaround_ :: (),
                          -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-ses-receiptrule-bounceaction.html#cfn-ses-receiptrule-bounceaction-message>
                          message :: (Value Prelude.Text),
                          -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-ses-receiptrule-bounceaction.html#cfn-ses-receiptrule-bounceaction-sender>
                          sender :: (Value Prelude.Text),
                          -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-ses-receiptrule-bounceaction.html#cfn-ses-receiptrule-bounceaction-smtpreplycode>
                          smtpReplyCode :: (Value Prelude.Text),
                          -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-ses-receiptrule-bounceaction.html#cfn-ses-receiptrule-bounceaction-statuscode>
                          statusCode :: (Prelude.Maybe (Value Prelude.Text)),
                          -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-ses-receiptrule-bounceaction.html#cfn-ses-receiptrule-bounceaction-topicarn>
                          topicArn :: (Prelude.Maybe (Value Prelude.Text))}
  deriving stock (Prelude.Eq, Prelude.Show)
mkBounceActionProperty ::
  Value Prelude.Text
  -> Value Prelude.Text -> Value Prelude.Text -> BounceActionProperty
mkBounceActionProperty message sender smtpReplyCode
  = BounceActionProperty
      {haddock_workaround_ = (), message = message, sender = sender,
       smtpReplyCode = smtpReplyCode, statusCode = Prelude.Nothing,
       topicArn = Prelude.Nothing}
instance ToResourceProperties BounceActionProperty where
  toResourceProperties BounceActionProperty {..}
    = ResourceProperties
        {awsType = "AWS::SES::ReceiptRule.BounceAction",
         supportsTags = Prelude.False,
         properties = Prelude.fromList
                        ((Prelude.<>)
                           ["Message" JSON..= message, "Sender" JSON..= sender,
                            "SmtpReplyCode" JSON..= smtpReplyCode]
                           (Prelude.catMaybes
                              [(JSON..=) "StatusCode" Prelude.<$> statusCode,
                               (JSON..=) "TopicArn" Prelude.<$> topicArn]))}
instance JSON.ToJSON BounceActionProperty where
  toJSON BounceActionProperty {..}
    = JSON.object
        (Prelude.fromList
           ((Prelude.<>)
              ["Message" JSON..= message, "Sender" JSON..= sender,
               "SmtpReplyCode" JSON..= smtpReplyCode]
              (Prelude.catMaybes
                 [(JSON..=) "StatusCode" Prelude.<$> statusCode,
                  (JSON..=) "TopicArn" Prelude.<$> topicArn])))
instance Property "Message" BounceActionProperty where
  type PropertyType "Message" BounceActionProperty = Value Prelude.Text
  set newValue BounceActionProperty {..}
    = BounceActionProperty {message = newValue, ..}
instance Property "Sender" BounceActionProperty where
  type PropertyType "Sender" BounceActionProperty = Value Prelude.Text
  set newValue BounceActionProperty {..}
    = BounceActionProperty {sender = newValue, ..}
instance Property "SmtpReplyCode" BounceActionProperty where
  type PropertyType "SmtpReplyCode" BounceActionProperty = Value Prelude.Text
  set newValue BounceActionProperty {..}
    = BounceActionProperty {smtpReplyCode = newValue, ..}
instance Property "StatusCode" BounceActionProperty where
  type PropertyType "StatusCode" BounceActionProperty = Value Prelude.Text
  set newValue BounceActionProperty {..}
    = BounceActionProperty {statusCode = Prelude.pure newValue, ..}
instance Property "TopicArn" BounceActionProperty where
  type PropertyType "TopicArn" BounceActionProperty = Value Prelude.Text
  set newValue BounceActionProperty {..}
    = BounceActionProperty {topicArn = Prelude.pure newValue, ..}