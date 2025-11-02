module Stratosphere.SES.ReceiptRule.WorkmailActionProperty (
        WorkmailActionProperty(..), mkWorkmailActionProperty
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import Stratosphere.ResourceProperties
import Stratosphere.Value
data WorkmailActionProperty
  = -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-ses-receiptrule-workmailaction.html>
    WorkmailActionProperty {haddock_workaround_ :: (),
                            -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-ses-receiptrule-workmailaction.html#cfn-ses-receiptrule-workmailaction-organizationarn>
                            organizationArn :: (Value Prelude.Text),
                            -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-ses-receiptrule-workmailaction.html#cfn-ses-receiptrule-workmailaction-topicarn>
                            topicArn :: (Prelude.Maybe (Value Prelude.Text))}
  deriving stock (Prelude.Eq, Prelude.Show)
mkWorkmailActionProperty ::
  Value Prelude.Text -> WorkmailActionProperty
mkWorkmailActionProperty organizationArn
  = WorkmailActionProperty
      {haddock_workaround_ = (), organizationArn = organizationArn,
       topicArn = Prelude.Nothing}
instance ToResourceProperties WorkmailActionProperty where
  toResourceProperties WorkmailActionProperty {..}
    = ResourceProperties
        {awsType = "AWS::SES::ReceiptRule.WorkmailAction",
         supportsTags = Prelude.False,
         properties = Prelude.fromList
                        ((Prelude.<>)
                           ["OrganizationArn" JSON..= organizationArn]
                           (Prelude.catMaybes [(JSON..=) "TopicArn" Prelude.<$> topicArn]))}
instance JSON.ToJSON WorkmailActionProperty where
  toJSON WorkmailActionProperty {..}
    = JSON.object
        (Prelude.fromList
           ((Prelude.<>)
              ["OrganizationArn" JSON..= organizationArn]
              (Prelude.catMaybes [(JSON..=) "TopicArn" Prelude.<$> topicArn])))
instance Property "OrganizationArn" WorkmailActionProperty where
  type PropertyType "OrganizationArn" WorkmailActionProperty = Value Prelude.Text
  set newValue WorkmailActionProperty {..}
    = WorkmailActionProperty {organizationArn = newValue, ..}
instance Property "TopicArn" WorkmailActionProperty where
  type PropertyType "TopicArn" WorkmailActionProperty = Value Prelude.Text
  set newValue WorkmailActionProperty {..}
    = WorkmailActionProperty {topicArn = Prelude.pure newValue, ..}