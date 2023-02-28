module Stratosphere.DataSync.LocationFSxWindows (
        LocationFSxWindows(..), mkLocationFSxWindows
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import Stratosphere.ResourceProperties
import Stratosphere.Tag
import Stratosphere.Value
data LocationFSxWindows
  = LocationFSxWindows {domain :: (Prelude.Maybe (Value Prelude.Text)),
                        fsxFilesystemArn :: (Prelude.Maybe (Value Prelude.Text)),
                        password :: (Prelude.Maybe (Value Prelude.Text)),
                        securityGroupArns :: (ValueList Prelude.Text),
                        subdirectory :: (Prelude.Maybe (Value Prelude.Text)),
                        tags :: (Prelude.Maybe [Tag]),
                        user :: (Value Prelude.Text)}
mkLocationFSxWindows ::
  ValueList Prelude.Text -> Value Prelude.Text -> LocationFSxWindows
mkLocationFSxWindows securityGroupArns user
  = LocationFSxWindows
      {securityGroupArns = securityGroupArns, user = user,
       domain = Prelude.Nothing, fsxFilesystemArn = Prelude.Nothing,
       password = Prelude.Nothing, subdirectory = Prelude.Nothing,
       tags = Prelude.Nothing}
instance ToResourceProperties LocationFSxWindows where
  toResourceProperties LocationFSxWindows {..}
    = ResourceProperties
        {awsType = "AWS::DataSync::LocationFSxWindows",
         supportsTags = Prelude.True,
         properties = Prelude.fromList
                        ((Prelude.<>)
                           ["SecurityGroupArns" JSON..= securityGroupArns,
                            "User" JSON..= user]
                           (Prelude.catMaybes
                              [(JSON..=) "Domain" Prelude.<$> domain,
                               (JSON..=) "FsxFilesystemArn" Prelude.<$> fsxFilesystemArn,
                               (JSON..=) "Password" Prelude.<$> password,
                               (JSON..=) "Subdirectory" Prelude.<$> subdirectory,
                               (JSON..=) "Tags" Prelude.<$> tags]))}
instance JSON.ToJSON LocationFSxWindows where
  toJSON LocationFSxWindows {..}
    = JSON.object
        (Prelude.fromList
           ((Prelude.<>)
              ["SecurityGroupArns" JSON..= securityGroupArns,
               "User" JSON..= user]
              (Prelude.catMaybes
                 [(JSON..=) "Domain" Prelude.<$> domain,
                  (JSON..=) "FsxFilesystemArn" Prelude.<$> fsxFilesystemArn,
                  (JSON..=) "Password" Prelude.<$> password,
                  (JSON..=) "Subdirectory" Prelude.<$> subdirectory,
                  (JSON..=) "Tags" Prelude.<$> tags])))
instance Property "Domain" LocationFSxWindows where
  type PropertyType "Domain" LocationFSxWindows = Value Prelude.Text
  set newValue LocationFSxWindows {..}
    = LocationFSxWindows {domain = Prelude.pure newValue, ..}
instance Property "FsxFilesystemArn" LocationFSxWindows where
  type PropertyType "FsxFilesystemArn" LocationFSxWindows = Value Prelude.Text
  set newValue LocationFSxWindows {..}
    = LocationFSxWindows {fsxFilesystemArn = Prelude.pure newValue, ..}
instance Property "Password" LocationFSxWindows where
  type PropertyType "Password" LocationFSxWindows = Value Prelude.Text
  set newValue LocationFSxWindows {..}
    = LocationFSxWindows {password = Prelude.pure newValue, ..}
instance Property "SecurityGroupArns" LocationFSxWindows where
  type PropertyType "SecurityGroupArns" LocationFSxWindows = ValueList Prelude.Text
  set newValue LocationFSxWindows {..}
    = LocationFSxWindows {securityGroupArns = newValue, ..}
instance Property "Subdirectory" LocationFSxWindows where
  type PropertyType "Subdirectory" LocationFSxWindows = Value Prelude.Text
  set newValue LocationFSxWindows {..}
    = LocationFSxWindows {subdirectory = Prelude.pure newValue, ..}
instance Property "Tags" LocationFSxWindows where
  type PropertyType "Tags" LocationFSxWindows = [Tag]
  set newValue LocationFSxWindows {..}
    = LocationFSxWindows {tags = Prelude.pure newValue, ..}
instance Property "User" LocationFSxWindows where
  type PropertyType "User" LocationFSxWindows = Value Prelude.Text
  set newValue LocationFSxWindows {..}
    = LocationFSxWindows {user = newValue, ..}