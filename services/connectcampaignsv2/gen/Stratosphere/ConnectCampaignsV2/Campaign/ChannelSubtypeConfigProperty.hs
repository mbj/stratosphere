module Stratosphere.ConnectCampaignsV2.Campaign.ChannelSubtypeConfigProperty (
        module Exports, ChannelSubtypeConfigProperty(..),
        mkChannelSubtypeConfigProperty
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import {-# SOURCE #-} Stratosphere.ConnectCampaignsV2.Campaign.EmailChannelSubtypeConfigProperty as Exports
import {-# SOURCE #-} Stratosphere.ConnectCampaignsV2.Campaign.SmsChannelSubtypeConfigProperty as Exports
import {-# SOURCE #-} Stratosphere.ConnectCampaignsV2.Campaign.TelephonyChannelSubtypeConfigProperty as Exports
import Stratosphere.ResourceProperties
data ChannelSubtypeConfigProperty
  = ChannelSubtypeConfigProperty {email :: (Prelude.Maybe EmailChannelSubtypeConfigProperty),
                                  sms :: (Prelude.Maybe SmsChannelSubtypeConfigProperty),
                                  telephony :: (Prelude.Maybe TelephonyChannelSubtypeConfigProperty)}
  deriving stock (Prelude.Eq, Prelude.Show)
mkChannelSubtypeConfigProperty :: ChannelSubtypeConfigProperty
mkChannelSubtypeConfigProperty
  = ChannelSubtypeConfigProperty
      {email = Prelude.Nothing, sms = Prelude.Nothing,
       telephony = Prelude.Nothing}
instance ToResourceProperties ChannelSubtypeConfigProperty where
  toResourceProperties ChannelSubtypeConfigProperty {..}
    = ResourceProperties
        {awsType = "AWS::ConnectCampaignsV2::Campaign.ChannelSubtypeConfig",
         supportsTags = Prelude.False,
         properties = Prelude.fromList
                        (Prelude.catMaybes
                           [(JSON..=) "Email" Prelude.<$> email,
                            (JSON..=) "Sms" Prelude.<$> sms,
                            (JSON..=) "Telephony" Prelude.<$> telephony])}
instance JSON.ToJSON ChannelSubtypeConfigProperty where
  toJSON ChannelSubtypeConfigProperty {..}
    = JSON.object
        (Prelude.fromList
           (Prelude.catMaybes
              [(JSON..=) "Email" Prelude.<$> email,
               (JSON..=) "Sms" Prelude.<$> sms,
               (JSON..=) "Telephony" Prelude.<$> telephony]))
instance Property "Email" ChannelSubtypeConfigProperty where
  type PropertyType "Email" ChannelSubtypeConfigProperty = EmailChannelSubtypeConfigProperty
  set newValue ChannelSubtypeConfigProperty {..}
    = ChannelSubtypeConfigProperty {email = Prelude.pure newValue, ..}
instance Property "Sms" ChannelSubtypeConfigProperty where
  type PropertyType "Sms" ChannelSubtypeConfigProperty = SmsChannelSubtypeConfigProperty
  set newValue ChannelSubtypeConfigProperty {..}
    = ChannelSubtypeConfigProperty {sms = Prelude.pure newValue, ..}
instance Property "Telephony" ChannelSubtypeConfigProperty where
  type PropertyType "Telephony" ChannelSubtypeConfigProperty = TelephonyChannelSubtypeConfigProperty
  set newValue ChannelSubtypeConfigProperty {..}
    = ChannelSubtypeConfigProperty
        {telephony = Prelude.pure newValue, ..}