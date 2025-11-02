module Stratosphere.Location.Tracker (
        Tracker(..), mkTracker
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import Stratosphere.ResourceProperties
import Stratosphere.Tag
import Stratosphere.Value
data Tracker
  = -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-location-tracker.html>
    Tracker {haddock_workaround_ :: (),
             -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-location-tracker.html#cfn-location-tracker-description>
             description :: (Prelude.Maybe (Value Prelude.Text)),
             -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-location-tracker.html#cfn-location-tracker-eventbridgeenabled>
             eventBridgeEnabled :: (Prelude.Maybe (Value Prelude.Bool)),
             -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-location-tracker.html#cfn-location-tracker-kmskeyenablegeospatialqueries>
             kmsKeyEnableGeospatialQueries :: (Prelude.Maybe (Value Prelude.Bool)),
             -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-location-tracker.html#cfn-location-tracker-kmskeyid>
             kmsKeyId :: (Prelude.Maybe (Value Prelude.Text)),
             -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-location-tracker.html#cfn-location-tracker-positionfiltering>
             positionFiltering :: (Prelude.Maybe (Value Prelude.Text)),
             -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-location-tracker.html#cfn-location-tracker-tags>
             tags :: (Prelude.Maybe [Tag]),
             -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-location-tracker.html#cfn-location-tracker-trackername>
             trackerName :: (Value Prelude.Text)}
  deriving stock (Prelude.Eq, Prelude.Show)
mkTracker :: Value Prelude.Text -> Tracker
mkTracker trackerName
  = Tracker
      {haddock_workaround_ = (), trackerName = trackerName,
       description = Prelude.Nothing,
       eventBridgeEnabled = Prelude.Nothing,
       kmsKeyEnableGeospatialQueries = Prelude.Nothing,
       kmsKeyId = Prelude.Nothing, positionFiltering = Prelude.Nothing,
       tags = Prelude.Nothing}
instance ToResourceProperties Tracker where
  toResourceProperties Tracker {..}
    = ResourceProperties
        {awsType = "AWS::Location::Tracker", supportsTags = Prelude.True,
         properties = Prelude.fromList
                        ((Prelude.<>)
                           ["TrackerName" JSON..= trackerName]
                           (Prelude.catMaybes
                              [(JSON..=) "Description" Prelude.<$> description,
                               (JSON..=) "EventBridgeEnabled" Prelude.<$> eventBridgeEnabled,
                               (JSON..=) "KmsKeyEnableGeospatialQueries"
                                 Prelude.<$> kmsKeyEnableGeospatialQueries,
                               (JSON..=) "KmsKeyId" Prelude.<$> kmsKeyId,
                               (JSON..=) "PositionFiltering" Prelude.<$> positionFiltering,
                               (JSON..=) "Tags" Prelude.<$> tags]))}
instance JSON.ToJSON Tracker where
  toJSON Tracker {..}
    = JSON.object
        (Prelude.fromList
           ((Prelude.<>)
              ["TrackerName" JSON..= trackerName]
              (Prelude.catMaybes
                 [(JSON..=) "Description" Prelude.<$> description,
                  (JSON..=) "EventBridgeEnabled" Prelude.<$> eventBridgeEnabled,
                  (JSON..=) "KmsKeyEnableGeospatialQueries"
                    Prelude.<$> kmsKeyEnableGeospatialQueries,
                  (JSON..=) "KmsKeyId" Prelude.<$> kmsKeyId,
                  (JSON..=) "PositionFiltering" Prelude.<$> positionFiltering,
                  (JSON..=) "Tags" Prelude.<$> tags])))
instance Property "Description" Tracker where
  type PropertyType "Description" Tracker = Value Prelude.Text
  set newValue Tracker {..}
    = Tracker {description = Prelude.pure newValue, ..}
instance Property "EventBridgeEnabled" Tracker where
  type PropertyType "EventBridgeEnabled" Tracker = Value Prelude.Bool
  set newValue Tracker {..}
    = Tracker {eventBridgeEnabled = Prelude.pure newValue, ..}
instance Property "KmsKeyEnableGeospatialQueries" Tracker where
  type PropertyType "KmsKeyEnableGeospatialQueries" Tracker = Value Prelude.Bool
  set newValue Tracker {..}
    = Tracker
        {kmsKeyEnableGeospatialQueries = Prelude.pure newValue, ..}
instance Property "KmsKeyId" Tracker where
  type PropertyType "KmsKeyId" Tracker = Value Prelude.Text
  set newValue Tracker {..}
    = Tracker {kmsKeyId = Prelude.pure newValue, ..}
instance Property "PositionFiltering" Tracker where
  type PropertyType "PositionFiltering" Tracker = Value Prelude.Text
  set newValue Tracker {..}
    = Tracker {positionFiltering = Prelude.pure newValue, ..}
instance Property "Tags" Tracker where
  type PropertyType "Tags" Tracker = [Tag]
  set newValue Tracker {..}
    = Tracker {tags = Prelude.pure newValue, ..}
instance Property "TrackerName" Tracker where
  type PropertyType "TrackerName" Tracker = Value Prelude.Text
  set newValue Tracker {..} = Tracker {trackerName = newValue, ..}