module Stratosphere.GameLift.Location (
        Location(..), mkLocation
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import Stratosphere.ResourceProperties
import Stratosphere.Tag
import Stratosphere.Value
data Location
  = -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-gamelift-location.html>
    Location {haddock_workaround_ :: (),
              -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-gamelift-location.html#cfn-gamelift-location-locationname>
              locationName :: (Value Prelude.Text),
              -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-gamelift-location.html#cfn-gamelift-location-tags>
              tags :: (Prelude.Maybe [Tag])}
  deriving stock (Prelude.Eq, Prelude.Show)
mkLocation :: Value Prelude.Text -> Location
mkLocation locationName
  = Location
      {haddock_workaround_ = (), locationName = locationName,
       tags = Prelude.Nothing}
instance ToResourceProperties Location where
  toResourceProperties Location {..}
    = ResourceProperties
        {awsType = "AWS::GameLift::Location", supportsTags = Prelude.True,
         properties = Prelude.fromList
                        ((Prelude.<>)
                           ["LocationName" JSON..= locationName]
                           (Prelude.catMaybes [(JSON..=) "Tags" Prelude.<$> tags]))}
instance JSON.ToJSON Location where
  toJSON Location {..}
    = JSON.object
        (Prelude.fromList
           ((Prelude.<>)
              ["LocationName" JSON..= locationName]
              (Prelude.catMaybes [(JSON..=) "Tags" Prelude.<$> tags])))
instance Property "LocationName" Location where
  type PropertyType "LocationName" Location = Value Prelude.Text
  set newValue Location {..} = Location {locationName = newValue, ..}
instance Property "Tags" Location where
  type PropertyType "Tags" Location = [Tag]
  set newValue Location {..}
    = Location {tags = Prelude.pure newValue, ..}