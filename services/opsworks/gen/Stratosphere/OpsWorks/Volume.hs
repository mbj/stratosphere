module Stratosphere.OpsWorks.Volume (
        Volume(..), mkVolume
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import Stratosphere.ResourceProperties
import Stratosphere.Value
data Volume
  = Volume {ec2VolumeId :: (Value Prelude.Text),
            mountPoint :: (Prelude.Maybe (Value Prelude.Text)),
            name :: (Prelude.Maybe (Value Prelude.Text)),
            stackId :: (Value Prelude.Text)}
mkVolume :: Value Prelude.Text -> Value Prelude.Text -> Volume
mkVolume ec2VolumeId stackId
  = Volume
      {ec2VolumeId = ec2VolumeId, stackId = stackId,
       mountPoint = Prelude.Nothing, name = Prelude.Nothing}
instance ToResourceProperties Volume where
  toResourceProperties Volume {..}
    = ResourceProperties
        {awsType = "AWS::OpsWorks::Volume", supportsTags = Prelude.False,
         properties = Prelude.fromList
                        ((Prelude.<>)
                           ["Ec2VolumeId" JSON..= ec2VolumeId, "StackId" JSON..= stackId]
                           (Prelude.catMaybes
                              [(JSON..=) "MountPoint" Prelude.<$> mountPoint,
                               (JSON..=) "Name" Prelude.<$> name]))}
instance JSON.ToJSON Volume where
  toJSON Volume {..}
    = JSON.object
        (Prelude.fromList
           ((Prelude.<>)
              ["Ec2VolumeId" JSON..= ec2VolumeId, "StackId" JSON..= stackId]
              (Prelude.catMaybes
                 [(JSON..=) "MountPoint" Prelude.<$> mountPoint,
                  (JSON..=) "Name" Prelude.<$> name])))
instance Property "Ec2VolumeId" Volume where
  type PropertyType "Ec2VolumeId" Volume = Value Prelude.Text
  set newValue Volume {..} = Volume {ec2VolumeId = newValue, ..}
instance Property "MountPoint" Volume where
  type PropertyType "MountPoint" Volume = Value Prelude.Text
  set newValue Volume {..}
    = Volume {mountPoint = Prelude.pure newValue, ..}
instance Property "Name" Volume where
  type PropertyType "Name" Volume = Value Prelude.Text
  set newValue Volume {..}
    = Volume {name = Prelude.pure newValue, ..}
instance Property "StackId" Volume where
  type PropertyType "StackId" Volume = Value Prelude.Text
  set newValue Volume {..} = Volume {stackId = newValue, ..}