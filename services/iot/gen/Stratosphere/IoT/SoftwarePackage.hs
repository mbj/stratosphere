module Stratosphere.IoT.SoftwarePackage (
        SoftwarePackage(..), mkSoftwarePackage
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import Stratosphere.ResourceProperties
import Stratosphere.Tag
import Stratosphere.Value
data SoftwarePackage
  = -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-iot-softwarepackage.html>
    SoftwarePackage {haddock_workaround_ :: (),
                     -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-iot-softwarepackage.html#cfn-iot-softwarepackage-description>
                     description :: (Prelude.Maybe (Value Prelude.Text)),
                     -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-iot-softwarepackage.html#cfn-iot-softwarepackage-packagename>
                     packageName :: (Prelude.Maybe (Value Prelude.Text)),
                     -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-iot-softwarepackage.html#cfn-iot-softwarepackage-tags>
                     tags :: (Prelude.Maybe [Tag])}
  deriving stock (Prelude.Eq, Prelude.Show)
mkSoftwarePackage :: SoftwarePackage
mkSoftwarePackage
  = SoftwarePackage
      {haddock_workaround_ = (), description = Prelude.Nothing,
       packageName = Prelude.Nothing, tags = Prelude.Nothing}
instance ToResourceProperties SoftwarePackage where
  toResourceProperties SoftwarePackage {..}
    = ResourceProperties
        {awsType = "AWS::IoT::SoftwarePackage",
         supportsTags = Prelude.True,
         properties = Prelude.fromList
                        (Prelude.catMaybes
                           [(JSON..=) "Description" Prelude.<$> description,
                            (JSON..=) "PackageName" Prelude.<$> packageName,
                            (JSON..=) "Tags" Prelude.<$> tags])}
instance JSON.ToJSON SoftwarePackage where
  toJSON SoftwarePackage {..}
    = JSON.object
        (Prelude.fromList
           (Prelude.catMaybes
              [(JSON..=) "Description" Prelude.<$> description,
               (JSON..=) "PackageName" Prelude.<$> packageName,
               (JSON..=) "Tags" Prelude.<$> tags]))
instance Property "Description" SoftwarePackage where
  type PropertyType "Description" SoftwarePackage = Value Prelude.Text
  set newValue SoftwarePackage {..}
    = SoftwarePackage {description = Prelude.pure newValue, ..}
instance Property "PackageName" SoftwarePackage where
  type PropertyType "PackageName" SoftwarePackage = Value Prelude.Text
  set newValue SoftwarePackage {..}
    = SoftwarePackage {packageName = Prelude.pure newValue, ..}
instance Property "Tags" SoftwarePackage where
  type PropertyType "Tags" SoftwarePackage = [Tag]
  set newValue SoftwarePackage {..}
    = SoftwarePackage {tags = Prelude.pure newValue, ..}