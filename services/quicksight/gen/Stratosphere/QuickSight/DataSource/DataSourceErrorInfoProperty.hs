module Stratosphere.QuickSight.DataSource.DataSourceErrorInfoProperty (
        DataSourceErrorInfoProperty(..), mkDataSourceErrorInfoProperty
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import Stratosphere.ResourceProperties
import Stratosphere.Value
data DataSourceErrorInfoProperty
  = DataSourceErrorInfoProperty {message :: (Prelude.Maybe (Value Prelude.Text)),
                                 type' :: (Prelude.Maybe (Value Prelude.Text))}
mkDataSourceErrorInfoProperty :: DataSourceErrorInfoProperty
mkDataSourceErrorInfoProperty
  = DataSourceErrorInfoProperty
      {message = Prelude.Nothing, type' = Prelude.Nothing}
instance ToResourceProperties DataSourceErrorInfoProperty where
  toResourceProperties DataSourceErrorInfoProperty {..}
    = ResourceProperties
        {awsType = "AWS::QuickSight::DataSource.DataSourceErrorInfo",
         supportsTags = Prelude.False,
         properties = Prelude.fromList
                        (Prelude.catMaybes
                           [(JSON..=) "Message" Prelude.<$> message,
                            (JSON..=) "Type" Prelude.<$> type'])}
instance JSON.ToJSON DataSourceErrorInfoProperty where
  toJSON DataSourceErrorInfoProperty {..}
    = JSON.object
        (Prelude.fromList
           (Prelude.catMaybes
              [(JSON..=) "Message" Prelude.<$> message,
               (JSON..=) "Type" Prelude.<$> type']))
instance Property "Message" DataSourceErrorInfoProperty where
  type PropertyType "Message" DataSourceErrorInfoProperty = Value Prelude.Text
  set newValue DataSourceErrorInfoProperty {..}
    = DataSourceErrorInfoProperty {message = Prelude.pure newValue, ..}
instance Property "Type" DataSourceErrorInfoProperty where
  type PropertyType "Type" DataSourceErrorInfoProperty = Value Prelude.Text
  set newValue DataSourceErrorInfoProperty {..}
    = DataSourceErrorInfoProperty {type' = Prelude.pure newValue, ..}