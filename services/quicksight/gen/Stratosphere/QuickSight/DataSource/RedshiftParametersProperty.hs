module Stratosphere.QuickSight.DataSource.RedshiftParametersProperty (
        RedshiftParametersProperty(..), mkRedshiftParametersProperty
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import Stratosphere.ResourceProperties
import Stratosphere.Value
data RedshiftParametersProperty
  = RedshiftParametersProperty {clusterId :: (Prelude.Maybe (Value Prelude.Text)),
                                database :: (Value Prelude.Text),
                                host :: (Prelude.Maybe (Value Prelude.Text)),
                                port :: (Prelude.Maybe (Value Prelude.Double))}
mkRedshiftParametersProperty ::
  Value Prelude.Text -> RedshiftParametersProperty
mkRedshiftParametersProperty database
  = RedshiftParametersProperty
      {database = database, clusterId = Prelude.Nothing,
       host = Prelude.Nothing, port = Prelude.Nothing}
instance ToResourceProperties RedshiftParametersProperty where
  toResourceProperties RedshiftParametersProperty {..}
    = ResourceProperties
        {awsType = "AWS::QuickSight::DataSource.RedshiftParameters",
         properties = Prelude.fromList
                        ((Prelude.<>)
                           ["Database" JSON..= database]
                           (Prelude.catMaybes
                              [(JSON..=) "ClusterId" Prelude.<$> clusterId,
                               (JSON..=) "Host" Prelude.<$> host,
                               (JSON..=) "Port" Prelude.<$> port]))}
instance JSON.ToJSON RedshiftParametersProperty where
  toJSON RedshiftParametersProperty {..}
    = JSON.object
        (Prelude.fromList
           ((Prelude.<>)
              ["Database" JSON..= database]
              (Prelude.catMaybes
                 [(JSON..=) "ClusterId" Prelude.<$> clusterId,
                  (JSON..=) "Host" Prelude.<$> host,
                  (JSON..=) "Port" Prelude.<$> port])))
instance Property "ClusterId" RedshiftParametersProperty where
  type PropertyType "ClusterId" RedshiftParametersProperty = Value Prelude.Text
  set newValue RedshiftParametersProperty {..}
    = RedshiftParametersProperty
        {clusterId = Prelude.pure newValue, ..}
instance Property "Database" RedshiftParametersProperty where
  type PropertyType "Database" RedshiftParametersProperty = Value Prelude.Text
  set newValue RedshiftParametersProperty {..}
    = RedshiftParametersProperty {database = newValue, ..}
instance Property "Host" RedshiftParametersProperty where
  type PropertyType "Host" RedshiftParametersProperty = Value Prelude.Text
  set newValue RedshiftParametersProperty {..}
    = RedshiftParametersProperty {host = Prelude.pure newValue, ..}
instance Property "Port" RedshiftParametersProperty where
  type PropertyType "Port" RedshiftParametersProperty = Value Prelude.Double
  set newValue RedshiftParametersProperty {..}
    = RedshiftParametersProperty {port = Prelude.pure newValue, ..}