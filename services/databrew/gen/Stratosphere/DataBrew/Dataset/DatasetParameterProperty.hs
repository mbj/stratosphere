module Stratosphere.DataBrew.Dataset.DatasetParameterProperty (
        module Exports, DatasetParameterProperty(..),
        mkDatasetParameterProperty
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import {-# SOURCE #-} Stratosphere.DataBrew.Dataset.DatetimeOptionsProperty as Exports
import {-# SOURCE #-} Stratosphere.DataBrew.Dataset.FilterExpressionProperty as Exports
import Stratosphere.ResourceProperties
import Stratosphere.Value
data DatasetParameterProperty
  = DatasetParameterProperty {createColumn :: (Prelude.Maybe (Value Prelude.Bool)),
                              datetimeOptions :: (Prelude.Maybe DatetimeOptionsProperty),
                              filter :: (Prelude.Maybe FilterExpressionProperty),
                              name :: (Value Prelude.Text),
                              type' :: (Value Prelude.Text)}
mkDatasetParameterProperty ::
  Value Prelude.Text
  -> Value Prelude.Text -> DatasetParameterProperty
mkDatasetParameterProperty name type'
  = DatasetParameterProperty
      {name = name, type' = type', createColumn = Prelude.Nothing,
       datetimeOptions = Prelude.Nothing, filter = Prelude.Nothing}
instance ToResourceProperties DatasetParameterProperty where
  toResourceProperties DatasetParameterProperty {..}
    = ResourceProperties
        {awsType = "AWS::DataBrew::Dataset.DatasetParameter",
         properties = Prelude.fromList
                        ((Prelude.<>)
                           ["Name" JSON..= name, "Type" JSON..= type']
                           (Prelude.catMaybes
                              [(JSON..=) "CreateColumn" Prelude.<$> createColumn,
                               (JSON..=) "DatetimeOptions" Prelude.<$> datetimeOptions,
                               (JSON..=) "Filter" Prelude.<$> filter]))}
instance JSON.ToJSON DatasetParameterProperty where
  toJSON DatasetParameterProperty {..}
    = JSON.object
        (Prelude.fromList
           ((Prelude.<>)
              ["Name" JSON..= name, "Type" JSON..= type']
              (Prelude.catMaybes
                 [(JSON..=) "CreateColumn" Prelude.<$> createColumn,
                  (JSON..=) "DatetimeOptions" Prelude.<$> datetimeOptions,
                  (JSON..=) "Filter" Prelude.<$> filter])))
instance Property "CreateColumn" DatasetParameterProperty where
  type PropertyType "CreateColumn" DatasetParameterProperty = Value Prelude.Bool
  set newValue DatasetParameterProperty {..}
    = DatasetParameterProperty
        {createColumn = Prelude.pure newValue, ..}
instance Property "DatetimeOptions" DatasetParameterProperty where
  type PropertyType "DatetimeOptions" DatasetParameterProperty = DatetimeOptionsProperty
  set newValue DatasetParameterProperty {..}
    = DatasetParameterProperty
        {datetimeOptions = Prelude.pure newValue, ..}
instance Property "Filter" DatasetParameterProperty where
  type PropertyType "Filter" DatasetParameterProperty = FilterExpressionProperty
  set newValue DatasetParameterProperty {..}
    = DatasetParameterProperty {filter = Prelude.pure newValue, ..}
instance Property "Name" DatasetParameterProperty where
  type PropertyType "Name" DatasetParameterProperty = Value Prelude.Text
  set newValue DatasetParameterProperty {..}
    = DatasetParameterProperty {name = newValue, ..}
instance Property "Type" DatasetParameterProperty where
  type PropertyType "Type" DatasetParameterProperty = Value Prelude.Text
  set newValue DatasetParameterProperty {..}
    = DatasetParameterProperty {type' = newValue, ..}