module Stratosphere.ConnectCampaignsV2.Campaign.PreviewConfigProperty (
        module Exports, PreviewConfigProperty(..), mkPreviewConfigProperty
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import {-# SOURCE #-} Stratosphere.ConnectCampaignsV2.Campaign.TimeoutConfigProperty as Exports
import Stratosphere.ResourceProperties
import Stratosphere.Value
data PreviewConfigProperty
  = -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-connectcampaignsv2-campaign-previewconfig.html>
    PreviewConfigProperty {haddock_workaround_ :: (),
                           -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-connectcampaignsv2-campaign-previewconfig.html#cfn-connectcampaignsv2-campaign-previewconfig-agentactions>
                           agentActions :: (Prelude.Maybe (ValueList Prelude.Text)),
                           -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-connectcampaignsv2-campaign-previewconfig.html#cfn-connectcampaignsv2-campaign-previewconfig-bandwidthallocation>
                           bandwidthAllocation :: (Value Prelude.Double),
                           -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-connectcampaignsv2-campaign-previewconfig.html#cfn-connectcampaignsv2-campaign-previewconfig-timeoutconfig>
                           timeoutConfig :: TimeoutConfigProperty}
  deriving stock (Prelude.Eq, Prelude.Show)
mkPreviewConfigProperty ::
  Value Prelude.Double
  -> TimeoutConfigProperty -> PreviewConfigProperty
mkPreviewConfigProperty bandwidthAllocation timeoutConfig
  = PreviewConfigProperty
      {haddock_workaround_ = (),
       bandwidthAllocation = bandwidthAllocation,
       timeoutConfig = timeoutConfig, agentActions = Prelude.Nothing}
instance ToResourceProperties PreviewConfigProperty where
  toResourceProperties PreviewConfigProperty {..}
    = ResourceProperties
        {awsType = "AWS::ConnectCampaignsV2::Campaign.PreviewConfig",
         supportsTags = Prelude.False,
         properties = Prelude.fromList
                        ((Prelude.<>)
                           ["BandwidthAllocation" JSON..= bandwidthAllocation,
                            "TimeoutConfig" JSON..= timeoutConfig]
                           (Prelude.catMaybes
                              [(JSON..=) "AgentActions" Prelude.<$> agentActions]))}
instance JSON.ToJSON PreviewConfigProperty where
  toJSON PreviewConfigProperty {..}
    = JSON.object
        (Prelude.fromList
           ((Prelude.<>)
              ["BandwidthAllocation" JSON..= bandwidthAllocation,
               "TimeoutConfig" JSON..= timeoutConfig]
              (Prelude.catMaybes
                 [(JSON..=) "AgentActions" Prelude.<$> agentActions])))
instance Property "AgentActions" PreviewConfigProperty where
  type PropertyType "AgentActions" PreviewConfigProperty = ValueList Prelude.Text
  set newValue PreviewConfigProperty {..}
    = PreviewConfigProperty {agentActions = Prelude.pure newValue, ..}
instance Property "BandwidthAllocation" PreviewConfigProperty where
  type PropertyType "BandwidthAllocation" PreviewConfigProperty = Value Prelude.Double
  set newValue PreviewConfigProperty {..}
    = PreviewConfigProperty {bandwidthAllocation = newValue, ..}
instance Property "TimeoutConfig" PreviewConfigProperty where
  type PropertyType "TimeoutConfig" PreviewConfigProperty = TimeoutConfigProperty
  set newValue PreviewConfigProperty {..}
    = PreviewConfigProperty {timeoutConfig = newValue, ..}