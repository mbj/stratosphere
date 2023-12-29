module Stratosphere.QuickSight.DataSet.StringDatasetParameterDefaultValuesProperty (
        StringDatasetParameterDefaultValuesProperty(..),
        mkStringDatasetParameterDefaultValuesProperty
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import Stratosphere.ResourceProperties
import Stratosphere.Value
data StringDatasetParameterDefaultValuesProperty
  = StringDatasetParameterDefaultValuesProperty {staticValues :: (Prelude.Maybe (ValueList Prelude.Text))}
  deriving stock (Prelude.Eq, Prelude.Show)
mkStringDatasetParameterDefaultValuesProperty ::
  StringDatasetParameterDefaultValuesProperty
mkStringDatasetParameterDefaultValuesProperty
  = StringDatasetParameterDefaultValuesProperty
      {staticValues = Prelude.Nothing}
instance ToResourceProperties StringDatasetParameterDefaultValuesProperty where
  toResourceProperties
    StringDatasetParameterDefaultValuesProperty {..}
    = ResourceProperties
        {awsType = "AWS::QuickSight::DataSet.StringDatasetParameterDefaultValues",
         supportsTags = Prelude.False,
         properties = Prelude.fromList
                        (Prelude.catMaybes
                           [(JSON..=) "StaticValues" Prelude.<$> staticValues])}
instance JSON.ToJSON StringDatasetParameterDefaultValuesProperty where
  toJSON StringDatasetParameterDefaultValuesProperty {..}
    = JSON.object
        (Prelude.fromList
           (Prelude.catMaybes
              [(JSON..=) "StaticValues" Prelude.<$> staticValues]))
instance Property "StaticValues" StringDatasetParameterDefaultValuesProperty where
  type PropertyType "StaticValues" StringDatasetParameterDefaultValuesProperty = ValueList Prelude.Text
  set newValue StringDatasetParameterDefaultValuesProperty {}
    = StringDatasetParameterDefaultValuesProperty
        {staticValues = Prelude.pure newValue, ..}