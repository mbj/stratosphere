module Stratosphere.MediaLive.Input.InputVpcRequestProperty (
        InputVpcRequestProperty(..), mkInputVpcRequestProperty
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import Stratosphere.ResourceProperties
import Stratosphere.Value
data InputVpcRequestProperty
  = InputVpcRequestProperty {securityGroupIds :: (Prelude.Maybe (ValueList Prelude.Text)),
                             subnetIds :: (Prelude.Maybe (ValueList Prelude.Text))}
mkInputVpcRequestProperty :: InputVpcRequestProperty
mkInputVpcRequestProperty
  = InputVpcRequestProperty
      {securityGroupIds = Prelude.Nothing, subnetIds = Prelude.Nothing}
instance ToResourceProperties InputVpcRequestProperty where
  toResourceProperties InputVpcRequestProperty {..}
    = ResourceProperties
        {awsType = "AWS::MediaLive::Input.InputVpcRequest",
         properties = Prelude.fromList
                        (Prelude.catMaybes
                           [(JSON..=) "SecurityGroupIds" Prelude.<$> securityGroupIds,
                            (JSON..=) "SubnetIds" Prelude.<$> subnetIds])}
instance JSON.ToJSON InputVpcRequestProperty where
  toJSON InputVpcRequestProperty {..}
    = JSON.object
        (Prelude.fromList
           (Prelude.catMaybes
              [(JSON..=) "SecurityGroupIds" Prelude.<$> securityGroupIds,
               (JSON..=) "SubnetIds" Prelude.<$> subnetIds]))
instance Property "SecurityGroupIds" InputVpcRequestProperty where
  type PropertyType "SecurityGroupIds" InputVpcRequestProperty = ValueList Prelude.Text
  set newValue InputVpcRequestProperty {..}
    = InputVpcRequestProperty
        {securityGroupIds = Prelude.pure newValue, ..}
instance Property "SubnetIds" InputVpcRequestProperty where
  type PropertyType "SubnetIds" InputVpcRequestProperty = ValueList Prelude.Text
  set newValue InputVpcRequestProperty {..}
    = InputVpcRequestProperty {subnetIds = Prelude.pure newValue, ..}