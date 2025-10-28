module Stratosphere.DataSync.LocationNFS.MountOptionsProperty (
        MountOptionsProperty(..), mkMountOptionsProperty
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import Stratosphere.ResourceProperties
import Stratosphere.Value
data MountOptionsProperty
  = -- |See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-datasync-locationnfs-mountoptions.html>
    MountOptionsProperty {-- |See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-datasync-locationnfs-mountoptions.html#cfn-datasync-locationnfs-mountoptions-version>
                          version :: (Prelude.Maybe (Value Prelude.Text))}
  deriving stock (Prelude.Eq, Prelude.Show)
mkMountOptionsProperty :: MountOptionsProperty
mkMountOptionsProperty
  = MountOptionsProperty {version = Prelude.Nothing}
instance ToResourceProperties MountOptionsProperty where
  toResourceProperties MountOptionsProperty {..}
    = ResourceProperties
        {awsType = "AWS::DataSync::LocationNFS.MountOptions",
         supportsTags = Prelude.False,
         properties = Prelude.fromList
                        (Prelude.catMaybes [(JSON..=) "Version" Prelude.<$> version])}
instance JSON.ToJSON MountOptionsProperty where
  toJSON MountOptionsProperty {..}
    = JSON.object
        (Prelude.fromList
           (Prelude.catMaybes [(JSON..=) "Version" Prelude.<$> version]))
instance Property "Version" MountOptionsProperty where
  type PropertyType "Version" MountOptionsProperty = Value Prelude.Text
  set newValue MountOptionsProperty {}
    = MountOptionsProperty {version = Prelude.pure newValue, ..}