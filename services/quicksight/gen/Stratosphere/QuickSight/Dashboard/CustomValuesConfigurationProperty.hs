module Stratosphere.QuickSight.Dashboard.CustomValuesConfigurationProperty (
        module Exports, CustomValuesConfigurationProperty(..),
        mkCustomValuesConfigurationProperty
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import {-# SOURCE #-} Stratosphere.QuickSight.Dashboard.CustomParameterValuesProperty as Exports
import Stratosphere.ResourceProperties
import Stratosphere.Value
data CustomValuesConfigurationProperty
  = -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-quicksight-dashboard-customvaluesconfiguration.html>
    CustomValuesConfigurationProperty {haddock_workaround_ :: (),
                                       -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-quicksight-dashboard-customvaluesconfiguration.html#cfn-quicksight-dashboard-customvaluesconfiguration-customvalues>
                                       customValues :: CustomParameterValuesProperty,
                                       -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-quicksight-dashboard-customvaluesconfiguration.html#cfn-quicksight-dashboard-customvaluesconfiguration-includenullvalue>
                                       includeNullValue :: (Prelude.Maybe (Value Prelude.Bool))}
  deriving stock (Prelude.Eq, Prelude.Show)
mkCustomValuesConfigurationProperty ::
  CustomParameterValuesProperty -> CustomValuesConfigurationProperty
mkCustomValuesConfigurationProperty customValues
  = CustomValuesConfigurationProperty
      {haddock_workaround_ = (), customValues = customValues,
       includeNullValue = Prelude.Nothing}
instance ToResourceProperties CustomValuesConfigurationProperty where
  toResourceProperties CustomValuesConfigurationProperty {..}
    = ResourceProperties
        {awsType = "AWS::QuickSight::Dashboard.CustomValuesConfiguration",
         supportsTags = Prelude.False,
         properties = Prelude.fromList
                        ((Prelude.<>)
                           ["CustomValues" JSON..= customValues]
                           (Prelude.catMaybes
                              [(JSON..=) "IncludeNullValue" Prelude.<$> includeNullValue]))}
instance JSON.ToJSON CustomValuesConfigurationProperty where
  toJSON CustomValuesConfigurationProperty {..}
    = JSON.object
        (Prelude.fromList
           ((Prelude.<>)
              ["CustomValues" JSON..= customValues]
              (Prelude.catMaybes
                 [(JSON..=) "IncludeNullValue" Prelude.<$> includeNullValue])))
instance Property "CustomValues" CustomValuesConfigurationProperty where
  type PropertyType "CustomValues" CustomValuesConfigurationProperty = CustomParameterValuesProperty
  set newValue CustomValuesConfigurationProperty {..}
    = CustomValuesConfigurationProperty {customValues = newValue, ..}
instance Property "IncludeNullValue" CustomValuesConfigurationProperty where
  type PropertyType "IncludeNullValue" CustomValuesConfigurationProperty = Value Prelude.Bool
  set newValue CustomValuesConfigurationProperty {..}
    = CustomValuesConfigurationProperty
        {includeNullValue = Prelude.pure newValue, ..}