module Stratosphere.ConnectCampaigns.Campaign.AgentlessDialerConfigProperty (
        AgentlessDialerConfigProperty(..), mkAgentlessDialerConfigProperty
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import Stratosphere.ResourceProperties
import Stratosphere.Value
data AgentlessDialerConfigProperty
  = -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-connectcampaigns-campaign-agentlessdialerconfig.html>
    AgentlessDialerConfigProperty {haddock_workaround_ :: (),
                                   -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-connectcampaigns-campaign-agentlessdialerconfig.html#cfn-connectcampaigns-campaign-agentlessdialerconfig-dialingcapacity>
                                   dialingCapacity :: (Prelude.Maybe (Value Prelude.Double))}
  deriving stock (Prelude.Eq, Prelude.Show)
mkAgentlessDialerConfigProperty :: AgentlessDialerConfigProperty
mkAgentlessDialerConfigProperty
  = AgentlessDialerConfigProperty
      {haddock_workaround_ = (), dialingCapacity = Prelude.Nothing}
instance ToResourceProperties AgentlessDialerConfigProperty where
  toResourceProperties AgentlessDialerConfigProperty {..}
    = ResourceProperties
        {awsType = "AWS::ConnectCampaigns::Campaign.AgentlessDialerConfig",
         supportsTags = Prelude.False,
         properties = Prelude.fromList
                        (Prelude.catMaybes
                           [(JSON..=) "DialingCapacity" Prelude.<$> dialingCapacity])}
instance JSON.ToJSON AgentlessDialerConfigProperty where
  toJSON AgentlessDialerConfigProperty {..}
    = JSON.object
        (Prelude.fromList
           (Prelude.catMaybes
              [(JSON..=) "DialingCapacity" Prelude.<$> dialingCapacity]))
instance Property "DialingCapacity" AgentlessDialerConfigProperty where
  type PropertyType "DialingCapacity" AgentlessDialerConfigProperty = Value Prelude.Double
  set newValue AgentlessDialerConfigProperty {..}
    = AgentlessDialerConfigProperty
        {dialingCapacity = Prelude.pure newValue, ..}