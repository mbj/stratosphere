module Stratosphere.QuickSight.DataSet.DecimalDatasetParameterDefaultValuesProperty (
        DecimalDatasetParameterDefaultValuesProperty(..),
        mkDecimalDatasetParameterDefaultValuesProperty
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import Stratosphere.ResourceProperties
import Stratosphere.Value
data DecimalDatasetParameterDefaultValuesProperty
  = -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-quicksight-dataset-decimaldatasetparameterdefaultvalues.html>
    DecimalDatasetParameterDefaultValuesProperty {haddock_workaround_ :: (),
                                                  -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-quicksight-dataset-decimaldatasetparameterdefaultvalues.html#cfn-quicksight-dataset-decimaldatasetparameterdefaultvalues-staticvalues>
                                                  staticValues :: (Prelude.Maybe (ValueList Prelude.Double))}
  deriving stock (Prelude.Eq, Prelude.Show)
mkDecimalDatasetParameterDefaultValuesProperty ::
  DecimalDatasetParameterDefaultValuesProperty
mkDecimalDatasetParameterDefaultValuesProperty
  = DecimalDatasetParameterDefaultValuesProperty
      {haddock_workaround_ = (), staticValues = Prelude.Nothing}
instance ToResourceProperties DecimalDatasetParameterDefaultValuesProperty where
  toResourceProperties
    DecimalDatasetParameterDefaultValuesProperty {..}
    = ResourceProperties
        {awsType = "AWS::QuickSight::DataSet.DecimalDatasetParameterDefaultValues",
         supportsTags = Prelude.False,
         properties = Prelude.fromList
                        (Prelude.catMaybes
                           [(JSON..=) "StaticValues" Prelude.<$> staticValues])}
instance JSON.ToJSON DecimalDatasetParameterDefaultValuesProperty where
  toJSON DecimalDatasetParameterDefaultValuesProperty {..}
    = JSON.object
        (Prelude.fromList
           (Prelude.catMaybes
              [(JSON..=) "StaticValues" Prelude.<$> staticValues]))
instance Property "StaticValues" DecimalDatasetParameterDefaultValuesProperty where
  type PropertyType "StaticValues" DecimalDatasetParameterDefaultValuesProperty = ValueList Prelude.Double
  set newValue DecimalDatasetParameterDefaultValuesProperty {..}
    = DecimalDatasetParameterDefaultValuesProperty
        {staticValues = Prelude.pure newValue, ..}