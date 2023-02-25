module Stratosphere.SSMContacts.ContactChannel (
        ContactChannel(..), mkContactChannel
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import Stratosphere.ResourceProperties
import Stratosphere.Value
data ContactChannel
  = ContactChannel {channelAddress :: (Value Prelude.Text),
                    channelName :: (Value Prelude.Text),
                    channelType :: (Value Prelude.Text),
                    contactId :: (Value Prelude.Text),
                    deferActivation :: (Prelude.Maybe (Value Prelude.Bool))}
mkContactChannel ::
  Value Prelude.Text
  -> Value Prelude.Text
     -> Value Prelude.Text -> Value Prelude.Text -> ContactChannel
mkContactChannel channelAddress channelName channelType contactId
  = ContactChannel
      {channelAddress = channelAddress, channelName = channelName,
       channelType = channelType, contactId = contactId,
       deferActivation = Prelude.Nothing}
instance ToResourceProperties ContactChannel where
  toResourceProperties ContactChannel {..}
    = ResourceProperties
        {awsType = "AWS::SSMContacts::ContactChannel",
         properties = Prelude.fromList
                        ((Prelude.<>)
                           ["ChannelAddress" JSON..= channelAddress,
                            "ChannelName" JSON..= channelName,
                            "ChannelType" JSON..= channelType, "ContactId" JSON..= contactId]
                           (Prelude.catMaybes
                              [(JSON..=) "DeferActivation" Prelude.<$> deferActivation]))}
instance JSON.ToJSON ContactChannel where
  toJSON ContactChannel {..}
    = JSON.object
        (Prelude.fromList
           ((Prelude.<>)
              ["ChannelAddress" JSON..= channelAddress,
               "ChannelName" JSON..= channelName,
               "ChannelType" JSON..= channelType, "ContactId" JSON..= contactId]
              (Prelude.catMaybes
                 [(JSON..=) "DeferActivation" Prelude.<$> deferActivation])))
instance Property "ChannelAddress" ContactChannel where
  type PropertyType "ChannelAddress" ContactChannel = Value Prelude.Text
  set newValue ContactChannel {..}
    = ContactChannel {channelAddress = newValue, ..}
instance Property "ChannelName" ContactChannel where
  type PropertyType "ChannelName" ContactChannel = Value Prelude.Text
  set newValue ContactChannel {..}
    = ContactChannel {channelName = newValue, ..}
instance Property "ChannelType" ContactChannel where
  type PropertyType "ChannelType" ContactChannel = Value Prelude.Text
  set newValue ContactChannel {..}
    = ContactChannel {channelType = newValue, ..}
instance Property "ContactId" ContactChannel where
  type PropertyType "ContactId" ContactChannel = Value Prelude.Text
  set newValue ContactChannel {..}
    = ContactChannel {contactId = newValue, ..}
instance Property "DeferActivation" ContactChannel where
  type PropertyType "DeferActivation" ContactChannel = Value Prelude.Bool
  set newValue ContactChannel {..}
    = ContactChannel {deferActivation = Prelude.pure newValue, ..}