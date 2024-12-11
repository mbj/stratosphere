module Stratosphere.ConnectCampaignsV2.Campaign.SmsOutboundModeProperty (
        SmsOutboundModeProperty(..), mkSmsOutboundModeProperty
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import Stratosphere.ResourceProperties
data SmsOutboundModeProperty
  = SmsOutboundModeProperty {agentlessConfig :: (Prelude.Maybe JSON.Object)}
  deriving stock (Prelude.Eq, Prelude.Show)
mkSmsOutboundModeProperty :: SmsOutboundModeProperty
mkSmsOutboundModeProperty
  = SmsOutboundModeProperty {agentlessConfig = Prelude.Nothing}
instance ToResourceProperties SmsOutboundModeProperty where
  toResourceProperties SmsOutboundModeProperty {..}
    = ResourceProperties
        {awsType = "AWS::ConnectCampaignsV2::Campaign.SmsOutboundMode",
         supportsTags = Prelude.False,
         properties = Prelude.fromList
                        (Prelude.catMaybes
                           [(JSON..=) "AgentlessConfig" Prelude.<$> agentlessConfig])}
instance JSON.ToJSON SmsOutboundModeProperty where
  toJSON SmsOutboundModeProperty {..}
    = JSON.object
        (Prelude.fromList
           (Prelude.catMaybes
              [(JSON..=) "AgentlessConfig" Prelude.<$> agentlessConfig]))
instance Property "AgentlessConfig" SmsOutboundModeProperty where
  type PropertyType "AgentlessConfig" SmsOutboundModeProperty = JSON.Object
  set newValue SmsOutboundModeProperty {}
    = SmsOutboundModeProperty
        {agentlessConfig = Prelude.pure newValue, ..}