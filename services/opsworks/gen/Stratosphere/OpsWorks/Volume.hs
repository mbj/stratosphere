module Stratosphere.OpsWorks.Volume (
        Volume(..), mkVolume
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import Stratosphere.ResourceProperties
import Stratosphere.Value
data Volume
  = -- |See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-opsworks-volume.html>
    Volume {-- |See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-opsworks-volume.html#cfn-opsworks-volume-ec2volumeid>
            ec2VolumeId :: (Value Prelude.Text),
            -- |See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-opsworks-volume.html#cfn-opsworks-volume-mountpoint>
            mountPoint :: (Prelude.Maybe (Value Prelude.Text)),
            -- |See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-opsworks-volume.html#cfn-opsworks-volume-name>
            name :: (Prelude.Maybe (Value Prelude.Text)),
            -- |See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-opsworks-volume.html#cfn-opsworks-volume-stackid>
            stackId :: (Value Prelude.Text)}
  deriving stock (Prelude.Eq, Prelude.Show)
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