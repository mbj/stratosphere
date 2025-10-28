module Stratosphere.LookoutMetrics.AnomalyDetector.TimestampColumnProperty (
        TimestampColumnProperty(..), mkTimestampColumnProperty
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import Stratosphere.ResourceProperties
import Stratosphere.Value
data TimestampColumnProperty
  = -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-lookoutmetrics-anomalydetector-timestampcolumn.html>
    TimestampColumnProperty {haddock_workaround_ :: (),
                             -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-lookoutmetrics-anomalydetector-timestampcolumn.html#cfn-lookoutmetrics-anomalydetector-timestampcolumn-columnformat>
                             columnFormat :: (Prelude.Maybe (Value Prelude.Text)),
                             -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-lookoutmetrics-anomalydetector-timestampcolumn.html#cfn-lookoutmetrics-anomalydetector-timestampcolumn-columnname>
                             columnName :: (Prelude.Maybe (Value Prelude.Text))}
  deriving stock (Prelude.Eq, Prelude.Show)
mkTimestampColumnProperty :: TimestampColumnProperty
mkTimestampColumnProperty
  = TimestampColumnProperty
      {haddock_workaround_ = (), columnFormat = Prelude.Nothing,
       columnName = Prelude.Nothing}
instance ToResourceProperties TimestampColumnProperty where
  toResourceProperties TimestampColumnProperty {..}
    = ResourceProperties
        {awsType = "AWS::LookoutMetrics::AnomalyDetector.TimestampColumn",
         supportsTags = Prelude.False,
         properties = Prelude.fromList
                        (Prelude.catMaybes
                           [(JSON..=) "ColumnFormat" Prelude.<$> columnFormat,
                            (JSON..=) "ColumnName" Prelude.<$> columnName])}
instance JSON.ToJSON TimestampColumnProperty where
  toJSON TimestampColumnProperty {..}
    = JSON.object
        (Prelude.fromList
           (Prelude.catMaybes
              [(JSON..=) "ColumnFormat" Prelude.<$> columnFormat,
               (JSON..=) "ColumnName" Prelude.<$> columnName]))
instance Property "ColumnFormat" TimestampColumnProperty where
  type PropertyType "ColumnFormat" TimestampColumnProperty = Value Prelude.Text
  set newValue TimestampColumnProperty {..}
    = TimestampColumnProperty
        {columnFormat = Prelude.pure newValue, ..}
instance Property "ColumnName" TimestampColumnProperty where
  type PropertyType "ColumnName" TimestampColumnProperty = Value Prelude.Text
  set newValue TimestampColumnProperty {..}
    = TimestampColumnProperty {columnName = Prelude.pure newValue, ..}