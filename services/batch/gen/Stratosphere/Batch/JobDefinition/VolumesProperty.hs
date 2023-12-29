module Stratosphere.Batch.JobDefinition.VolumesProperty (
        module Exports, VolumesProperty(..), mkVolumesProperty
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import {-# SOURCE #-} Stratosphere.Batch.JobDefinition.EfsVolumeConfigurationProperty as Exports
import {-# SOURCE #-} Stratosphere.Batch.JobDefinition.VolumesHostProperty as Exports
import Stratosphere.ResourceProperties
import Stratosphere.Value
data VolumesProperty
  = VolumesProperty {efsVolumeConfiguration :: (Prelude.Maybe EfsVolumeConfigurationProperty),
                     host :: (Prelude.Maybe VolumesHostProperty),
                     name :: (Prelude.Maybe (Value Prelude.Text))}
  deriving stock (Prelude.Eq, Prelude.Show)
mkVolumesProperty :: VolumesProperty
mkVolumesProperty
  = VolumesProperty
      {efsVolumeConfiguration = Prelude.Nothing, host = Prelude.Nothing,
       name = Prelude.Nothing}
instance ToResourceProperties VolumesProperty where
  toResourceProperties VolumesProperty {..}
    = ResourceProperties
        {awsType = "AWS::Batch::JobDefinition.Volumes",
         supportsTags = Prelude.False,
         properties = Prelude.fromList
                        (Prelude.catMaybes
                           [(JSON..=) "EfsVolumeConfiguration"
                              Prelude.<$> efsVolumeConfiguration,
                            (JSON..=) "Host" Prelude.<$> host,
                            (JSON..=) "Name" Prelude.<$> name])}
instance JSON.ToJSON VolumesProperty where
  toJSON VolumesProperty {..}
    = JSON.object
        (Prelude.fromList
           (Prelude.catMaybes
              [(JSON..=) "EfsVolumeConfiguration"
                 Prelude.<$> efsVolumeConfiguration,
               (JSON..=) "Host" Prelude.<$> host,
               (JSON..=) "Name" Prelude.<$> name]))
instance Property "EfsVolumeConfiguration" VolumesProperty where
  type PropertyType "EfsVolumeConfiguration" VolumesProperty = EfsVolumeConfigurationProperty
  set newValue VolumesProperty {..}
    = VolumesProperty
        {efsVolumeConfiguration = Prelude.pure newValue, ..}
instance Property "Host" VolumesProperty where
  type PropertyType "Host" VolumesProperty = VolumesHostProperty
  set newValue VolumesProperty {..}
    = VolumesProperty {host = Prelude.pure newValue, ..}
instance Property "Name" VolumesProperty where
  type PropertyType "Name" VolumesProperty = Value Prelude.Text
  set newValue VolumesProperty {..}
    = VolumesProperty {name = Prelude.pure newValue, ..}