module Stratosphere.LookoutMetrics.AnomalyDetector.TimestampColumnProperty (
        TimestampColumnProperty(..), mkTimestampColumnProperty
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import Stratosphere.ResourceProperties
import Stratosphere.Value
data TimestampColumnProperty
  = TimestampColumnProperty {columnFormat :: (Prelude.Maybe (Value Prelude.Text)),
                             columnName :: (Prelude.Maybe (Value Prelude.Text))}
mkTimestampColumnProperty :: TimestampColumnProperty
mkTimestampColumnProperty
  = TimestampColumnProperty
      {columnFormat = Prelude.Nothing, columnName = Prelude.Nothing}
instance ToResourceProperties TimestampColumnProperty where
  toResourceProperties TimestampColumnProperty {..}
    = ResourceProperties
        {awsType = "AWS::LookoutMetrics::AnomalyDetector.TimestampColumn",
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