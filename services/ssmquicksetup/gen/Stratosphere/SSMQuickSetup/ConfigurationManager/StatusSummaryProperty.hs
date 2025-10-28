module Stratosphere.SSMQuickSetup.ConfigurationManager.StatusSummaryProperty (
        StatusSummaryProperty(..), mkStatusSummaryProperty
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import Stratosphere.ResourceProperties
import Stratosphere.Value
data StatusSummaryProperty
  = -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-ssmquicksetup-configurationmanager-statussummary.html>
    StatusSummaryProperty {haddock_workaround_ :: (),
                           -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-ssmquicksetup-configurationmanager-statussummary.html#cfn-ssmquicksetup-configurationmanager-statussummary-lastupdatedat>
                           lastUpdatedAt :: (Value Prelude.Text),
                           -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-ssmquicksetup-configurationmanager-statussummary.html#cfn-ssmquicksetup-configurationmanager-statussummary-status>
                           status :: (Prelude.Maybe (Value Prelude.Text)),
                           -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-ssmquicksetup-configurationmanager-statussummary.html#cfn-ssmquicksetup-configurationmanager-statussummary-statusdetails>
                           statusDetails :: (Prelude.Maybe (Prelude.Map Prelude.Text (Value Prelude.Text))),
                           -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-ssmquicksetup-configurationmanager-statussummary.html#cfn-ssmquicksetup-configurationmanager-statussummary-statusmessage>
                           statusMessage :: (Prelude.Maybe (Value Prelude.Text)),
                           -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-ssmquicksetup-configurationmanager-statussummary.html#cfn-ssmquicksetup-configurationmanager-statussummary-statustype>
                           statusType :: (Value Prelude.Text)}
  deriving stock (Prelude.Eq, Prelude.Show)
mkStatusSummaryProperty ::
  Value Prelude.Text -> Value Prelude.Text -> StatusSummaryProperty
mkStatusSummaryProperty lastUpdatedAt statusType
  = StatusSummaryProperty
      {haddock_workaround_ = (), lastUpdatedAt = lastUpdatedAt,
       statusType = statusType, status = Prelude.Nothing,
       statusDetails = Prelude.Nothing, statusMessage = Prelude.Nothing}
instance ToResourceProperties StatusSummaryProperty where
  toResourceProperties StatusSummaryProperty {..}
    = ResourceProperties
        {awsType = "AWS::SSMQuickSetup::ConfigurationManager.StatusSummary",
         supportsTags = Prelude.False,
         properties = Prelude.fromList
                        ((Prelude.<>)
                           ["LastUpdatedAt" JSON..= lastUpdatedAt,
                            "StatusType" JSON..= statusType]
                           (Prelude.catMaybes
                              [(JSON..=) "Status" Prelude.<$> status,
                               (JSON..=) "StatusDetails" Prelude.<$> statusDetails,
                               (JSON..=) "StatusMessage" Prelude.<$> statusMessage]))}
instance JSON.ToJSON StatusSummaryProperty where
  toJSON StatusSummaryProperty {..}
    = JSON.object
        (Prelude.fromList
           ((Prelude.<>)
              ["LastUpdatedAt" JSON..= lastUpdatedAt,
               "StatusType" JSON..= statusType]
              (Prelude.catMaybes
                 [(JSON..=) "Status" Prelude.<$> status,
                  (JSON..=) "StatusDetails" Prelude.<$> statusDetails,
                  (JSON..=) "StatusMessage" Prelude.<$> statusMessage])))
instance Property "LastUpdatedAt" StatusSummaryProperty where
  type PropertyType "LastUpdatedAt" StatusSummaryProperty = Value Prelude.Text
  set newValue StatusSummaryProperty {..}
    = StatusSummaryProperty {lastUpdatedAt = newValue, ..}
instance Property "Status" StatusSummaryProperty where
  type PropertyType "Status" StatusSummaryProperty = Value Prelude.Text
  set newValue StatusSummaryProperty {..}
    = StatusSummaryProperty {status = Prelude.pure newValue, ..}
instance Property "StatusDetails" StatusSummaryProperty where
  type PropertyType "StatusDetails" StatusSummaryProperty = Prelude.Map Prelude.Text (Value Prelude.Text)
  set newValue StatusSummaryProperty {..}
    = StatusSummaryProperty {statusDetails = Prelude.pure newValue, ..}
instance Property "StatusMessage" StatusSummaryProperty where
  type PropertyType "StatusMessage" StatusSummaryProperty = Value Prelude.Text
  set newValue StatusSummaryProperty {..}
    = StatusSummaryProperty {statusMessage = Prelude.pure newValue, ..}
instance Property "StatusType" StatusSummaryProperty where
  type PropertyType "StatusType" StatusSummaryProperty = Value Prelude.Text
  set newValue StatusSummaryProperty {..}
    = StatusSummaryProperty {statusType = newValue, ..}