module Stratosphere.CodeBuild.Project.VpcConfigProperty (
        VpcConfigProperty(..), mkVpcConfigProperty
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import Stratosphere.ResourceProperties
import Stratosphere.Value
data VpcConfigProperty
  = VpcConfigProperty {securityGroupIds :: (Prelude.Maybe (ValueList (Value Prelude.Text))),
                       subnets :: (Prelude.Maybe (ValueList (Value Prelude.Text))),
                       vpcId :: (Prelude.Maybe (Value Prelude.Text))}
mkVpcConfigProperty :: VpcConfigProperty
mkVpcConfigProperty
  = VpcConfigProperty
      {securityGroupIds = Prelude.Nothing, subnets = Prelude.Nothing,
       vpcId = Prelude.Nothing}
instance ToResourceProperties VpcConfigProperty where
  toResourceProperties VpcConfigProperty {..}
    = ResourceProperties
        {awsType = "AWS::CodeBuild::Project.VpcConfig",
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
  type PropertyType "SecurityGroupIds" VpcConfigProperty = ValueList (Value Prelude.Text)
  set newValue VpcConfigProperty {..}
    = VpcConfigProperty {securityGroupIds = Prelude.pure newValue, ..}
instance Property "Subnets" VpcConfigProperty where
  type PropertyType "Subnets" VpcConfigProperty = ValueList (Value Prelude.Text)
  set newValue VpcConfigProperty {..}
    = VpcConfigProperty {subnets = Prelude.pure newValue, ..}
instance Property "VpcId" VpcConfigProperty where
  type PropertyType "VpcId" VpcConfigProperty = Value Prelude.Text
  set newValue VpcConfigProperty {..}
    = VpcConfigProperty {vpcId = Prelude.pure newValue, ..}