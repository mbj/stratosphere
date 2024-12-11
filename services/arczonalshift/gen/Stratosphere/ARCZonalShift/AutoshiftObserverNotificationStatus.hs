module Stratosphere.ARCZonalShift.AutoshiftObserverNotificationStatus (
        AutoshiftObserverNotificationStatus(..),
        mkAutoshiftObserverNotificationStatus
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import Stratosphere.ResourceProperties
import Stratosphere.Value
data AutoshiftObserverNotificationStatus
  = AutoshiftObserverNotificationStatus {status :: (Value Prelude.Text)}
  deriving stock (Prelude.Eq, Prelude.Show)
mkAutoshiftObserverNotificationStatus ::
  Value Prelude.Text -> AutoshiftObserverNotificationStatus
mkAutoshiftObserverNotificationStatus status
  = AutoshiftObserverNotificationStatus {status = status}
instance ToResourceProperties AutoshiftObserverNotificationStatus where
  toResourceProperties AutoshiftObserverNotificationStatus {..}
    = ResourceProperties
        {awsType = "AWS::ARCZonalShift::AutoshiftObserverNotificationStatus",
         supportsTags = Prelude.False,
         properties = ["Status" JSON..= status]}
instance JSON.ToJSON AutoshiftObserverNotificationStatus where
  toJSON AutoshiftObserverNotificationStatus {..}
    = JSON.object ["Status" JSON..= status]
instance Property "Status" AutoshiftObserverNotificationStatus where
  type PropertyType "Status" AutoshiftObserverNotificationStatus = Value Prelude.Text
  set newValue AutoshiftObserverNotificationStatus {}
    = AutoshiftObserverNotificationStatus {status = newValue, ..}