module Stratosphere.CodeBuild.Fleet.VpcConfigProperty (
        VpcConfigProperty(..), mkVpcConfigProperty
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import Stratosphere.ResourceProperties
import Stratosphere.Value
data VpcConfigProperty
  = -- |See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-codebuild-fleet-vpcconfig.html>
    VpcConfigProperty {-- |See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-codebuild-fleet-vpcconfig.html#cfn-codebuild-fleet-vpcconfig-securitygroupids>
                       securityGroupIds :: (Prelude.Maybe (ValueList Prelude.Text)),
                       -- |See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-codebuild-fleet-vpcconfig.html#cfn-codebuild-fleet-vpcconfig-subnets>
                       subnets :: (Prelude.Maybe (ValueList Prelude.Text)),
                       -- |See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-codebuild-fleet-vpcconfig.html#cfn-codebuild-fleet-vpcconfig-vpcid>
                       vpcId :: (Prelude.Maybe (Value Prelude.Text))}
  deriving stock (Prelude.Eq, Prelude.Show)
mkVpcConfigProperty :: VpcConfigProperty
mkVpcConfigProperty
  = VpcConfigProperty
      {securityGroupIds = Prelude.Nothing, subnets = Prelude.Nothing,
       vpcId = Prelude.Nothing}
instance ToResourceProperties VpcConfigProperty where
  toResourceProperties VpcConfigProperty {..}
    = ResourceProperties
        {awsType = "AWS::CodeBuild::Fleet.VpcConfig",
         supportsTags = Prelude.False,
         properties = Prelude.fromList
                        (Prelude.catMaybes
                           [(JSON..=) "SecurityGroupIds" Prelude.<$> securityGroupIds,
                            (JSON..=) "Subnets" Prelude.<$> subnets,
                            (JSON..=) "VpcId" Prelude.<$> vpcId])}
instance JSON.ToJSON VpcConfigProperty where
  toJSON VpcConfigProperty {..}
    = JSON.object
        (Prelude.fromList
           (Prelude.catMaybes
              [(JSON..=) "SecurityGroupIds" Prelude.<$> securityGroupIds,
               (JSON..=) "Subnets" Prelude.<$> subnets,
               (JSON..=) "VpcId" Prelude.<$> vpcId]))
instance Property "SecurityGroupIds" VpcConfigProperty where
  type PropertyType "SecurityGroupIds" VpcConfigProperty = ValueList Prelude.Text
  set newValue VpcConfigProperty {..}
    = VpcConfigProperty {securityGroupIds = Prelude.pure newValue, ..}
instance Property "Subnets" VpcConfigProperty where
  type PropertyType "Subnets" VpcConfigProperty = ValueList Prelude.Text
  set newValue VpcConfigProperty {..}
    = VpcConfigProperty {subnets = Prelude.pure newValue, ..}
instance Property "VpcId" VpcConfigProperty where
  type PropertyType "VpcId" VpcConfigProperty = Value Prelude.Text
  set newValue VpcConfigProperty {..}
    = VpcConfigProperty {vpcId = Prelude.pure newValue, ..}