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
  = -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-datasync-agent.html>
    Agent {haddock_workaround_ :: (),
           -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-datasync-agent.html#cfn-datasync-agent-activationkey>
           activationKey :: (Prelude.Maybe (Value Prelude.Text)),
           -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-datasync-agent.html#cfn-datasync-agent-agentname>
           agentName :: (Prelude.Maybe (Value Prelude.Text)),
           -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-datasync-agent.html#cfn-datasync-agent-securitygrouparns>
           securityGroupArns :: (Prelude.Maybe (ValueList Prelude.Text)),
           -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-datasync-agent.html#cfn-datasync-agent-subnetarns>
           subnetArns :: (Prelude.Maybe (ValueList Prelude.Text)),
           -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-datasync-agent.html#cfn-datasync-agent-tags>
           tags :: (Prelude.Maybe [Tag]),
           -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-datasync-agent.html#cfn-datasync-agent-vpcendpointid>
           vpcEndpointId :: (Prelude.Maybe (Value Prelude.Text))}
  deriving stock (Prelude.Eq, Prelude.Show)
mkAgent :: Agent
mkAgent
  = Agent
      {haddock_workaround_ = (), activationKey = Prelude.Nothing,
       agentName = Prelude.Nothing, securityGroupArns = Prelude.Nothing,
       subnetArns = Prelude.Nothing, tags = Prelude.Nothing,
       vpcEndpointId = Prelude.Nothing}
instance ToResourceProperties Agent where
  toResourceProperties Agent {..}
    = ResourceProperties
        {awsType = "AWS::DataSync::Agent", supportsTags = Prelude.True,
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