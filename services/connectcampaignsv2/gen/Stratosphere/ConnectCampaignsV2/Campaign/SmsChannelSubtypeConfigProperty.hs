module Stratosphere.ConnectCampaignsV2.Campaign.SmsChannelSubtypeConfigProperty (
        module Exports, SmsChannelSubtypeConfigProperty(..),
        mkSmsChannelSubtypeConfigProperty
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import {-# SOURCE #-} Stratosphere.ConnectCampaignsV2.Campaign.SmsOutboundConfigProperty as Exports
import {-# SOURCE #-} Stratosphere.ConnectCampaignsV2.Campaign.SmsOutboundModeProperty as Exports
import Stratosphere.ResourceProperties
import Stratosphere.Value
data SmsChannelSubtypeConfigProperty
  = SmsChannelSubtypeConfigProperty {capacity :: (Prelude.Maybe (Value Prelude.Double)),
                                     defaultOutboundConfig :: SmsOutboundConfigProperty,
                                     outboundMode :: SmsOutboundModeProperty}
  deriving stock (Prelude.Eq, Prelude.Show)
mkSmsChannelSubtypeConfigProperty ::
  SmsOutboundConfigProperty
  -> SmsOutboundModeProperty -> SmsChannelSubtypeConfigProperty
mkSmsChannelSubtypeConfigProperty
  defaultOutboundConfig
  outboundMode
  = SmsChannelSubtypeConfigProperty
      {defaultOutboundConfig = defaultOutboundConfig,
       outboundMode = outboundMode, capacity = Prelude.Nothing}
instance ToResourceProperties SmsChannelSubtypeConfigProperty where
  toResourceProperties SmsChannelSubtypeConfigProperty {..}
    = ResourceProperties
        {awsType = "AWS::ConnectCampaignsV2::Campaign.SmsChannelSubtypeConfig",
         supportsTags = Prelude.False,
         properties = Prelude.fromList
                        ((Prelude.<>)
                           ["DefaultOutboundConfig" JSON..= defaultOutboundConfig,
                            "OutboundMode" JSON..= outboundMode]
                           (Prelude.catMaybes [(JSON..=) "Capacity" Prelude.<$> capacity]))}
instance JSON.ToJSON SmsChannelSubtypeConfigProperty where
  toJSON SmsChannelSubtypeConfigProperty {..}
    = JSON.object
        (Prelude.fromList
           ((Prelude.<>)
              ["DefaultOutboundConfig" JSON..= defaultOutboundConfig,
               "OutboundMode" JSON..= outboundMode]
              (Prelude.catMaybes [(JSON..=) "Capacity" Prelude.<$> capacity])))
instance Property "Capacity" SmsChannelSubtypeConfigProperty where
  type PropertyType "Capacity" SmsChannelSubtypeConfigProperty = Value Prelude.Double
  set newValue SmsChannelSubtypeConfigProperty {..}
    = SmsChannelSubtypeConfigProperty
        {capacity = Prelude.pure newValue, ..}
instance Property "DefaultOutboundConfig" SmsChannelSubtypeConfigProperty where
  type PropertyType "DefaultOutboundConfig" SmsChannelSubtypeConfigProperty = SmsOutboundConfigProperty
  set newValue SmsChannelSubtypeConfigProperty {..}
    = SmsChannelSubtypeConfigProperty
        {defaultOutboundConfig = newValue, ..}
instance Property "OutboundMode" SmsChannelSubtypeConfigProperty where
  type PropertyType "OutboundMode" SmsChannelSubtypeConfigProperty = SmsOutboundModeProperty
  set newValue SmsChannelSubtypeConfigProperty {..}
    = SmsChannelSubtypeConfigProperty {outboundMode = newValue, ..}