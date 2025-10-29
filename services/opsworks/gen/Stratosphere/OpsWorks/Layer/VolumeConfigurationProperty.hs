module Stratosphere.OpsWorks.Layer.VolumeConfigurationProperty (
        VolumeConfigurationProperty(..), mkVolumeConfigurationProperty
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import Stratosphere.ResourceProperties
import Stratosphere.Value
data VolumeConfigurationProperty
  = -- |See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-opsworks-layer-volumeconfiguration.html>
    VolumeConfigurationProperty {-- |See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-opsworks-layer-volumeconfiguration.html#cfn-opsworks-layer-volumeconfiguration-encrypted>
                                 encrypted :: (Prelude.Maybe (Value Prelude.Bool)),
                                 -- |See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-opsworks-layer-volumeconfiguration.html#cfn-opsworks-layer-volconfig-iops>
                                 iops :: (Prelude.Maybe (Value Prelude.Integer)),
                                 -- |See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-opsworks-layer-volumeconfiguration.html#cfn-opsworks-layer-volconfig-mountpoint>
                                 mountPoint :: (Prelude.Maybe (Value Prelude.Text)),
                                 -- |See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-opsworks-layer-volumeconfiguration.html#cfn-opsworks-layer-volconfig-numberofdisks>
                                 numberOfDisks :: (Prelude.Maybe (Value Prelude.Integer)),
                                 -- |See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-opsworks-layer-volumeconfiguration.html#cfn-opsworks-layer-volconfig-raidlevel>
                                 raidLevel :: (Prelude.Maybe (Value Prelude.Integer)),
                                 -- |See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-opsworks-layer-volumeconfiguration.html#cfn-opsworks-layer-volconfig-size>
                                 size :: (Prelude.Maybe (Value Prelude.Integer)),
                                 -- |See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-opsworks-layer-volumeconfiguration.html#cfn-opsworks-layer-volconfig-volumetype>
                                 volumeType :: (Prelude.Maybe (Value Prelude.Text))}
  deriving stock (Prelude.Eq, Prelude.Show)
mkVolumeConfigurationProperty :: VolumeConfigurationProperty
mkVolumeConfigurationProperty
  = VolumeConfigurationProperty
      {encrypted = Prelude.Nothing, iops = Prelude.Nothing,
       mountPoint = Prelude.Nothing, numberOfDisks = Prelude.Nothing,
       raidLevel = Prelude.Nothing, size = Prelude.Nothing,
       volumeType = Prelude.Nothing}
instance ToResourceProperties VolumeConfigurationProperty where
  toResourceProperties VolumeConfigurationProperty {..}
    = ResourceProperties
        {awsType = "AWS::OpsWorks::Layer.VolumeConfiguration",
         supportsTags = Prelude.False,
         properties = Prelude.fromList
                        (Prelude.catMaybes
                           [(JSON..=) "Encrypted" Prelude.<$> encrypted,
                            (JSON..=) "Iops" Prelude.<$> iops,
                            (JSON..=) "MountPoint" Prelude.<$> mountPoint,
                            (JSON..=) "NumberOfDisks" Prelude.<$> numberOfDisks,
                            (JSON..=) "RaidLevel" Prelude.<$> raidLevel,
                            (JSON..=) "Size" Prelude.<$> size,
                            (JSON..=) "VolumeType" Prelude.<$> volumeType])}
instance JSON.ToJSON VolumeConfigurationProperty where
  toJSON VolumeConfigurationProperty {..}
    = JSON.object
        (Prelude.fromList
           (Prelude.catMaybes
              [(JSON..=) "Encrypted" Prelude.<$> encrypted,
               (JSON..=) "Iops" Prelude.<$> iops,
               (JSON..=) "MountPoint" Prelude.<$> mountPoint,
               (JSON..=) "NumberOfDisks" Prelude.<$> numberOfDisks,
               (JSON..=) "RaidLevel" Prelude.<$> raidLevel,
               (JSON..=) "Size" Prelude.<$> size,
               (JSON..=) "VolumeType" Prelude.<$> volumeType]))
instance Property "Encrypted" VolumeConfigurationProperty where
  type PropertyType "Encrypted" VolumeConfigurationProperty = Value Prelude.Bool
  set newValue VolumeConfigurationProperty {..}
    = VolumeConfigurationProperty
        {encrypted = Prelude.pure newValue, ..}
instance Property "Iops" VolumeConfigurationProperty where
  type PropertyType "Iops" VolumeConfigurationProperty = Value Prelude.Integer
  set newValue VolumeConfigurationProperty {..}
    = VolumeConfigurationProperty {iops = Prelude.pure newValue, ..}
instance Property "MountPoint" VolumeConfigurationProperty where
  type PropertyType "MountPoint" VolumeConfigurationProperty = Value Prelude.Text
  set newValue VolumeConfigurationProperty {..}
    = VolumeConfigurationProperty
        {mountPoint = Prelude.pure newValue, ..}
instance Property "NumberOfDisks" VolumeConfigurationProperty where
  type PropertyType "NumberOfDisks" VolumeConfigurationProperty = Value Prelude.Integer
  set newValue VolumeConfigurationProperty {..}
    = VolumeConfigurationProperty
        {numberOfDisks = Prelude.pure newValue, ..}
instance Property "RaidLevel" VolumeConfigurationProperty where
  type PropertyType "RaidLevel" VolumeConfigurationProperty = Value Prelude.Integer
  set newValue VolumeConfigurationProperty {..}
    = VolumeConfigurationProperty
        {raidLevel = Prelude.pure newValue, ..}
instance Property "Size" VolumeConfigurationProperty where
  type PropertyType "Size" VolumeConfigurationProperty = Value Prelude.Integer
  set newValue VolumeConfigurationProperty {..}
    = VolumeConfigurationProperty {size = Prelude.pure newValue, ..}
instance Property "VolumeType" VolumeConfigurationProperty where
  type PropertyType "VolumeType" VolumeConfigurationProperty = Value Prelude.Text
  set newValue VolumeConfigurationProperty {..}
    = VolumeConfigurationProperty
        {volumeType = Prelude.pure newValue, ..}