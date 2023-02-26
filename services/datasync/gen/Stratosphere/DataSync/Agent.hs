module Stratosphere.DataSync.Agent (
        Agent(..), mkAgent
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import Stratosphere.ResourceProperties
import Stratosphere.Tag
import Stratosphere.Value
data Agent
  = Agent {activationKey :: (Prelude.Maybe (Value Prelude.Text)),
           agentName :: (Prelude.Maybe (Value Prelude.Text)),
           securityGroupArns :: (Prelude.Maybe (ValueList Prelude.Text)),
           subnetArns :: (Prelude.Maybe (ValueList Prelude.Text)),
           tags :: (Prelude.Maybe [Tag]),
           vpcEndpointId :: (Prelude.Maybe (Value Prelude.Text))}
mkAgent :: Agent
mkAgent
  = Agent
      {activationKey = Prelude.Nothing, agentName = Prelude.Nothing,
       securityGroupArns = Prelude.Nothing, subnetArns = Prelude.Nothing,
       tags = Prelude.Nothing, vpcEndpointId = Prelude.Nothing}
instance ToResourceProperties Agent where
  toResourceProperties Agent {..}
    = ResourceProperties
        {awsType = "AWS::DataSync::Agent",
         properties = Prelude.fromList
                        (Prelude.catMaybes
                           [(JSON..=) "ActivationKey" Prelude.<$> activationKey,
                            (JSON..=) "AgentName" Prelude.<$> agentName,
                            (JSON..=) "SecurityGroupArns" Prelude.<$> securityGroupArns,
                            (JSON..=) "SubnetArns" Prelude.<$> subnetArns,
                            (JSON..=) "Tags" Prelude.<$> tags,
                            (JSON..=) "VpcEndpointId" Prelude.<$> vpcEndpointId])}
instance JSON.ToJSON Agent where
  toJSON Agent {..}
    = JSON.object
        (Prelude.fromList
           (Prelude.catMaybes
              [(JSON..=) "ActivationKey" Prelude.<$> activationKey,
               (JSON..=) "AgentName" Prelude.<$> agentName,
               (JSON..=) "SecurityGroupArns" Prelude.<$> securityGroupArns,
               (JSON..=) "SubnetArns" Prelude.<$> subnetArns,
               (JSON..=) "Tags" Prelude.<$> tags,
               (JSON..=) "VpcEndpointId" Prelude.<$> vpcEndpointId]))
instance Property "ActivationKey" Agent where
  type PropertyType "ActivationKey" Agent = Value Prelude.Text
  set newValue Agent {..}
    = Agent {activationKey = Prelude.pure newValue, ..}
instance Property "AgentName" Agent where
  type PropertyType "AgentName" Agent = Value Prelude.Text
  set newValue Agent {..}
    = Agent {agentName = Prelude.pure newValue, ..}
instance Property "SecurityGroupArns" Agent where
  type PropertyType "SecurityGroupArns" Agent = ValueList Prelude.Text
  set newValue Agent {..}
    = Agent {securityGroupArns = Prelude.pure newValue, ..}
instance Property "SubnetArns" Agent where
  type PropertyType "SubnetArns" Agent = ValueList Prelude.Text
  set newValue Agent {..}
    = Agent {subnetArns = Prelude.pure newValue, ..}
instance Property "Tags" Agent where
  type PropertyType "Tags" Agent = [Tag]
  set newValue Agent {..} = Agent {tags = Prelude.pure newValue, ..}
instance Property "VpcEndpointId" Agent where
  type PropertyType "VpcEndpointId" Agent = Value Prelude.Text
  set newValue Agent {..}
    = Agent {vpcEndpointId = Prelude.pure newValue, ..}