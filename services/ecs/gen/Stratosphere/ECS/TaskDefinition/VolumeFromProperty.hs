module Stratosphere.ECS.TaskDefinition.VolumeFromProperty (
        VolumeFromProperty(..), mkVolumeFromProperty
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import Stratosphere.ResourceProperties
import Stratosphere.Value
data VolumeFromProperty
  = VolumeFromProperty {readOnly :: (Prelude.Maybe (Value Prelude.Bool)),
                        sourceContainer :: (Prelude.Maybe (Value Prelude.Text))}
mkVolumeFromProperty :: VolumeFromProperty
mkVolumeFromProperty
  = VolumeFromProperty
      {readOnly = Prelude.Nothing, sourceContainer = Prelude.Nothing}
instance ToResourceProperties VolumeFromProperty where
  toResourceProperties VolumeFromProperty {..}
    = ResourceProperties
        {awsType = "AWS::ECS::TaskDefinition.VolumeFrom",
         supportsTags = Prelude.False,
         properties = Prelude.fromList
                        (Prelude.catMaybes
                           [(JSON..=) "ReadOnly" Prelude.<$> readOnly,
                            (JSON..=) "SourceContainer" Prelude.<$> sourceContainer])}
instance JSON.ToJSON VolumeFromProperty where
  toJSON VolumeFromProperty {..}
    = JSON.object
        (Prelude.fromList
           (Prelude.catMaybes
              [(JSON..=) "ReadOnly" Prelude.<$> readOnly,
               (JSON..=) "SourceContainer" Prelude.<$> sourceContainer]))
instance Property "ReadOnly" VolumeFromProperty where
  type PropertyType "ReadOnly" VolumeFromProperty = Value Prelude.Bool
  set newValue VolumeFromProperty {..}
    = VolumeFromProperty {readOnly = Prelude.pure newValue, ..}
instance Property "SourceContainer" VolumeFromProperty where
  type PropertyType "SourceContainer" VolumeFromProperty = Value Prelude.Text
  set newValue VolumeFromProperty {..}
    = VolumeFromProperty {sourceContainer = Prelude.pure newValue, ..}