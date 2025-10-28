module Stratosphere.QuickSight.DataSet.IntegerDatasetParameterDefaultValuesProperty (
        IntegerDatasetParameterDefaultValuesProperty(..),
        mkIntegerDatasetParameterDefaultValuesProperty
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import Stratosphere.ResourceProperties
import Stratosphere.Value
data IntegerDatasetParameterDefaultValuesProperty
  = -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-quicksight-dataset-integerdatasetparameterdefaultvalues.html>
    IntegerDatasetParameterDefaultValuesProperty {haddock_workaround_ :: (),
                                                  -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-quicksight-dataset-integerdatasetparameterdefaultvalues.html#cfn-quicksight-dataset-integerdatasetparameterdefaultvalues-staticvalues>
                                                  staticValues :: (Prelude.Maybe (ValueList Prelude.Double))}
  deriving stock (Prelude.Eq, Prelude.Show)
mkIntegerDatasetParameterDefaultValuesProperty ::
  IntegerDatasetParameterDefaultValuesProperty
mkIntegerDatasetParameterDefaultValuesProperty
  = IntegerDatasetParameterDefaultValuesProperty
      {haddock_workaround_ = (), staticValues = Prelude.Nothing}
instance ToResourceProperties IntegerDatasetParameterDefaultValuesProperty where
  toResourceProperties
    IntegerDatasetParameterDefaultValuesProperty {..}
    = ResourceProperties
        {awsType = "AWS::QuickSight::DataSet.IntegerDatasetParameterDefaultValues",
         supportsTags = Prelude.False,
         properties = Prelude.fromList
                        (Prelude.catMaybes
                           [(JSON..=) "StaticValues" Prelude.<$> staticValues])}
instance JSON.ToJSON IntegerDatasetParameterDefaultValuesProperty where
  toJSON IntegerDatasetParameterDefaultValuesProperty {..}
    = JSON.object
        (Prelude.fromList
           (Prelude.catMaybes
              [(JSON..=) "StaticValues" Prelude.<$> staticValues]))
instance Property "StaticValues" IntegerDatasetParameterDefaultValuesProperty where
  type PropertyType "StaticValues" IntegerDatasetParameterDefaultValuesProperty = ValueList Prelude.Double
  set newValue IntegerDatasetParameterDefaultValuesProperty {..}
    = IntegerDatasetParameterDefaultValuesProperty
        {staticValues = Prelude.pure newValue, ..}