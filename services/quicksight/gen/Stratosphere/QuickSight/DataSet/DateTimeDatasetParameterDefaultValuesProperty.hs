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
  = -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-quicksight-dataset-datetimedatasetparameterdefaultvalues.html>
    DateTimeDatasetParameterDefaultValuesProperty {haddock_workaround_ :: (),
                                                   -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-quicksight-dataset-datetimedatasetparameterdefaultvalues.html#cfn-quicksight-dataset-datetimedatasetparameterdefaultvalues-staticvalues>
                                                   staticValues :: (Prelude.Maybe (ValueList Prelude.Text))}
  deriving stock (Prelude.Eq, Prelude.Show)
mkDateTimeDatasetParameterDefaultValuesProperty ::
  DateTimeDatasetParameterDefaultValuesProperty
mkDateTimeDatasetParameterDefaultValuesProperty
  = DateTimeDatasetParameterDefaultValuesProperty
      {haddock_workaround_ = (), staticValues = Prelude.Nothing}
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
  set newValue DateTimeDatasetParameterDefaultValuesProperty {..}
    = DateTimeDatasetParameterDefaultValuesProperty
        {staticValues = Prelude.pure newValue, ..}