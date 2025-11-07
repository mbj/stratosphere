module Stratosphere.BedrockAgentCore.BrowserCustom.VpcConfigProperty (
        VpcConfigProperty(..), mkVpcConfigProperty
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import Stratosphere.ResourceProperties
import Stratosphere.Value
data VpcConfigProperty
  = -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-bedrockagentcore-browsercustom-vpcconfig.html>
    VpcConfigProperty {haddock_workaround_ :: (),
                       -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-bedrockagentcore-browsercustom-vpcconfig.html#cfn-bedrockagentcore-browsercustom-vpcconfig-securitygroups>
                       securityGroups :: (ValueList Prelude.Text),
                       -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-bedrockagentcore-browsercustom-vpcconfig.html#cfn-bedrockagentcore-browsercustom-vpcconfig-subnets>
                       subnets :: (ValueList Prelude.Text)}
  deriving stock (Prelude.Eq, Prelude.Show)
mkVpcConfigProperty ::
  ValueList Prelude.Text
  -> ValueList Prelude.Text -> VpcConfigProperty
mkVpcConfigProperty securityGroups subnets
  = VpcConfigProperty
      {haddock_workaround_ = (), securityGroups = securityGroups,
       subnets = subnets}
instance ToResourceProperties VpcConfigProperty where
  toResourceProperties VpcConfigProperty {..}
    = ResourceProperties
        {awsType = "AWS::BedrockAgentCore::BrowserCustom.VpcConfig",
         supportsTags = Prelude.False,
         properties = ["SecurityGroups" JSON..= securityGroups,
                       "Subnets" JSON..= subnets]}
instance JSON.ToJSON VpcConfigProperty where
  toJSON VpcConfigProperty {..}
    = JSON.object
        ["SecurityGroups" JSON..= securityGroups,
         "Subnets" JSON..= subnets]
instance Property "SecurityGroups" VpcConfigProperty where
  type PropertyType "SecurityGroups" VpcConfigProperty = ValueList Prelude.Text
  set newValue VpcConfigProperty {..}
    = VpcConfigProperty {securityGroups = newValue, ..}
instance Property "Subnets" VpcConfigProperty where
  type PropertyType "Subnets" VpcConfigProperty = ValueList Prelude.Text
  set newValue VpcConfigProperty {..}
    = VpcConfigProperty {subnets = newValue, ..}