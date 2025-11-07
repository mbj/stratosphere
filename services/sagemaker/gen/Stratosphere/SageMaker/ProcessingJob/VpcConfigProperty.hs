module Stratosphere.SageMaker.ProcessingJob.VpcConfigProperty (
        VpcConfigProperty(..), mkVpcConfigProperty
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import Stratosphere.ResourceProperties
import Stratosphere.Value
data VpcConfigProperty
  = -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-sagemaker-processingjob-vpcconfig.html>
    VpcConfigProperty {haddock_workaround_ :: (),
                       -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-sagemaker-processingjob-vpcconfig.html#cfn-sagemaker-processingjob-vpcconfig-securitygroupids>
                       securityGroupIds :: (ValueList Prelude.Text),
                       -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-sagemaker-processingjob-vpcconfig.html#cfn-sagemaker-processingjob-vpcconfig-subnets>
                       subnets :: (ValueList Prelude.Text)}
  deriving stock (Prelude.Eq, Prelude.Show)
mkVpcConfigProperty ::
  ValueList Prelude.Text
  -> ValueList Prelude.Text -> VpcConfigProperty
mkVpcConfigProperty securityGroupIds subnets
  = VpcConfigProperty
      {haddock_workaround_ = (), securityGroupIds = securityGroupIds,
       subnets = subnets}
instance ToResourceProperties VpcConfigProperty where
  toResourceProperties VpcConfigProperty {..}
    = ResourceProperties
        {awsType = "AWS::SageMaker::ProcessingJob.VpcConfig",
         supportsTags = Prelude.False,
         properties = ["SecurityGroupIds" JSON..= securityGroupIds,
                       "Subnets" JSON..= subnets]}
instance JSON.ToJSON VpcConfigProperty where
  toJSON VpcConfigProperty {..}
    = JSON.object
        ["SecurityGroupIds" JSON..= securityGroupIds,
         "Subnets" JSON..= subnets]
instance Property "SecurityGroupIds" VpcConfigProperty where
  type PropertyType "SecurityGroupIds" VpcConfigProperty = ValueList Prelude.Text
  set newValue VpcConfigProperty {..}
    = VpcConfigProperty {securityGroupIds = newValue, ..}
instance Property "Subnets" VpcConfigProperty where
  type PropertyType "Subnets" VpcConfigProperty = ValueList Prelude.Text
  set newValue VpcConfigProperty {..}
    = VpcConfigProperty {subnets = newValue, ..}