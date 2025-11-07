module Stratosphere.QuickSight.Analysis.CustomParameterValuesProperty (
        CustomParameterValuesProperty(..), mkCustomParameterValuesProperty
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import Stratosphere.ResourceProperties
import Stratosphere.Value
data CustomParameterValuesProperty
  = -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-quicksight-analysis-customparametervalues.html>
    CustomParameterValuesProperty {haddock_workaround_ :: (),
                                   -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-quicksight-analysis-customparametervalues.html#cfn-quicksight-analysis-customparametervalues-datetimevalues>
                                   dateTimeValues :: (Prelude.Maybe (ValueList Prelude.Text)),
                                   -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-quicksight-analysis-customparametervalues.html#cfn-quicksight-analysis-customparametervalues-decimalvalues>
                                   decimalValues :: (Prelude.Maybe (ValueList Prelude.Double)),
                                   -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-quicksight-analysis-customparametervalues.html#cfn-quicksight-analysis-customparametervalues-integervalues>
                                   integerValues :: (Prelude.Maybe (ValueList Prelude.Double)),
                                   -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-quicksight-analysis-customparametervalues.html#cfn-quicksight-analysis-customparametervalues-stringvalues>
                                   stringValues :: (Prelude.Maybe (ValueList Prelude.Text))}
  deriving stock (Prelude.Eq, Prelude.Show)
mkCustomParameterValuesProperty :: CustomParameterValuesProperty
mkCustomParameterValuesProperty
  = CustomParameterValuesProperty
      {haddock_workaround_ = (), dateTimeValues = Prelude.Nothing,
       decimalValues = Prelude.Nothing, integerValues = Prelude.Nothing,
       stringValues = Prelude.Nothing}
instance ToResourceProperties CustomParameterValuesProperty where
  toResourceProperties CustomParameterValuesProperty {..}
    = ResourceProperties
        {awsType = "AWS::QuickSight::Analysis.CustomParameterValues",
         supportsTags = Prelude.False,
         properties = Prelude.fromList
                        (Prelude.catMaybes
                           [(JSON..=) "DateTimeValues" Prelude.<$> dateTimeValues,
                            (JSON..=) "DecimalValues" Prelude.<$> decimalValues,
                            (JSON..=) "IntegerValues" Prelude.<$> integerValues,
                            (JSON..=) "StringValues" Prelude.<$> stringValues])}
instance JSON.ToJSON CustomParameterValuesProperty where
  toJSON CustomParameterValuesProperty {..}
    = JSON.object
        (Prelude.fromList
           (Prelude.catMaybes
              [(JSON..=) "DateTimeValues" Prelude.<$> dateTimeValues,
               (JSON..=) "DecimalValues" Prelude.<$> decimalValues,
               (JSON..=) "IntegerValues" Prelude.<$> integerValues,
               (JSON..=) "StringValues" Prelude.<$> stringValues]))
instance Property "DateTimeValues" CustomParameterValuesProperty where
  type PropertyType "DateTimeValues" CustomParameterValuesProperty = ValueList Prelude.Text
  set newValue CustomParameterValuesProperty {..}
    = CustomParameterValuesProperty
        {dateTimeValues = Prelude.pure newValue, ..}
instance Property "DecimalValues" CustomParameterValuesProperty where
  type PropertyType "DecimalValues" CustomParameterValuesProperty = ValueList Prelude.Double
  set newValue CustomParameterValuesProperty {..}
    = CustomParameterValuesProperty
        {decimalValues = Prelude.pure newValue, ..}
instance Property "IntegerValues" CustomParameterValuesProperty where
  type PropertyType "IntegerValues" CustomParameterValuesProperty = ValueList Prelude.Double
  set newValue CustomParameterValuesProperty {..}
    = CustomParameterValuesProperty
        {integerValues = Prelude.pure newValue, ..}
instance Property "StringValues" CustomParameterValuesProperty where
  type PropertyType "StringValues" CustomParameterValuesProperty = ValueList Prelude.Text
  set newValue CustomParameterValuesProperty {..}
    = CustomParameterValuesProperty
        {stringValues = Prelude.pure newValue, ..}