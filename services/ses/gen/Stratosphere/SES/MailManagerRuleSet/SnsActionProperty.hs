module Stratosphere.SES.MailManagerRuleSet.SnsActionProperty (
        SnsActionProperty(..), mkSnsActionProperty
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import Stratosphere.ResourceProperties
import Stratosphere.Value
data SnsActionProperty
  = -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-ses-mailmanagerruleset-snsaction.html>
    SnsActionProperty {haddock_workaround_ :: (),
                       -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-ses-mailmanagerruleset-snsaction.html#cfn-ses-mailmanagerruleset-snsaction-actionfailurepolicy>
                       actionFailurePolicy :: (Prelude.Maybe (Value Prelude.Text)),
                       -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-ses-mailmanagerruleset-snsaction.html#cfn-ses-mailmanagerruleset-snsaction-encoding>
                       encoding :: (Prelude.Maybe (Value Prelude.Text)),
                       -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-ses-mailmanagerruleset-snsaction.html#cfn-ses-mailmanagerruleset-snsaction-payloadtype>
                       payloadType :: (Prelude.Maybe (Value Prelude.Text)),
                       -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-ses-mailmanagerruleset-snsaction.html#cfn-ses-mailmanagerruleset-snsaction-rolearn>
                       roleArn :: (Value Prelude.Text),
                       -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-ses-mailmanagerruleset-snsaction.html#cfn-ses-mailmanagerruleset-snsaction-topicarn>
                       topicArn :: (Value Prelude.Text)}
  deriving stock (Prelude.Eq, Prelude.Show)
mkSnsActionProperty ::
  Value Prelude.Text -> Value Prelude.Text -> SnsActionProperty
mkSnsActionProperty roleArn topicArn
  = SnsActionProperty
      {haddock_workaround_ = (), roleArn = roleArn, topicArn = topicArn,
       actionFailurePolicy = Prelude.Nothing, encoding = Prelude.Nothing,
       payloadType = Prelude.Nothing}
instance ToResourceProperties SnsActionProperty where
  toResourceProperties SnsActionProperty {..}
    = ResourceProperties
        {awsType = "AWS::SES::MailManagerRuleSet.SnsAction",
         supportsTags = Prelude.False,
         properties = Prelude.fromList
                        ((Prelude.<>)
                           ["RoleArn" JSON..= roleArn, "TopicArn" JSON..= topicArn]
                           (Prelude.catMaybes
                              [(JSON..=) "ActionFailurePolicy" Prelude.<$> actionFailurePolicy,
                               (JSON..=) "Encoding" Prelude.<$> encoding,
                               (JSON..=) "PayloadType" Prelude.<$> payloadType]))}
instance JSON.ToJSON SnsActionProperty where
  toJSON SnsActionProperty {..}
    = JSON.object
        (Prelude.fromList
           ((Prelude.<>)
              ["RoleArn" JSON..= roleArn, "TopicArn" JSON..= topicArn]
              (Prelude.catMaybes
                 [(JSON..=) "ActionFailurePolicy" Prelude.<$> actionFailurePolicy,
                  (JSON..=) "Encoding" Prelude.<$> encoding,
                  (JSON..=) "PayloadType" Prelude.<$> payloadType])))
instance Property "ActionFailurePolicy" SnsActionProperty where
  type PropertyType "ActionFailurePolicy" SnsActionProperty = Value Prelude.Text
  set newValue SnsActionProperty {..}
    = SnsActionProperty
        {actionFailurePolicy = Prelude.pure newValue, ..}
instance Property "Encoding" SnsActionProperty where
  type PropertyType "Encoding" SnsActionProperty = Value Prelude.Text
  set newValue SnsActionProperty {..}
    = SnsActionProperty {encoding = Prelude.pure newValue, ..}
instance Property "PayloadType" SnsActionProperty where
  type PropertyType "PayloadType" SnsActionProperty = Value Prelude.Text
  set newValue SnsActionProperty {..}
    = SnsActionProperty {payloadType = Prelude.pure newValue, ..}
instance Property "RoleArn" SnsActionProperty where
  type PropertyType "RoleArn" SnsActionProperty = Value Prelude.Text
  set newValue SnsActionProperty {..}
    = SnsActionProperty {roleArn = newValue, ..}
instance Property "TopicArn" SnsActionProperty where
  type PropertyType "TopicArn" SnsActionProperty = Value Prelude.Text
  set newValue SnsActionProperty {..}
    = SnsActionProperty {topicArn = newValue, ..}