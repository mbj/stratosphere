module Stratosphere.GreengrassV2.ComponentVersion.LambdaContainerParamsProperty (
        module Exports, LambdaContainerParamsProperty(..),
        mkLambdaContainerParamsProperty
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import {-# SOURCE #-} Stratosphere.GreengrassV2.ComponentVersion.LambdaDeviceMountProperty as Exports
import {-# SOURCE #-} Stratosphere.GreengrassV2.ComponentVersion.LambdaVolumeMountProperty as Exports
import Stratosphere.ResourceProperties
import Stratosphere.Value
data LambdaContainerParamsProperty
  = -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-greengrassv2-componentversion-lambdacontainerparams.html>
    LambdaContainerParamsProperty {haddock_workaround_ :: (),
                                   -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-greengrassv2-componentversion-lambdacontainerparams.html#cfn-greengrassv2-componentversion-lambdacontainerparams-devices>
                                   devices :: (Prelude.Maybe [LambdaDeviceMountProperty]),
                                   -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-greengrassv2-componentversion-lambdacontainerparams.html#cfn-greengrassv2-componentversion-lambdacontainerparams-memorysizeinkb>
                                   memorySizeInKB :: (Prelude.Maybe (Value Prelude.Integer)),
                                   -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-greengrassv2-componentversion-lambdacontainerparams.html#cfn-greengrassv2-componentversion-lambdacontainerparams-mountrosysfs>
                                   mountROSysfs :: (Prelude.Maybe (Value Prelude.Bool)),
                                   -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-greengrassv2-componentversion-lambdacontainerparams.html#cfn-greengrassv2-componentversion-lambdacontainerparams-volumes>
                                   volumes :: (Prelude.Maybe [LambdaVolumeMountProperty])}
  deriving stock (Prelude.Eq, Prelude.Show)
mkLambdaContainerParamsProperty :: LambdaContainerParamsProperty
mkLambdaContainerParamsProperty
  = LambdaContainerParamsProperty
      {haddock_workaround_ = (), devices = Prelude.Nothing,
       memorySizeInKB = Prelude.Nothing, mountROSysfs = Prelude.Nothing,
       volumes = Prelude.Nothing}
instance ToResourceProperties LambdaContainerParamsProperty where
  toResourceProperties LambdaContainerParamsProperty {..}
    = ResourceProperties
        {awsType = "AWS::GreengrassV2::ComponentVersion.LambdaContainerParams",
         supportsTags = Prelude.False,
         properties = Prelude.fromList
                        (Prelude.catMaybes
                           [(JSON..=) "Devices" Prelude.<$> devices,
                            (JSON..=) "MemorySizeInKB" Prelude.<$> memorySizeInKB,
                            (JSON..=) "MountROSysfs" Prelude.<$> mountROSysfs,
                            (JSON..=) "Volumes" Prelude.<$> volumes])}
instance JSON.ToJSON LambdaContainerParamsProperty where
  toJSON LambdaContainerParamsProperty {..}
    = JSON.object
        (Prelude.fromList
           (Prelude.catMaybes
              [(JSON..=) "Devices" Prelude.<$> devices,
               (JSON..=) "MemorySizeInKB" Prelude.<$> memorySizeInKB,
               (JSON..=) "MountROSysfs" Prelude.<$> mountROSysfs,
               (JSON..=) "Volumes" Prelude.<$> volumes]))
instance Property "Devices" LambdaContainerParamsProperty where
  type PropertyType "Devices" LambdaContainerParamsProperty = [LambdaDeviceMountProperty]
  set newValue LambdaContainerParamsProperty {..}
    = LambdaContainerParamsProperty
        {devices = Prelude.pure newValue, ..}
instance Property "MemorySizeInKB" LambdaContainerParamsProperty where
  type PropertyType "MemorySizeInKB" LambdaContainerParamsProperty = Value Prelude.Integer
  set newValue LambdaContainerParamsProperty {..}
    = LambdaContainerParamsProperty
        {memorySizeInKB = Prelude.pure newValue, ..}
instance Property "MountROSysfs" LambdaContainerParamsProperty where
  type PropertyType "MountROSysfs" LambdaContainerParamsProperty = Value Prelude.Bool
  set newValue LambdaContainerParamsProperty {..}
    = LambdaContainerParamsProperty
        {mountROSysfs = Prelude.pure newValue, ..}
instance Property "Volumes" LambdaContainerParamsProperty where
  type PropertyType "Volumes" LambdaContainerParamsProperty = [LambdaVolumeMountProperty]
  set newValue LambdaContainerParamsProperty {..}
    = LambdaContainerParamsProperty
        {volumes = Prelude.pure newValue, ..}