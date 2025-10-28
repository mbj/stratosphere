module Stratosphere.ConnectCampaignsV2.Campaign.EmailOutboundModeProperty (
        EmailOutboundModeProperty(..), mkEmailOutboundModeProperty
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import Stratosphere.ResourceProperties
data EmailOutboundModeProperty
  = -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-connectcampaignsv2-campaign-emailoutboundmode.html>
    EmailOutboundModeProperty {haddock_workaround_ :: (),
                               -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-connectcampaignsv2-campaign-emailoutboundmode.html#cfn-connectcampaignsv2-campaign-emailoutboundmode-agentlessconfig>
                               agentlessConfig :: (Prelude.Maybe JSON.Object)}
  deriving stock (Prelude.Eq, Prelude.Show)
mkEmailOutboundModeProperty :: EmailOutboundModeProperty
mkEmailOutboundModeProperty
  = EmailOutboundModeProperty
      {haddock_workaround_ = (), agentlessConfig = Prelude.Nothing}
instance ToResourceProperties EmailOutboundModeProperty where
  toResourceProperties EmailOutboundModeProperty {..}
    = ResourceProperties
        {awsType = "AWS::ConnectCampaignsV2::Campaign.EmailOutboundMode",
         supportsTags = Prelude.False,
         properties = Prelude.fromList
                        (Prelude.catMaybes
                           [(JSON..=) "AgentlessConfig" Prelude.<$> agentlessConfig])}
instance JSON.ToJSON EmailOutboundModeProperty where
  toJSON EmailOutboundModeProperty {..}
    = JSON.object
        (Prelude.fromList
           (Prelude.catMaybes
              [(JSON..=) "AgentlessConfig" Prelude.<$> agentlessConfig]))
instance Property "AgentlessConfig" EmailOutboundModeProperty where
  type PropertyType "AgentlessConfig" EmailOutboundModeProperty = JSON.Object
  set newValue EmailOutboundModeProperty {..}
    = EmailOutboundModeProperty
        {agentlessConfig = Prelude.pure newValue, ..}