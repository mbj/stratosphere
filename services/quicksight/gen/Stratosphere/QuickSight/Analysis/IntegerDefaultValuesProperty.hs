module Stratosphere.QuickSight.Analysis.IntegerDefaultValuesProperty (
        module Exports, IntegerDefaultValuesProperty(..),
        mkIntegerDefaultValuesProperty
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import {-# SOURCE #-} Stratosphere.QuickSight.Analysis.DynamicDefaultValueProperty as Exports
import Stratosphere.ResourceProperties
import Stratosphere.Value
data IntegerDefaultValuesProperty
  = -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-quicksight-analysis-integerdefaultvalues.html>
    IntegerDefaultValuesProperty {haddock_workaround_ :: (),
                                  -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-quicksight-analysis-integerdefaultvalues.html#cfn-quicksight-analysis-integerdefaultvalues-dynamicvalue>
                                  dynamicValue :: (Prelude.Maybe DynamicDefaultValueProperty),
                                  -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-quicksight-analysis-integerdefaultvalues.html#cfn-quicksight-analysis-integerdefaultvalues-staticvalues>
                                  staticValues :: (Prelude.Maybe (ValueList Prelude.Double))}
  deriving stock (Prelude.Eq, Prelude.Show)
mkIntegerDefaultValuesProperty :: IntegerDefaultValuesProperty
mkIntegerDefaultValuesProperty
  = IntegerDefaultValuesProperty
      {haddock_workaround_ = (), dynamicValue = Prelude.Nothing,
       staticValues = Prelude.Nothing}
instance ToResourceProperties IntegerDefaultValuesProperty where
  toResourceProperties IntegerDefaultValuesProperty {..}
    = ResourceProperties
        {awsType = "AWS::QuickSight::Analysis.IntegerDefaultValues",
         supportsTags = Prelude.False,
         properties = Prelude.fromList
                        (Prelude.catMaybes
                           [(JSON..=) "DynamicValue" Prelude.<$> dynamicValue,
                            (JSON..=) "StaticValues" Prelude.<$> staticValues])}
instance JSON.ToJSON IntegerDefaultValuesProperty where
  toJSON IntegerDefaultValuesProperty {..}
    = JSON.object
        (Prelude.fromList
           (Prelude.catMaybes
              [(JSON..=) "DynamicValue" Prelude.<$> dynamicValue,
               (JSON..=) "StaticValues" Prelude.<$> staticValues]))
instance Property "DynamicValue" IntegerDefaultValuesProperty where
  type PropertyType "DynamicValue" IntegerDefaultValuesProperty = DynamicDefaultValueProperty
  set newValue IntegerDefaultValuesProperty {..}
    = IntegerDefaultValuesProperty
        {dynamicValue = Prelude.pure newValue, ..}
instance Property "StaticValues" IntegerDefaultValuesProperty where
  type PropertyType "StaticValues" IntegerDefaultValuesProperty = ValueList Prelude.Double
  set newValue IntegerDefaultValuesProperty {..}
    = IntegerDefaultValuesProperty
        {staticValues = Prelude.pure newValue, ..}