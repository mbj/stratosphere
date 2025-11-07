module Stratosphere.QuickSight.Dashboard.DataStoriesSharingOptionProperty (
        DataStoriesSharingOptionProperty(..),
        mkDataStoriesSharingOptionProperty
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import Stratosphere.ResourceProperties
import Stratosphere.Value
data DataStoriesSharingOptionProperty
  = -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-quicksight-dashboard-datastoriessharingoption.html>
    DataStoriesSharingOptionProperty {haddock_workaround_ :: (),
                                      -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-quicksight-dashboard-datastoriessharingoption.html#cfn-quicksight-dashboard-datastoriessharingoption-availabilitystatus>
                                      availabilityStatus :: (Prelude.Maybe (Value Prelude.Text))}
  deriving stock (Prelude.Eq, Prelude.Show)
mkDataStoriesSharingOptionProperty ::
  DataStoriesSharingOptionProperty
mkDataStoriesSharingOptionProperty
  = DataStoriesSharingOptionProperty
      {haddock_workaround_ = (), availabilityStatus = Prelude.Nothing}
instance ToResourceProperties DataStoriesSharingOptionProperty where
  toResourceProperties DataStoriesSharingOptionProperty {..}
    = ResourceProperties
        {awsType = "AWS::QuickSight::Dashboard.DataStoriesSharingOption",
         supportsTags = Prelude.False,
         properties = Prelude.fromList
                        (Prelude.catMaybes
                           [(JSON..=) "AvailabilityStatus" Prelude.<$> availabilityStatus])}
instance JSON.ToJSON DataStoriesSharingOptionProperty where
  toJSON DataStoriesSharingOptionProperty {..}
    = JSON.object
        (Prelude.fromList
           (Prelude.catMaybes
              [(JSON..=) "AvailabilityStatus" Prelude.<$> availabilityStatus]))
instance Property "AvailabilityStatus" DataStoriesSharingOptionProperty where
  type PropertyType "AvailabilityStatus" DataStoriesSharingOptionProperty = Value Prelude.Text
  set newValue DataStoriesSharingOptionProperty {..}
    = DataStoriesSharingOptionProperty
        {availabilityStatus = Prelude.pure newValue, ..}