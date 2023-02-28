module Stratosphere.GreengrassV2.ComponentVersion.LambdaVolumeMountProperty (
        LambdaVolumeMountProperty(..), mkLambdaVolumeMountProperty
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import Stratosphere.ResourceProperties
import Stratosphere.Value
data LambdaVolumeMountProperty
  = LambdaVolumeMountProperty {addGroupOwner :: (Prelude.Maybe (Value Prelude.Bool)),
                               destinationPath :: (Prelude.Maybe (Value Prelude.Text)),
                               permission :: (Prelude.Maybe (Value Prelude.Text)),
                               sourcePath :: (Prelude.Maybe (Value Prelude.Text))}
mkLambdaVolumeMountProperty :: LambdaVolumeMountProperty
mkLambdaVolumeMountProperty
  = LambdaVolumeMountProperty
      {addGroupOwner = Prelude.Nothing,
       destinationPath = Prelude.Nothing, permission = Prelude.Nothing,
       sourcePath = Prelude.Nothing}
instance ToResourceProperties LambdaVolumeMountProperty where
  toResourceProperties LambdaVolumeMountProperty {..}
    = ResourceProperties
        {awsType = "AWS::GreengrassV2::ComponentVersion.LambdaVolumeMount",
         supportsTags = Prelude.False,
         properties = Prelude.fromList
                        (Prelude.catMaybes
                           [(JSON..=) "AddGroupOwner" Prelude.<$> addGroupOwner,
                            (JSON..=) "DestinationPath" Prelude.<$> destinationPath,
                            (JSON..=) "Permission" Prelude.<$> permission,
                            (JSON..=) "SourcePath" Prelude.<$> sourcePath])}
instance JSON.ToJSON LambdaVolumeMountProperty where
  toJSON LambdaVolumeMountProperty {..}
    = JSON.object
        (Prelude.fromList
           (Prelude.catMaybes
              [(JSON..=) "AddGroupOwner" Prelude.<$> addGroupOwner,
               (JSON..=) "DestinationPath" Prelude.<$> destinationPath,
               (JSON..=) "Permission" Prelude.<$> permission,
               (JSON..=) "SourcePath" Prelude.<$> sourcePath]))
instance Property "AddGroupOwner" LambdaVolumeMountProperty where
  type PropertyType "AddGroupOwner" LambdaVolumeMountProperty = Value Prelude.Bool
  set newValue LambdaVolumeMountProperty {..}
    = LambdaVolumeMountProperty
        {addGroupOwner = Prelude.pure newValue, ..}
instance Property "DestinationPath" LambdaVolumeMountProperty where
  type PropertyType "DestinationPath" LambdaVolumeMountProperty = Value Prelude.Text
  set newValue LambdaVolumeMountProperty {..}
    = LambdaVolumeMountProperty
        {destinationPath = Prelude.pure newValue, ..}
instance Property "Permission" LambdaVolumeMountProperty where
  type PropertyType "Permission" LambdaVolumeMountProperty = Value Prelude.Text
  set newValue LambdaVolumeMountProperty {..}
    = LambdaVolumeMountProperty
        {permission = Prelude.pure newValue, ..}
instance Property "SourcePath" LambdaVolumeMountProperty where
  type PropertyType "SourcePath" LambdaVolumeMountProperty = Value Prelude.Text
  set newValue LambdaVolumeMountProperty {..}
    = LambdaVolumeMountProperty
        {sourcePath = Prelude.pure newValue, ..}