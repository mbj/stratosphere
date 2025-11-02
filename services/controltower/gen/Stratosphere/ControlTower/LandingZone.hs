module Stratosphere.ControlTower.LandingZone (
        LandingZone(..), mkLandingZone
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import Stratosphere.ResourceProperties
import Stratosphere.Tag
import Stratosphere.Value
data LandingZone
  = -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-controltower-landingzone.html>
    LandingZone {haddock_workaround_ :: (),
                 -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-controltower-landingzone.html#cfn-controltower-landingzone-manifest>
                 manifest :: JSON.Object,
                 -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-controltower-landingzone.html#cfn-controltower-landingzone-tags>
                 tags :: (Prelude.Maybe [Tag]),
                 -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-controltower-landingzone.html#cfn-controltower-landingzone-version>
                 version :: (Value Prelude.Text)}
  deriving stock (Prelude.Eq, Prelude.Show)
mkLandingZone :: JSON.Object -> Value Prelude.Text -> LandingZone
mkLandingZone manifest version
  = LandingZone
      {haddock_workaround_ = (), manifest = manifest, version = version,
       tags = Prelude.Nothing}
instance ToResourceProperties LandingZone where
  toResourceProperties LandingZone {..}
    = ResourceProperties
        {awsType = "AWS::ControlTower::LandingZone",
         supportsTags = Prelude.True,
         properties = Prelude.fromList
                        ((Prelude.<>)
                           ["Manifest" JSON..= manifest, "Version" JSON..= version]
                           (Prelude.catMaybes [(JSON..=) "Tags" Prelude.<$> tags]))}
instance JSON.ToJSON LandingZone where
  toJSON LandingZone {..}
    = JSON.object
        (Prelude.fromList
           ((Prelude.<>)
              ["Manifest" JSON..= manifest, "Version" JSON..= version]
              (Prelude.catMaybes [(JSON..=) "Tags" Prelude.<$> tags])))
instance Property "Manifest" LandingZone where
  type PropertyType "Manifest" LandingZone = JSON.Object
  set newValue LandingZone {..}
    = LandingZone {manifest = newValue, ..}
instance Property "Tags" LandingZone where
  type PropertyType "Tags" LandingZone = [Tag]
  set newValue LandingZone {..}
    = LandingZone {tags = Prelude.pure newValue, ..}
instance Property "Version" LandingZone where
  type PropertyType "Version" LandingZone = Value Prelude.Text
  set newValue LandingZone {..}
    = LandingZone {version = newValue, ..}