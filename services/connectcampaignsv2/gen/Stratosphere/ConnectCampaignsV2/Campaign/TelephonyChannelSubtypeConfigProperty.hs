module Stratosphere.ConnectCampaignsV2.Campaign.TelephonyChannelSubtypeConfigProperty (
        module Exports, TelephonyChannelSubtypeConfigProperty(..),
        mkTelephonyChannelSubtypeConfigProperty
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import {-# SOURCE #-} Stratosphere.ConnectCampaignsV2.Campaign.TelephonyOutboundConfigProperty as Exports
import {-# SOURCE #-} Stratosphere.ConnectCampaignsV2.Campaign.TelephonyOutboundModeProperty as Exports
import Stratosphere.ResourceProperties
import Stratosphere.Value
data TelephonyChannelSubtypeConfigProperty
  = TelephonyChannelSubtypeConfigProperty {capacity :: (Prelude.Maybe (Value Prelude.Double)),
                                           connectQueueId :: (Prelude.Maybe (Value Prelude.Text)),
                                           defaultOutboundConfig :: TelephonyOutboundConfigProperty,
                                           outboundMode :: TelephonyOutboundModeProperty}
  deriving stock (Prelude.Eq, Prelude.Show)
mkTelephonyChannelSubtypeConfigProperty ::
  TelephonyOutboundConfigProperty
  -> TelephonyOutboundModeProperty
     -> TelephonyChannelSubtypeConfigProperty
mkTelephonyChannelSubtypeConfigProperty
  defaultOutboundConfig
  outboundMode
  = TelephonyChannelSubtypeConfigProperty
      {defaultOutboundConfig = defaultOutboundConfig,
       outboundMode = outboundMode, capacity = Prelude.Nothing,
       connectQueueId = Prelude.Nothing}
instance ToResourceProperties TelephonyChannelSubtypeConfigProperty where
  toResourceProperties TelephonyChannelSubtypeConfigProperty {..}
    = ResourceProperties
        {awsType = "AWS::ConnectCampaignsV2::Campaign.TelephonyChannelSubtypeConfig",
         supportsTags = Prelude.False,
         properties = Prelude.fromList
                        ((Prelude.<>)
                           ["DefaultOutboundConfig" JSON..= defaultOutboundConfig,
                            "OutboundMode" JSON..= outboundMode]
                           (Prelude.catMaybes
                              [(JSON..=) "Capacity" Prelude.<$> capacity,
                               (JSON..=) "ConnectQueueId" Prelude.<$> connectQueueId]))}
instance JSON.ToJSON TelephonyChannelSubtypeConfigProperty where
  toJSON TelephonyChannelSubtypeConfigProperty {..}
    = JSON.object
        (Prelude.fromList
           ((Prelude.<>)
              ["DefaultOutboundConfig" JSON..= defaultOutboundConfig,
               "OutboundMode" JSON..= outboundMode]
              (Prelude.catMaybes
                 [(JSON..=) "Capacity" Prelude.<$> capacity,
                  (JSON..=) "ConnectQueueId" Prelude.<$> connectQueueId])))
instance Property "Capacity" TelephonyChannelSubtypeConfigProperty where
  type PropertyType "Capacity" TelephonyChannelSubtypeConfigProperty = Value Prelude.Double
  set newValue TelephonyChannelSubtypeConfigProperty {..}
    = TelephonyChannelSubtypeConfigProperty
        {capacity = Prelude.pure newValue, ..}
instance Property "ConnectQueueId" TelephonyChannelSubtypeConfigProperty where
  type PropertyType "ConnectQueueId" TelephonyChannelSubtypeConfigProperty = Value Prelude.Text
  set newValue TelephonyChannelSubtypeConfigProperty {..}
    = TelephonyChannelSubtypeConfigProperty
        {connectQueueId = Prelude.pure newValue, ..}
instance Property "DefaultOutboundConfig" TelephonyChannelSubtypeConfigProperty where
  type PropertyType "DefaultOutboundConfig" TelephonyChannelSubtypeConfigProperty = TelephonyOutboundConfigProperty
  set newValue TelephonyChannelSubtypeConfigProperty {..}
    = TelephonyChannelSubtypeConfigProperty
        {defaultOutboundConfig = newValue, ..}
instance Property "OutboundMode" TelephonyChannelSubtypeConfigProperty where
  type PropertyType "OutboundMode" TelephonyChannelSubtypeConfigProperty = TelephonyOutboundModeProperty
  set newValue TelephonyChannelSubtypeConfigProperty {..}
    = TelephonyChannelSubtypeConfigProperty
        {outboundMode = newValue, ..}