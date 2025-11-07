module Stratosphere.ConnectCampaignsV2.Campaign.TelephonyOutboundModeProperty (
        module Exports, TelephonyOutboundModeProperty(..),
        mkTelephonyOutboundModeProperty
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import {-# SOURCE #-} Stratosphere.ConnectCampaignsV2.Campaign.PredictiveConfigProperty as Exports
import {-# SOURCE #-} Stratosphere.ConnectCampaignsV2.Campaign.PreviewConfigProperty as Exports
import {-# SOURCE #-} Stratosphere.ConnectCampaignsV2.Campaign.ProgressiveConfigProperty as Exports
import Stratosphere.ResourceProperties
data TelephonyOutboundModeProperty
  = -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-connectcampaignsv2-campaign-telephonyoutboundmode.html>
    TelephonyOutboundModeProperty {haddock_workaround_ :: (),
                                   -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-connectcampaignsv2-campaign-telephonyoutboundmode.html#cfn-connectcampaignsv2-campaign-telephonyoutboundmode-agentlessconfig>
                                   agentlessConfig :: (Prelude.Maybe JSON.Object),
                                   -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-connectcampaignsv2-campaign-telephonyoutboundmode.html#cfn-connectcampaignsv2-campaign-telephonyoutboundmode-predictiveconfig>
                                   predictiveConfig :: (Prelude.Maybe PredictiveConfigProperty),
                                   -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-connectcampaignsv2-campaign-telephonyoutboundmode.html#cfn-connectcampaignsv2-campaign-telephonyoutboundmode-previewconfig>
                                   previewConfig :: (Prelude.Maybe PreviewConfigProperty),
                                   -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-connectcampaignsv2-campaign-telephonyoutboundmode.html#cfn-connectcampaignsv2-campaign-telephonyoutboundmode-progressiveconfig>
                                   progressiveConfig :: (Prelude.Maybe ProgressiveConfigProperty)}
  deriving stock (Prelude.Eq, Prelude.Show)
mkTelephonyOutboundModeProperty :: TelephonyOutboundModeProperty
mkTelephonyOutboundModeProperty
  = TelephonyOutboundModeProperty
      {haddock_workaround_ = (), agentlessConfig = Prelude.Nothing,
       predictiveConfig = Prelude.Nothing,
       previewConfig = Prelude.Nothing,
       progressiveConfig = Prelude.Nothing}
instance ToResourceProperties TelephonyOutboundModeProperty where
  toResourceProperties TelephonyOutboundModeProperty {..}
    = ResourceProperties
        {awsType = "AWS::ConnectCampaignsV2::Campaign.TelephonyOutboundMode",
         supportsTags = Prelude.False,
         properties = Prelude.fromList
                        (Prelude.catMaybes
                           [(JSON..=) "AgentlessConfig" Prelude.<$> agentlessConfig,
                            (JSON..=) "PredictiveConfig" Prelude.<$> predictiveConfig,
                            (JSON..=) "PreviewConfig" Prelude.<$> previewConfig,
                            (JSON..=) "ProgressiveConfig" Prelude.<$> progressiveConfig])}
instance JSON.ToJSON TelephonyOutboundModeProperty where
  toJSON TelephonyOutboundModeProperty {..}
    = JSON.object
        (Prelude.fromList
           (Prelude.catMaybes
              [(JSON..=) "AgentlessConfig" Prelude.<$> agentlessConfig,
               (JSON..=) "PredictiveConfig" Prelude.<$> predictiveConfig,
               (JSON..=) "PreviewConfig" Prelude.<$> previewConfig,
               (JSON..=) "ProgressiveConfig" Prelude.<$> progressiveConfig]))
instance Property "AgentlessConfig" TelephonyOutboundModeProperty where
  type PropertyType "AgentlessConfig" TelephonyOutboundModeProperty = JSON.Object
  set newValue TelephonyOutboundModeProperty {..}
    = TelephonyOutboundModeProperty
        {agentlessConfig = Prelude.pure newValue, ..}
instance Property "PredictiveConfig" TelephonyOutboundModeProperty where
  type PropertyType "PredictiveConfig" TelephonyOutboundModeProperty = PredictiveConfigProperty
  set newValue TelephonyOutboundModeProperty {..}
    = TelephonyOutboundModeProperty
        {predictiveConfig = Prelude.pure newValue, ..}
instance Property "PreviewConfig" TelephonyOutboundModeProperty where
  type PropertyType "PreviewConfig" TelephonyOutboundModeProperty = PreviewConfigProperty
  set newValue TelephonyOutboundModeProperty {..}
    = TelephonyOutboundModeProperty
        {previewConfig = Prelude.pure newValue, ..}
instance Property "ProgressiveConfig" TelephonyOutboundModeProperty where
  type PropertyType "ProgressiveConfig" TelephonyOutboundModeProperty = ProgressiveConfigProperty
  set newValue TelephonyOutboundModeProperty {..}
    = TelephonyOutboundModeProperty
        {progressiveConfig = Prelude.pure newValue, ..}