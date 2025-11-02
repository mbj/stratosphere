module Stratosphere.DataSync.LocationFSxONTAP.SmbMountOptionsProperty (
        SmbMountOptionsProperty(..), mkSmbMountOptionsProperty
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import Stratosphere.ResourceProperties
import Stratosphere.Value
data SmbMountOptionsProperty
  = -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-datasync-locationfsxontap-smbmountoptions.html>
    SmbMountOptionsProperty {haddock_workaround_ :: (),
                             -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-datasync-locationfsxontap-smbmountoptions.html#cfn-datasync-locationfsxontap-smbmountoptions-version>
                             version :: (Prelude.Maybe (Value Prelude.Text))}
  deriving stock (Prelude.Eq, Prelude.Show)
mkSmbMountOptionsProperty :: SmbMountOptionsProperty
mkSmbMountOptionsProperty
  = SmbMountOptionsProperty
      {haddock_workaround_ = (), version = Prelude.Nothing}
instance ToResourceProperties SmbMountOptionsProperty where
  toResourceProperties SmbMountOptionsProperty {..}
    = ResourceProperties
        {awsType = "AWS::DataSync::LocationFSxONTAP.SmbMountOptions",
         supportsTags = Prelude.False,
         properties = Prelude.fromList
                        (Prelude.catMaybes [(JSON..=) "Version" Prelude.<$> version])}
instance JSON.ToJSON SmbMountOptionsProperty where
  toJSON SmbMountOptionsProperty {..}
    = JSON.object
        (Prelude.fromList
           (Prelude.catMaybes [(JSON..=) "Version" Prelude.<$> version]))
instance Property "Version" SmbMountOptionsProperty where
  type PropertyType "Version" SmbMountOptionsProperty = Value Prelude.Text
  set newValue SmbMountOptionsProperty {..}
    = SmbMountOptionsProperty {version = Prelude.pure newValue, ..}