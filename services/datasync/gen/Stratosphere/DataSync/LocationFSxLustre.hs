module Stratosphere.DataSync.LocationFSxLustre (
        LocationFSxLustre(..), mkLocationFSxLustre
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import Stratosphere.ResourceProperties
import Stratosphere.Tag
import Stratosphere.Value
data LocationFSxLustre
  = -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-datasync-locationfsxlustre.html>
    LocationFSxLustre {haddock_workaround_ :: (),
                       -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-datasync-locationfsxlustre.html#cfn-datasync-locationfsxlustre-fsxfilesystemarn>
                       fsxFilesystemArn :: (Prelude.Maybe (Value Prelude.Text)),
                       -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-datasync-locationfsxlustre.html#cfn-datasync-locationfsxlustre-securitygrouparns>
                       securityGroupArns :: (ValueList Prelude.Text),
                       -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-datasync-locationfsxlustre.html#cfn-datasync-locationfsxlustre-subdirectory>
                       subdirectory :: (Prelude.Maybe (Value Prelude.Text)),
                       -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-datasync-locationfsxlustre.html#cfn-datasync-locationfsxlustre-tags>
                       tags :: (Prelude.Maybe [Tag])}
  deriving stock (Prelude.Eq, Prelude.Show)
mkLocationFSxLustre :: ValueList Prelude.Text -> LocationFSxLustre
mkLocationFSxLustre securityGroupArns
  = LocationFSxLustre
      {haddock_workaround_ = (), securityGroupArns = securityGroupArns,
       fsxFilesystemArn = Prelude.Nothing, subdirectory = Prelude.Nothing,
       tags = Prelude.Nothing}
instance ToResourceProperties LocationFSxLustre where
  toResourceProperties LocationFSxLustre {..}
    = ResourceProperties
        {awsType = "AWS::DataSync::LocationFSxLustre",
         supportsTags = Prelude.True,
         properties = Prelude.fromList
                        ((Prelude.<>)
                           ["SecurityGroupArns" JSON..= securityGroupArns]
                           (Prelude.catMaybes
                              [(JSON..=) "FsxFilesystemArn" Prelude.<$> fsxFilesystemArn,
                               (JSON..=) "Subdirectory" Prelude.<$> subdirectory,
                               (JSON..=) "Tags" Prelude.<$> tags]))}
instance JSON.ToJSON LocationFSxLustre where
  toJSON LocationFSxLustre {..}
    = JSON.object
        (Prelude.fromList
           ((Prelude.<>)
              ["SecurityGroupArns" JSON..= securityGroupArns]
              (Prelude.catMaybes
                 [(JSON..=) "FsxFilesystemArn" Prelude.<$> fsxFilesystemArn,
                  (JSON..=) "Subdirectory" Prelude.<$> subdirectory,
                  (JSON..=) "Tags" Prelude.<$> tags])))
instance Property "FsxFilesystemArn" LocationFSxLustre where
  type PropertyType "FsxFilesystemArn" LocationFSxLustre = Value Prelude.Text
  set newValue LocationFSxLustre {..}
    = LocationFSxLustre {fsxFilesystemArn = Prelude.pure newValue, ..}
instance Property "SecurityGroupArns" LocationFSxLustre where
  type PropertyType "SecurityGroupArns" LocationFSxLustre = ValueList Prelude.Text
  set newValue LocationFSxLustre {..}
    = LocationFSxLustre {securityGroupArns = newValue, ..}
instance Property "Subdirectory" LocationFSxLustre where
  type PropertyType "Subdirectory" LocationFSxLustre = Value Prelude.Text
  set newValue LocationFSxLustre {..}
    = LocationFSxLustre {subdirectory = Prelude.pure newValue, ..}
instance Property "Tags" LocationFSxLustre where
  type PropertyType "Tags" LocationFSxLustre = [Tag]
  set newValue LocationFSxLustre {..}
    = LocationFSxLustre {tags = Prelude.pure newValue, ..}