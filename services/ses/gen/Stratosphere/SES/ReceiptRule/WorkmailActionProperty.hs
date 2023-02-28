module Stratosphere.SES.ReceiptRule.WorkmailActionProperty (
        WorkmailActionProperty(..), mkWorkmailActionProperty
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import Stratosphere.ResourceProperties
import Stratosphere.Value
data WorkmailActionProperty
  = WorkmailActionProperty {organizationArn :: (Value Prelude.Text),
                            topicArn :: (Prelude.Maybe (Value Prelude.Text))}
mkWorkmailActionProperty ::
  Value Prelude.Text -> WorkmailActionProperty
mkWorkmailActionProperty organizationArn
  = WorkmailActionProperty
      {organizationArn = organizationArn, topicArn = Prelude.Nothing}
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