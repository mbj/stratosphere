module Stratosphere.QuickSight.Template.DecimalDefaultValuesProperty (
        module Exports, DecimalDefaultValuesProperty(..),
        mkDecimalDefaultValuesProperty
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import {-# SOURCE #-} Stratosphere.QuickSight.Template.DynamicDefaultValueProperty as Exports
import Stratosphere.ResourceProperties
import Stratosphere.Value
data DecimalDefaultValuesProperty
  = -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-quicksight-template-decimaldefaultvalues.html>
    DecimalDefaultValuesProperty {haddock_workaround_ :: (),
                                  -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-quicksight-template-decimaldefaultvalues.html#cfn-quicksight-template-decimaldefaultvalues-dynamicvalue>
                                  dynamicValue :: (Prelude.Maybe DynamicDefaultValueProperty),
                                  -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-quicksight-template-decimaldefaultvalues.html#cfn-quicksight-template-decimaldefaultvalues-staticvalues>
                                  staticValues :: (Prelude.Maybe (ValueList Prelude.Double))}
  deriving stock (Prelude.Eq, Prelude.Show)
mkDecimalDefaultValuesProperty :: DecimalDefaultValuesProperty
mkDecimalDefaultValuesProperty
  = DecimalDefaultValuesProperty
      {haddock_workaround_ = (), dynamicValue = Prelude.Nothing,
       staticValues = Prelude.Nothing}
instance ToResourceProperties DecimalDefaultValuesProperty where
  toResourceProperties DecimalDefaultValuesProperty {..}
    = ResourceProperties
        {awsType = "AWS::QuickSight::Template.DecimalDefaultValues",
         supportsTags = Prelude.False,
         properties = Prelude.fromList
                        (Prelude.catMaybes
                           [(JSON..=) "DynamicValue" Prelude.<$> dynamicValue,
                            (JSON..=) "StaticValues" Prelude.<$> staticValues])}
instance JSON.ToJSON DecimalDefaultValuesProperty where
  toJSON DecimalDefaultValuesProperty {..}
    = JSON.object
        (Prelude.fromList
           (Prelude.catMaybes
              [(JSON..=) "DynamicValue" Prelude.<$> dynamicValue,
               (JSON..=) "StaticValues" Prelude.<$> staticValues]))
instance Property "DynamicValue" DecimalDefaultValuesProperty where
  type PropertyType "DynamicValue" DecimalDefaultValuesProperty = DynamicDefaultValueProperty
  set newValue DecimalDefaultValuesProperty {..}
    = DecimalDefaultValuesProperty
        {dynamicValue = Prelude.pure newValue, ..}
instance Property "StaticValues" DecimalDefaultValuesProperty where
  type PropertyType "StaticValues" DecimalDefaultValuesProperty = ValueList Prelude.Double
  set newValue DecimalDefaultValuesProperty {..}
    = DecimalDefaultValuesProperty
        {staticValues = Prelude.pure newValue, ..}