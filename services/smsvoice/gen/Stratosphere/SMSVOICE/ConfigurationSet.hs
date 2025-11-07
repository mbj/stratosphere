module Stratosphere.SMSVOICE.ConfigurationSet (
        module Exports, ConfigurationSet(..), mkConfigurationSet
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import {-# SOURCE #-} Stratosphere.SMSVOICE.ConfigurationSet.EventDestinationProperty as Exports
import Stratosphere.ResourceProperties
import Stratosphere.Tag
import Stratosphere.Value
data ConfigurationSet
  = -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-smsvoice-configurationset.html>
    ConfigurationSet {haddock_workaround_ :: (),
                      -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-smsvoice-configurationset.html#cfn-smsvoice-configurationset-configurationsetname>
                      configurationSetName :: (Prelude.Maybe (Value Prelude.Text)),
                      -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-smsvoice-configurationset.html#cfn-smsvoice-configurationset-defaultsenderid>
                      defaultSenderId :: (Prelude.Maybe (Value Prelude.Text)),
                      -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-smsvoice-configurationset.html#cfn-smsvoice-configurationset-eventdestinations>
                      eventDestinations :: (Prelude.Maybe [EventDestinationProperty]),
                      -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-smsvoice-configurationset.html#cfn-smsvoice-configurationset-messagefeedbackenabled>
                      messageFeedbackEnabled :: (Prelude.Maybe (Value Prelude.Bool)),
                      -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-smsvoice-configurationset.html#cfn-smsvoice-configurationset-protectconfigurationid>
                      protectConfigurationId :: (Prelude.Maybe (Value Prelude.Text)),
                      -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-smsvoice-configurationset.html#cfn-smsvoice-configurationset-tags>
                      tags :: (Prelude.Maybe [Tag])}
  deriving stock (Prelude.Eq, Prelude.Show)
mkConfigurationSet :: ConfigurationSet
mkConfigurationSet
  = ConfigurationSet
      {haddock_workaround_ = (), configurationSetName = Prelude.Nothing,
       defaultSenderId = Prelude.Nothing,
       eventDestinations = Prelude.Nothing,
       messageFeedbackEnabled = Prelude.Nothing,
       protectConfigurationId = Prelude.Nothing, tags = Prelude.Nothing}
instance ToResourceProperties ConfigurationSet where
  toResourceProperties ConfigurationSet {..}
    = ResourceProperties
        {awsType = "AWS::SMSVOICE::ConfigurationSet",
         supportsTags = Prelude.True,
         properties = Prelude.fromList
                        (Prelude.catMaybes
                           [(JSON..=) "ConfigurationSetName" Prelude.<$> configurationSetName,
                            (JSON..=) "DefaultSenderId" Prelude.<$> defaultSenderId,
                            (JSON..=) "EventDestinations" Prelude.<$> eventDestinations,
                            (JSON..=) "MessageFeedbackEnabled"
                              Prelude.<$> messageFeedbackEnabled,
                            (JSON..=) "ProtectConfigurationId"
                              Prelude.<$> protectConfigurationId,
                            (JSON..=) "Tags" Prelude.<$> tags])}
instance JSON.ToJSON ConfigurationSet where
  toJSON ConfigurationSet {..}
    = JSON.object
        (Prelude.fromList
           (Prelude.catMaybes
              [(JSON..=) "ConfigurationSetName" Prelude.<$> configurationSetName,
               (JSON..=) "DefaultSenderId" Prelude.<$> defaultSenderId,
               (JSON..=) "EventDestinations" Prelude.<$> eventDestinations,
               (JSON..=) "MessageFeedbackEnabled"
                 Prelude.<$> messageFeedbackEnabled,
               (JSON..=) "ProtectConfigurationId"
                 Prelude.<$> protectConfigurationId,
               (JSON..=) "Tags" Prelude.<$> tags]))
instance Property "ConfigurationSetName" ConfigurationSet where
  type PropertyType "ConfigurationSetName" ConfigurationSet = Value Prelude.Text
  set newValue ConfigurationSet {..}
    = ConfigurationSet
        {configurationSetName = Prelude.pure newValue, ..}
instance Property "DefaultSenderId" ConfigurationSet where
  type PropertyType "DefaultSenderId" ConfigurationSet = Value Prelude.Text
  set newValue ConfigurationSet {..}
    = ConfigurationSet {defaultSenderId = Prelude.pure newValue, ..}
instance Property "EventDestinations" ConfigurationSet where
  type PropertyType "EventDestinations" ConfigurationSet = [EventDestinationProperty]
  set newValue ConfigurationSet {..}
    = ConfigurationSet {eventDestinations = Prelude.pure newValue, ..}
instance Property "MessageFeedbackEnabled" ConfigurationSet where
  type PropertyType "MessageFeedbackEnabled" ConfigurationSet = Value Prelude.Bool
  set newValue ConfigurationSet {..}
    = ConfigurationSet
        {messageFeedbackEnabled = Prelude.pure newValue, ..}
instance Property "ProtectConfigurationId" ConfigurationSet where
  type PropertyType "ProtectConfigurationId" ConfigurationSet = Value Prelude.Text
  set newValue ConfigurationSet {..}
    = ConfigurationSet
        {protectConfigurationId = Prelude.pure newValue, ..}
instance Property "Tags" ConfigurationSet where
  type PropertyType "Tags" ConfigurationSet = [Tag]
  set newValue ConfigurationSet {..}
    = ConfigurationSet {tags = Prelude.pure newValue, ..}