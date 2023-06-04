module Stratosphere.QuickSight.DataSet.DateTimeDatasetParameterDefaultValuesProperty (
        DateTimeDatasetParameterDefaultValuesProperty(..),
        mkDateTimeDatasetParameterDefaultValuesProperty
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import Stratosphere.ResourceProperties
import Stratosphere.Value
data DateTimeDatasetParameterDefaultValuesProperty
  = DateTimeDatasetParameterDefaultValuesProperty {staticValues :: (Prelude.Maybe (ValueList Prelude.Text))}
mkDateTimeDatasetParameterDefaultValuesProperty ::
  DateTimeDatasetParameterDefaultValuesProperty
mkDateTimeDatasetParameterDefaultValuesProperty
  = DateTimeDatasetParameterDefaultValuesProperty
      {staticValues = Prelude.Nothing}
instance ToResourceProperties DateTimeDatasetParameterDefaultValuesProperty where
  toResourceProperties
    DateTimeDatasetParameterDefaultValuesProperty {..}
    = ResourceProperties
        {awsType = "AWS::QuickSight::DataSet.DateTimeDatasetParameterDefaultValues",
         supportsTags = Prelude.False,
         properties = Prelude.fromList
                        (Prelude.catMaybes
                           [(JSON..=) "StaticValues" Prelude.<$> staticValues])}
instance JSON.ToJSON DateTimeDatasetParameterDefaultValuesProperty where
  toJSON DateTimeDatasetParameterDefaultValuesProperty {..}
    = JSON.object
        (Prelude.fromList
           (Prelude.catMaybes
              [(JSON..=) "StaticValues" Prelude.<$> staticValues]))
instance Property "StaticValues" DateTimeDatasetParameterDefaultValuesProperty where
  type PropertyType "StaticValues" DateTimeDatasetParameterDefaultValuesProperty = ValueList Prelude.Text
  set newValue DateTimeDatasetParameterDefaultValuesProperty {}
    = DateTimeDatasetParameterDefaultValuesProperty
        {staticValues = Prelude.pure newValue, ..}