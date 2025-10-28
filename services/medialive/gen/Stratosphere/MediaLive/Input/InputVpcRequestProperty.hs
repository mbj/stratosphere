module Stratosphere.MediaLive.Input.InputVpcRequestProperty (
        InputVpcRequestProperty(..), mkInputVpcRequestProperty
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import Stratosphere.ResourceProperties
import Stratosphere.Value
data InputVpcRequestProperty
  = -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-medialive-input-inputvpcrequest.html>
    InputVpcRequestProperty {haddock_workaround_ :: (),
                             -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-medialive-input-inputvpcrequest.html#cfn-medialive-input-inputvpcrequest-securitygroupids>
                             securityGroupIds :: (Prelude.Maybe (ValueList Prelude.Text)),
                             -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-medialive-input-inputvpcrequest.html#cfn-medialive-input-inputvpcrequest-subnetids>
                             subnetIds :: (Prelude.Maybe (ValueList Prelude.Text))}
  deriving stock (Prelude.Eq, Prelude.Show)
mkInputVpcRequestProperty :: InputVpcRequestProperty
mkInputVpcRequestProperty
  = InputVpcRequestProperty
      {haddock_workaround_ = (), securityGroupIds = Prelude.Nothing,
       subnetIds = Prelude.Nothing}
instance ToResourceProperties InputVpcRequestProperty where
  toResourceProperties InputVpcRequestProperty {..}
    = ResourceProperties
        {awsType = "AWS::MediaLive::Input.InputVpcRequest",
         supportsTags = Prelude.False,
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