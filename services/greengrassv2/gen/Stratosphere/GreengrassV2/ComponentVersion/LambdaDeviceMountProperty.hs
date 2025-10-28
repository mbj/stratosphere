module Stratosphere.GreengrassV2.ComponentVersion.LambdaDeviceMountProperty (
        LambdaDeviceMountProperty(..), mkLambdaDeviceMountProperty
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import Stratosphere.ResourceProperties
import Stratosphere.Value
data LambdaDeviceMountProperty
  = -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-greengrassv2-componentversion-lambdadevicemount.html>
    LambdaDeviceMountProperty {haddock_workaround_ :: (),
                               -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-greengrassv2-componentversion-lambdadevicemount.html#cfn-greengrassv2-componentversion-lambdadevicemount-addgroupowner>
                               addGroupOwner :: (Prelude.Maybe (Value Prelude.Bool)),
                               -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-greengrassv2-componentversion-lambdadevicemount.html#cfn-greengrassv2-componentversion-lambdadevicemount-path>
                               path :: (Prelude.Maybe (Value Prelude.Text)),
                               -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-greengrassv2-componentversion-lambdadevicemount.html#cfn-greengrassv2-componentversion-lambdadevicemount-permission>
                               permission :: (Prelude.Maybe (Value Prelude.Text))}
  deriving stock (Prelude.Eq, Prelude.Show)
mkLambdaDeviceMountProperty :: LambdaDeviceMountProperty
mkLambdaDeviceMountProperty
  = LambdaDeviceMountProperty
      {haddock_workaround_ = (), addGroupOwner = Prelude.Nothing,
       path = Prelude.Nothing, permission = Prelude.Nothing}
instance ToResourceProperties LambdaDeviceMountProperty where
  toResourceProperties LambdaDeviceMountProperty {..}
    = ResourceProperties
        {awsType = "AWS::GreengrassV2::ComponentVersion.LambdaDeviceMount",
         supportsTags = Prelude.False,
         properties = Prelude.fromList
                        (Prelude.catMaybes
                           [(JSON..=) "AddGroupOwner" Prelude.<$> addGroupOwner,
                            (JSON..=) "Path" Prelude.<$> path,
                            (JSON..=) "Permission" Prelude.<$> permission])}
instance JSON.ToJSON LambdaDeviceMountProperty where
  toJSON LambdaDeviceMountProperty {..}
    = JSON.object
        (Prelude.fromList
           (Prelude.catMaybes
              [(JSON..=) "AddGroupOwner" Prelude.<$> addGroupOwner,
               (JSON..=) "Path" Prelude.<$> path,
               (JSON..=) "Permission" Prelude.<$> permission]))
instance Property "AddGroupOwner" LambdaDeviceMountProperty where
  type PropertyType "AddGroupOwner" LambdaDeviceMountProperty = Value Prelude.Bool
  set newValue LambdaDeviceMountProperty {..}
    = LambdaDeviceMountProperty
        {addGroupOwner = Prelude.pure newValue, ..}
instance Property "Path" LambdaDeviceMountProperty where
  type PropertyType "Path" LambdaDeviceMountProperty = Value Prelude.Text
  set newValue LambdaDeviceMountProperty {..}
    = LambdaDeviceMountProperty {path = Prelude.pure newValue, ..}
instance Property "Permission" LambdaDeviceMountProperty where
  type PropertyType "Permission" LambdaDeviceMountProperty = Value Prelude.Text
  set newValue LambdaDeviceMountProperty {..}
    = LambdaDeviceMountProperty
        {permission = Prelude.pure newValue, ..}