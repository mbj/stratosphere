module Stratosphere.SES.MailManagerRuleSet.RuleActionProperty (
        module Exports, RuleActionProperty(..), mkRuleActionProperty
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import {-# SOURCE #-} Stratosphere.SES.MailManagerRuleSet.AddHeaderActionProperty as Exports
import {-# SOURCE #-} Stratosphere.SES.MailManagerRuleSet.ArchiveActionProperty as Exports
import {-# SOURCE #-} Stratosphere.SES.MailManagerRuleSet.DeliverToMailboxActionProperty as Exports
import {-# SOURCE #-} Stratosphere.SES.MailManagerRuleSet.DeliverToQBusinessActionProperty as Exports
import {-# SOURCE #-} Stratosphere.SES.MailManagerRuleSet.RelayActionProperty as Exports
import {-# SOURCE #-} Stratosphere.SES.MailManagerRuleSet.ReplaceRecipientActionProperty as Exports
import {-# SOURCE #-} Stratosphere.SES.MailManagerRuleSet.S3ActionProperty as Exports
import {-# SOURCE #-} Stratosphere.SES.MailManagerRuleSet.SendActionProperty as Exports
import {-# SOURCE #-} Stratosphere.SES.MailManagerRuleSet.SnsActionProperty as Exports
import Stratosphere.ResourceProperties
data RuleActionProperty
  = -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-ses-mailmanagerruleset-ruleaction.html>
    RuleActionProperty {haddock_workaround_ :: (),
                        -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-ses-mailmanagerruleset-ruleaction.html#cfn-ses-mailmanagerruleset-ruleaction-addheader>
                        addHeader :: (Prelude.Maybe AddHeaderActionProperty),
                        -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-ses-mailmanagerruleset-ruleaction.html#cfn-ses-mailmanagerruleset-ruleaction-archive>
                        archive :: (Prelude.Maybe ArchiveActionProperty),
                        -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-ses-mailmanagerruleset-ruleaction.html#cfn-ses-mailmanagerruleset-ruleaction-delivertomailbox>
                        deliverToMailbox :: (Prelude.Maybe DeliverToMailboxActionProperty),
                        -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-ses-mailmanagerruleset-ruleaction.html#cfn-ses-mailmanagerruleset-ruleaction-delivertoqbusiness>
                        deliverToQBusiness :: (Prelude.Maybe DeliverToQBusinessActionProperty),
                        -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-ses-mailmanagerruleset-ruleaction.html#cfn-ses-mailmanagerruleset-ruleaction-drop>
                        drop :: (Prelude.Maybe JSON.Object),
                        -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-ses-mailmanagerruleset-ruleaction.html#cfn-ses-mailmanagerruleset-ruleaction-publishtosns>
                        publishToSns :: (Prelude.Maybe SnsActionProperty),
                        -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-ses-mailmanagerruleset-ruleaction.html#cfn-ses-mailmanagerruleset-ruleaction-relay>
                        relay :: (Prelude.Maybe RelayActionProperty),
                        -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-ses-mailmanagerruleset-ruleaction.html#cfn-ses-mailmanagerruleset-ruleaction-replacerecipient>
                        replaceRecipient :: (Prelude.Maybe ReplaceRecipientActionProperty),
                        -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-ses-mailmanagerruleset-ruleaction.html#cfn-ses-mailmanagerruleset-ruleaction-send>
                        send :: (Prelude.Maybe SendActionProperty),
                        -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-ses-mailmanagerruleset-ruleaction.html#cfn-ses-mailmanagerruleset-ruleaction-writetos3>
                        writeToS3 :: (Prelude.Maybe S3ActionProperty)}
  deriving stock (Prelude.Eq, Prelude.Show)
mkRuleActionProperty :: RuleActionProperty
mkRuleActionProperty
  = RuleActionProperty
      {haddock_workaround_ = (), addHeader = Prelude.Nothing,
       archive = Prelude.Nothing, deliverToMailbox = Prelude.Nothing,
       deliverToQBusiness = Prelude.Nothing, drop = Prelude.Nothing,
       publishToSns = Prelude.Nothing, relay = Prelude.Nothing,
       replaceRecipient = Prelude.Nothing, send = Prelude.Nothing,
       writeToS3 = Prelude.Nothing}
instance ToResourceProperties RuleActionProperty where
  toResourceProperties RuleActionProperty {..}
    = ResourceProperties
        {awsType = "AWS::SES::MailManagerRuleSet.RuleAction",
         supportsTags = Prelude.False,
         properties = Prelude.fromList
                        (Prelude.catMaybes
                           [(JSON..=) "AddHeader" Prelude.<$> addHeader,
                            (JSON..=) "Archive" Prelude.<$> archive,
                            (JSON..=) "DeliverToMailbox" Prelude.<$> deliverToMailbox,
                            (JSON..=) "DeliverToQBusiness" Prelude.<$> deliverToQBusiness,
                            (JSON..=) "Drop" Prelude.<$> drop,
                            (JSON..=) "PublishToSns" Prelude.<$> publishToSns,
                            (JSON..=) "Relay" Prelude.<$> relay,
                            (JSON..=) "ReplaceRecipient" Prelude.<$> replaceRecipient,
                            (JSON..=) "Send" Prelude.<$> send,
                            (JSON..=) "WriteToS3" Prelude.<$> writeToS3])}
instance JSON.ToJSON RuleActionProperty where
  toJSON RuleActionProperty {..}
    = JSON.object
        (Prelude.fromList
           (Prelude.catMaybes
              [(JSON..=) "AddHeader" Prelude.<$> addHeader,
               (JSON..=) "Archive" Prelude.<$> archive,
               (JSON..=) "DeliverToMailbox" Prelude.<$> deliverToMailbox,
               (JSON..=) "DeliverToQBusiness" Prelude.<$> deliverToQBusiness,
               (JSON..=) "Drop" Prelude.<$> drop,
               (JSON..=) "PublishToSns" Prelude.<$> publishToSns,
               (JSON..=) "Relay" Prelude.<$> relay,
               (JSON..=) "ReplaceRecipient" Prelude.<$> replaceRecipient,
               (JSON..=) "Send" Prelude.<$> send,
               (JSON..=) "WriteToS3" Prelude.<$> writeToS3]))
instance Property "AddHeader" RuleActionProperty where
  type PropertyType "AddHeader" RuleActionProperty = AddHeaderActionProperty
  set newValue RuleActionProperty {..}
    = RuleActionProperty {addHeader = Prelude.pure newValue, ..}
instance Property "Archive" RuleActionProperty where
  type PropertyType "Archive" RuleActionProperty = ArchiveActionProperty
  set newValue RuleActionProperty {..}
    = RuleActionProperty {archive = Prelude.pure newValue, ..}
instance Property "DeliverToMailbox" RuleActionProperty where
  type PropertyType "DeliverToMailbox" RuleActionProperty = DeliverToMailboxActionProperty
  set newValue RuleActionProperty {..}
    = RuleActionProperty {deliverToMailbox = Prelude.pure newValue, ..}
instance Property "DeliverToQBusiness" RuleActionProperty where
  type PropertyType "DeliverToQBusiness" RuleActionProperty = DeliverToQBusinessActionProperty
  set newValue RuleActionProperty {..}
    = RuleActionProperty
        {deliverToQBusiness = Prelude.pure newValue, ..}
instance Property "Drop" RuleActionProperty where
  type PropertyType "Drop" RuleActionProperty = JSON.Object
  set newValue RuleActionProperty {..}
    = RuleActionProperty {drop = Prelude.pure newValue, ..}
instance Property "PublishToSns" RuleActionProperty where
  type PropertyType "PublishToSns" RuleActionProperty = SnsActionProperty
  set newValue RuleActionProperty {..}
    = RuleActionProperty {publishToSns = Prelude.pure newValue, ..}
instance Property "Relay" RuleActionProperty where
  type PropertyType "Relay" RuleActionProperty = RelayActionProperty
  set newValue RuleActionProperty {..}
    = RuleActionProperty {relay = Prelude.pure newValue, ..}
instance Property "ReplaceRecipient" RuleActionProperty where
  type PropertyType "ReplaceRecipient" RuleActionProperty = ReplaceRecipientActionProperty
  set newValue RuleActionProperty {..}
    = RuleActionProperty {replaceRecipient = Prelude.pure newValue, ..}
instance Property "Send" RuleActionProperty where
  type PropertyType "Send" RuleActionProperty = SendActionProperty
  set newValue RuleActionProperty {..}
    = RuleActionProperty {send = Prelude.pure newValue, ..}
instance Property "WriteToS3" RuleActionProperty where
  type PropertyType "WriteToS3" RuleActionProperty = S3ActionProperty
  set newValue RuleActionProperty {..}
    = RuleActionProperty {writeToS3 = Prelude.pure newValue, ..}