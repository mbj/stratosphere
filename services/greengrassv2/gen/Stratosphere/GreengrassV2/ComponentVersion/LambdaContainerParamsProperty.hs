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
  = LambdaContainerParamsProperty {devices :: (Prelude.Maybe [LambdaDeviceMountProperty]),
                                   memorySizeInKB :: (Prelude.Maybe (Value Prelude.Integer)),
                                   mountROSysfs :: (Prelude.Maybe (Value Prelude.Bool)),
                                   volumes :: (Prelude.Maybe [LambdaVolumeMountProperty])}
mkLambdaContainerParamsProperty :: LambdaContainerParamsProperty
mkLambdaContainerParamsProperty
  = LambdaContainerParamsProperty
      {devices = Prelude.Nothing, memorySizeInKB = Prelude.Nothing,
       mountROSysfs = Prelude.Nothing, volumes = Prelude.Nothing}
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