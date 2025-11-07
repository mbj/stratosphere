module Stratosphere.QuickSight.DataSet.RefreshFailureEmailAlertProperty (
        RefreshFailureEmailAlertProperty(..),
        mkRefreshFailureEmailAlertProperty
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import Stratosphere.ResourceProperties
import Stratosphere.Value
data RefreshFailureEmailAlertProperty
  = -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-quicksight-dataset-refreshfailureemailalert.html>
    RefreshFailureEmailAlertProperty {haddock_workaround_ :: (),
                                      -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-quicksight-dataset-refreshfailureemailalert.html#cfn-quicksight-dataset-refreshfailureemailalert-alertstatus>
                                      alertStatus :: (Prelude.Maybe (Value Prelude.Text))}
  deriving stock (Prelude.Eq, Prelude.Show)
mkRefreshFailureEmailAlertProperty ::
  RefreshFailureEmailAlertProperty
mkRefreshFailureEmailAlertProperty
  = RefreshFailureEmailAlertProperty
      {haddock_workaround_ = (), alertStatus = Prelude.Nothing}
instance ToResourceProperties RefreshFailureEmailAlertProperty where
  toResourceProperties RefreshFailureEmailAlertProperty {..}
    = ResourceProperties
        {awsType = "AWS::QuickSight::DataSet.RefreshFailureEmailAlert",
         supportsTags = Prelude.False,
         properties = Prelude.fromList
                        (Prelude.catMaybes
                           [(JSON..=) "AlertStatus" Prelude.<$> alertStatus])}
instance JSON.ToJSON RefreshFailureEmailAlertProperty where
  toJSON RefreshFailureEmailAlertProperty {..}
    = JSON.object
        (Prelude.fromList
           (Prelude.catMaybes
              [(JSON..=) "AlertStatus" Prelude.<$> alertStatus]))
instance Property "AlertStatus" RefreshFailureEmailAlertProperty where
  type PropertyType "AlertStatus" RefreshFailureEmailAlertProperty = Value Prelude.Text
  set newValue RefreshFailureEmailAlertProperty {..}
    = RefreshFailureEmailAlertProperty
        {alertStatus = Prelude.pure newValue, ..}