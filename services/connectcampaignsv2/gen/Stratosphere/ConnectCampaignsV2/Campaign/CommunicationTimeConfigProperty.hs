module Stratosphere.ConnectCampaignsV2.Campaign.CommunicationTimeConfigProperty (
        module Exports, CommunicationTimeConfigProperty(..),
        mkCommunicationTimeConfigProperty
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import {-# SOURCE #-} Stratosphere.ConnectCampaignsV2.Campaign.LocalTimeZoneConfigProperty as Exports
import {-# SOURCE #-} Stratosphere.ConnectCampaignsV2.Campaign.TimeWindowProperty as Exports
import Stratosphere.ResourceProperties
data CommunicationTimeConfigProperty
  = CommunicationTimeConfigProperty {email :: (Prelude.Maybe TimeWindowProperty),
                                     localTimeZoneConfig :: LocalTimeZoneConfigProperty,
                                     sms :: (Prelude.Maybe TimeWindowProperty),
                                     telephony :: (Prelude.Maybe TimeWindowProperty)}
  deriving stock (Prelude.Eq, Prelude.Show)
mkCommunicationTimeConfigProperty ::
  LocalTimeZoneConfigProperty -> CommunicationTimeConfigProperty
mkCommunicationTimeConfigProperty localTimeZoneConfig
  = CommunicationTimeConfigProperty
      {localTimeZoneConfig = localTimeZoneConfig,
       email = Prelude.Nothing, sms = Prelude.Nothing,
       telephony = Prelude.Nothing}
instance ToResourceProperties CommunicationTimeConfigProperty where
  toResourceProperties CommunicationTimeConfigProperty {..}
    = ResourceProperties
        {awsType = "AWS::ConnectCampaignsV2::Campaign.CommunicationTimeConfig",
         supportsTags = Prelude.False,
         properties = Prelude.fromList
                        ((Prelude.<>)
                           ["LocalTimeZoneConfig" JSON..= localTimeZoneConfig]
                           (Prelude.catMaybes
                              [(JSON..=) "Email" Prelude.<$> email,
                               (JSON..=) "Sms" Prelude.<$> sms,
                               (JSON..=) "Telephony" Prelude.<$> telephony]))}
instance JSON.ToJSON CommunicationTimeConfigProperty where
  toJSON CommunicationTimeConfigProperty {..}
    = JSON.object
        (Prelude.fromList
           ((Prelude.<>)
              ["LocalTimeZoneConfig" JSON..= localTimeZoneConfig]
              (Prelude.catMaybes
                 [(JSON..=) "Email" Prelude.<$> email,
                  (JSON..=) "Sms" Prelude.<$> sms,
                  (JSON..=) "Telephony" Prelude.<$> telephony])))
instance Property "Email" CommunicationTimeConfigProperty where
  type PropertyType "Email" CommunicationTimeConfigProperty = TimeWindowProperty
  set newValue CommunicationTimeConfigProperty {..}
    = CommunicationTimeConfigProperty
        {email = Prelude.pure newValue, ..}
instance Property "LocalTimeZoneConfig" CommunicationTimeConfigProperty where
  type PropertyType "LocalTimeZoneConfig" CommunicationTimeConfigProperty = LocalTimeZoneConfigProperty
  set newValue CommunicationTimeConfigProperty {..}
    = CommunicationTimeConfigProperty
        {localTimeZoneConfig = newValue, ..}
instance Property "Sms" CommunicationTimeConfigProperty where
  type PropertyType "Sms" CommunicationTimeConfigProperty = TimeWindowProperty
  set newValue CommunicationTimeConfigProperty {..}
    = CommunicationTimeConfigProperty {sms = Prelude.pure newValue, ..}
instance Property "Telephony" CommunicationTimeConfigProperty where
  type PropertyType "Telephony" CommunicationTimeConfigProperty = TimeWindowProperty
  set newValue CommunicationTimeConfigProperty {..}
    = CommunicationTimeConfigProperty
        {telephony = Prelude.pure newValue, ..}