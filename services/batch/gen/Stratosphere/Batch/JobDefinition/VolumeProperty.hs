module Stratosphere.Batch.JobDefinition.VolumeProperty (
        module Exports, VolumeProperty(..), mkVolumeProperty
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import {-# SOURCE #-} Stratosphere.Batch.JobDefinition.EFSVolumeConfigurationProperty as Exports
import {-# SOURCE #-} Stratosphere.Batch.JobDefinition.HostProperty as Exports
import Stratosphere.ResourceProperties
import Stratosphere.Value
data VolumeProperty
  = -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-batch-jobdefinition-volume.html>
    VolumeProperty {haddock_workaround_ :: (),
                    -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-batch-jobdefinition-volume.html#cfn-batch-jobdefinition-volume-efsvolumeconfiguration>
                    efsVolumeConfiguration :: (Prelude.Maybe EFSVolumeConfigurationProperty),
                    -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-batch-jobdefinition-volume.html#cfn-batch-jobdefinition-volume-host>
                    host :: (Prelude.Maybe HostProperty),
                    -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-batch-jobdefinition-volume.html#cfn-batch-jobdefinition-volume-name>
                    name :: (Prelude.Maybe (Value Prelude.Text))}
  deriving stock (Prelude.Eq, Prelude.Show)
mkVolumeProperty :: VolumeProperty
mkVolumeProperty
  = VolumeProperty
      {haddock_workaround_ = (),
       efsVolumeConfiguration = Prelude.Nothing, host = Prelude.Nothing,
       name = Prelude.Nothing}
instance ToResourceProperties VolumeProperty where
  toResourceProperties VolumeProperty {..}
    = ResourceProperties
        {awsType = "AWS::Batch::JobDefinition.Volume",
         supportsTags = Prelude.False,
         properties = Prelude.fromList
                        (Prelude.catMaybes
                           [(JSON..=) "EfsVolumeConfiguration"
                              Prelude.<$> efsVolumeConfiguration,
                            (JSON..=) "Host" Prelude.<$> host,
                            (JSON..=) "Name" Prelude.<$> name])}
instance JSON.ToJSON VolumeProperty where
  toJSON VolumeProperty {..}
    = JSON.object
        (Prelude.fromList
           (Prelude.catMaybes
              [(JSON..=) "EfsVolumeConfiguration"
                 Prelude.<$> efsVolumeConfiguration,
               (JSON..=) "Host" Prelude.<$> host,
               (JSON..=) "Name" Prelude.<$> name]))
instance Property "EfsVolumeConfiguration" VolumeProperty where
  type PropertyType "EfsVolumeConfiguration" VolumeProperty = EFSVolumeConfigurationProperty
  set newValue VolumeProperty {..}
    = VolumeProperty
        {efsVolumeConfiguration = Prelude.pure newValue, ..}
instance Property "Host" VolumeProperty where
  type PropertyType "Host" VolumeProperty = HostProperty
  set newValue VolumeProperty {..}
    = VolumeProperty {host = Prelude.pure newValue, ..}
instance Property "Name" VolumeProperty where
  type PropertyType "Name" VolumeProperty = Value Prelude.Text
  set newValue VolumeProperty {..}
    = VolumeProperty {name = Prelude.pure newValue, ..}