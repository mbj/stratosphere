module Stratosphere.GameLift.GameSessionQueue.FilterConfigurationProperty (
        FilterConfigurationProperty(..), mkFilterConfigurationProperty
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import Stratosphere.ResourceProperties
import Stratosphere.Value
data FilterConfigurationProperty
  = -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-gamelift-gamesessionqueue-filterconfiguration.html>
    FilterConfigurationProperty {haddock_workaround_ :: (),
                                 -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-gamelift-gamesessionqueue-filterconfiguration.html#cfn-gamelift-gamesessionqueue-filterconfiguration-allowedlocations>
                                 allowedLocations :: (Prelude.Maybe (ValueList Prelude.Text))}
  deriving stock (Prelude.Eq, Prelude.Show)
mkFilterConfigurationProperty :: FilterConfigurationProperty
mkFilterConfigurationProperty
  = FilterConfigurationProperty
      {haddock_workaround_ = (), allowedLocations = Prelude.Nothing}
instance ToResourceProperties FilterConfigurationProperty where
  toResourceProperties FilterConfigurationProperty {..}
    = ResourceProperties
        {awsType = "AWS::GameLift::GameSessionQueue.FilterConfiguration",
         supportsTags = Prelude.False,
         properties = Prelude.fromList
                        (Prelude.catMaybes
                           [(JSON..=) "AllowedLocations" Prelude.<$> allowedLocations])}
instance JSON.ToJSON FilterConfigurationProperty where
  toJSON FilterConfigurationProperty {..}
    = JSON.object
        (Prelude.fromList
           (Prelude.catMaybes
              [(JSON..=) "AllowedLocations" Prelude.<$> allowedLocations]))
instance Property "AllowedLocations" FilterConfigurationProperty where
  type PropertyType "AllowedLocations" FilterConfigurationProperty = ValueList Prelude.Text
  set newValue FilterConfigurationProperty {..}
    = FilterConfigurationProperty
        {allowedLocations = Prelude.pure newValue, ..}