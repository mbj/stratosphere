module Stratosphere.ConnectCampaignsV2.Campaign.EmailOutboundModeProperty (
        EmailOutboundModeProperty(..), mkEmailOutboundModeProperty
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import Stratosphere.ResourceProperties
data EmailOutboundModeProperty
  = EmailOutboundModeProperty {agentlessConfig :: (Prelude.Maybe JSON.Object)}
  deriving stock (Prelude.Eq, Prelude.Show)
mkEmailOutboundModeProperty :: EmailOutboundModeProperty
mkEmailOutboundModeProperty
  = EmailOutboundModeProperty {agentlessConfig = Prelude.Nothing}
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
  set newValue EmailOutboundModeProperty {}
    = EmailOutboundModeProperty
        {agentlessConfig = Prelude.pure newValue, ..}