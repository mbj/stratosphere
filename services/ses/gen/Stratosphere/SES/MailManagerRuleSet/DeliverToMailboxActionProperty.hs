module Stratosphere.SES.MailManagerRuleSet.DeliverToMailboxActionProperty (
        DeliverToMailboxActionProperty(..),
        mkDeliverToMailboxActionProperty
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import Stratosphere.ResourceProperties
import Stratosphere.Value
data DeliverToMailboxActionProperty
  = -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-ses-mailmanagerruleset-delivertomailboxaction.html>
    DeliverToMailboxActionProperty {haddock_workaround_ :: (),
                                    -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-ses-mailmanagerruleset-delivertomailboxaction.html#cfn-ses-mailmanagerruleset-delivertomailboxaction-actionfailurepolicy>
                                    actionFailurePolicy :: (Prelude.Maybe (Value Prelude.Text)),
                                    -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-ses-mailmanagerruleset-delivertomailboxaction.html#cfn-ses-mailmanagerruleset-delivertomailboxaction-mailboxarn>
                                    mailboxArn :: (Value Prelude.Text),
                                    -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-ses-mailmanagerruleset-delivertomailboxaction.html#cfn-ses-mailmanagerruleset-delivertomailboxaction-rolearn>
                                    roleArn :: (Value Prelude.Text)}
  deriving stock (Prelude.Eq, Prelude.Show)
mkDeliverToMailboxActionProperty ::
  Value Prelude.Text
  -> Value Prelude.Text -> DeliverToMailboxActionProperty
mkDeliverToMailboxActionProperty mailboxArn roleArn
  = DeliverToMailboxActionProperty
      {haddock_workaround_ = (), mailboxArn = mailboxArn,
       roleArn = roleArn, actionFailurePolicy = Prelude.Nothing}
instance ToResourceProperties DeliverToMailboxActionProperty where
  toResourceProperties DeliverToMailboxActionProperty {..}
    = ResourceProperties
        {awsType = "AWS::SES::MailManagerRuleSet.DeliverToMailboxAction",
         supportsTags = Prelude.False,
         properties = Prelude.fromList
                        ((Prelude.<>)
                           ["MailboxArn" JSON..= mailboxArn, "RoleArn" JSON..= roleArn]
                           (Prelude.catMaybes
                              [(JSON..=) "ActionFailurePolicy"
                                 Prelude.<$> actionFailurePolicy]))}
instance JSON.ToJSON DeliverToMailboxActionProperty where
  toJSON DeliverToMailboxActionProperty {..}
    = JSON.object
        (Prelude.fromList
           ((Prelude.<>)
              ["MailboxArn" JSON..= mailboxArn, "RoleArn" JSON..= roleArn]
              (Prelude.catMaybes
                 [(JSON..=) "ActionFailurePolicy"
                    Prelude.<$> actionFailurePolicy])))
instance Property "ActionFailurePolicy" DeliverToMailboxActionProperty where
  type PropertyType "ActionFailurePolicy" DeliverToMailboxActionProperty = Value Prelude.Text
  set newValue DeliverToMailboxActionProperty {..}
    = DeliverToMailboxActionProperty
        {actionFailurePolicy = Prelude.pure newValue, ..}
instance Property "MailboxArn" DeliverToMailboxActionProperty where
  type PropertyType "MailboxArn" DeliverToMailboxActionProperty = Value Prelude.Text
  set newValue DeliverToMailboxActionProperty {..}
    = DeliverToMailboxActionProperty {mailboxArn = newValue, ..}
instance Property "RoleArn" DeliverToMailboxActionProperty where
  type PropertyType "RoleArn" DeliverToMailboxActionProperty = Value Prelude.Text
  set newValue DeliverToMailboxActionProperty {..}
    = DeliverToMailboxActionProperty {roleArn = newValue, ..}