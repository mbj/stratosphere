module Stratosphere.DataSync.LocationFSxOpenZFS (
        module Exports, LocationFSxOpenZFS(..), mkLocationFSxOpenZFS
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import {-# SOURCE #-} Stratosphere.DataSync.LocationFSxOpenZFS.ProtocolProperty as Exports
import Stratosphere.ResourceProperties
import Stratosphere.Tag
import Stratosphere.Value
data LocationFSxOpenZFS
  = LocationFSxOpenZFS {fsxFilesystemArn :: (Prelude.Maybe (Value Prelude.Text)),
                        protocol :: ProtocolProperty,
                        securityGroupArns :: (ValueList Prelude.Text),
                        subdirectory :: (Prelude.Maybe (Value Prelude.Text)),
                        tags :: (Prelude.Maybe [Tag])}
  deriving stock (Prelude.Eq, Prelude.Show)
mkLocationFSxOpenZFS ::
  ProtocolProperty -> ValueList Prelude.Text -> LocationFSxOpenZFS
mkLocationFSxOpenZFS protocol securityGroupArns
  = LocationFSxOpenZFS
      {protocol = protocol, securityGroupArns = securityGroupArns,
       fsxFilesystemArn = Prelude.Nothing, subdirectory = Prelude.Nothing,
       tags = Prelude.Nothing}
instance ToResourceProperties LocationFSxOpenZFS where
  toResourceProperties LocationFSxOpenZFS {..}
    = ResourceProperties
        {awsType = "AWS::DataSync::LocationFSxOpenZFS",
         supportsTags = Prelude.True,
         properties = Prelude.fromList
                        ((Prelude.<>)
                           ["Protocol" JSON..= protocol,
                            "SecurityGroupArns" JSON..= securityGroupArns]
                           (Prelude.catMaybes
                              [(JSON..=) "FsxFilesystemArn" Prelude.<$> fsxFilesystemArn,
                               (JSON..=) "Subdirectory" Prelude.<$> subdirectory,
                               (JSON..=) "Tags" Prelude.<$> tags]))}
instance JSON.ToJSON LocationFSxOpenZFS where
  toJSON LocationFSxOpenZFS {..}
    = JSON.object
        (Prelude.fromList
           ((Prelude.<>)
              ["Protocol" JSON..= protocol,
               "SecurityGroupArns" JSON..= securityGroupArns]
              (Prelude.catMaybes
                 [(JSON..=) "FsxFilesystemArn" Prelude.<$> fsxFilesystemArn,
                  (JSON..=) "Subdirectory" Prelude.<$> subdirectory,
                  (JSON..=) "Tags" Prelude.<$> tags])))
instance Property "FsxFilesystemArn" LocationFSxOpenZFS where
  type PropertyType "FsxFilesystemArn" LocationFSxOpenZFS = Value Prelude.Text
  set newValue LocationFSxOpenZFS {..}
    = LocationFSxOpenZFS {fsxFilesystemArn = Prelude.pure newValue, ..}
instance Property "Protocol" LocationFSxOpenZFS where
  type PropertyType "Protocol" LocationFSxOpenZFS = ProtocolProperty
  set newValue LocationFSxOpenZFS {..}
    = LocationFSxOpenZFS {protocol = newValue, ..}
instance Property "SecurityGroupArns" LocationFSxOpenZFS where
  type PropertyType "SecurityGroupArns" LocationFSxOpenZFS = ValueList Prelude.Text
  set newValue LocationFSxOpenZFS {..}
    = LocationFSxOpenZFS {securityGroupArns = newValue, ..}
instance Property "Subdirectory" LocationFSxOpenZFS where
  type PropertyType "Subdirectory" LocationFSxOpenZFS = Value Prelude.Text
  set newValue LocationFSxOpenZFS {..}
    = LocationFSxOpenZFS {subdirectory = Prelude.pure newValue, ..}
instance Property "Tags" LocationFSxOpenZFS where
  type PropertyType "Tags" LocationFSxOpenZFS = [Tag]
  set newValue LocationFSxOpenZFS {..}
    = LocationFSxOpenZFS {tags = Prelude.pure newValue, ..}