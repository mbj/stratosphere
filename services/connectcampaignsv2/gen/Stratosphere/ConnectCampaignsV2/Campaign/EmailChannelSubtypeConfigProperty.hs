module Stratosphere.ConnectCampaignsV2.Campaign.EmailChannelSubtypeConfigProperty (
        module Exports, EmailChannelSubtypeConfigProperty(..),
        mkEmailChannelSubtypeConfigProperty
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import {-# SOURCE #-} Stratosphere.ConnectCampaignsV2.Campaign.EmailOutboundConfigProperty as Exports
import {-# SOURCE #-} Stratosphere.ConnectCampaignsV2.Campaign.EmailOutboundModeProperty as Exports
import Stratosphere.ResourceProperties
import Stratosphere.Value
data EmailChannelSubtypeConfigProperty
  = -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-connectcampaignsv2-campaign-emailchannelsubtypeconfig.html>
    EmailChannelSubtypeConfigProperty {haddock_workaround_ :: (),
                                       -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-connectcampaignsv2-campaign-emailchannelsubtypeconfig.html#cfn-connectcampaignsv2-campaign-emailchannelsubtypeconfig-capacity>
                                       capacity :: (Prelude.Maybe (Value Prelude.Double)),
                                       -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-connectcampaignsv2-campaign-emailchannelsubtypeconfig.html#cfn-connectcampaignsv2-campaign-emailchannelsubtypeconfig-defaultoutboundconfig>
                                       defaultOutboundConfig :: EmailOutboundConfigProperty,
                                       -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-connectcampaignsv2-campaign-emailchannelsubtypeconfig.html#cfn-connectcampaignsv2-campaign-emailchannelsubtypeconfig-outboundmode>
                                       outboundMode :: EmailOutboundModeProperty}
  deriving stock (Prelude.Eq, Prelude.Show)
mkEmailChannelSubtypeConfigProperty ::
  EmailOutboundConfigProperty
  -> EmailOutboundModeProperty -> EmailChannelSubtypeConfigProperty
mkEmailChannelSubtypeConfigProperty
  defaultOutboundConfig
  outboundMode
  = EmailChannelSubtypeConfigProperty
      {haddock_workaround_ = (),
       defaultOutboundConfig = defaultOutboundConfig,
       outboundMode = outboundMode, capacity = Prelude.Nothing}
instance ToResourceProperties EmailChannelSubtypeConfigProperty where
  toResourceProperties EmailChannelSubtypeConfigProperty {..}
    = ResourceProperties
        {awsType = "AWS::ConnectCampaignsV2::Campaign.EmailChannelSubtypeConfig",
         supportsTags = Prelude.False,
         properties = Prelude.fromList
                        ((Prelude.<>)
                           ["DefaultOutboundConfig" JSON..= defaultOutboundConfig,
                            "OutboundMode" JSON..= outboundMode]
                           (Prelude.catMaybes [(JSON..=) "Capacity" Prelude.<$> capacity]))}
instance JSON.ToJSON EmailChannelSubtypeConfigProperty where
  toJSON EmailChannelSubtypeConfigProperty {..}
    = JSON.object
        (Prelude.fromList
           ((Prelude.<>)
              ["DefaultOutboundConfig" JSON..= defaultOutboundConfig,
               "OutboundMode" JSON..= outboundMode]
              (Prelude.catMaybes [(JSON..=) "Capacity" Prelude.<$> capacity])))
instance Property "Capacity" EmailChannelSubtypeConfigProperty where
  type PropertyType "Capacity" EmailChannelSubtypeConfigProperty = Value Prelude.Double
  set newValue EmailChannelSubtypeConfigProperty {..}
    = EmailChannelSubtypeConfigProperty
        {capacity = Prelude.pure newValue, ..}
instance Property "DefaultOutboundConfig" EmailChannelSubtypeConfigProperty where
  type PropertyType "DefaultOutboundConfig" EmailChannelSubtypeConfigProperty = EmailOutboundConfigProperty
  set newValue EmailChannelSubtypeConfigProperty {..}
    = EmailChannelSubtypeConfigProperty
        {defaultOutboundConfig = newValue, ..}
instance Property "OutboundMode" EmailChannelSubtypeConfigProperty where
  type PropertyType "OutboundMode" EmailChannelSubtypeConfigProperty = EmailOutboundModeProperty
  set newValue EmailChannelSubtypeConfigProperty {..}
    = EmailChannelSubtypeConfigProperty {outboundMode = newValue, ..}