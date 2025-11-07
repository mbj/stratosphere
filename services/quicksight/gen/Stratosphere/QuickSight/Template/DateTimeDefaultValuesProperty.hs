module Stratosphere.QuickSight.Template.DateTimeDefaultValuesProperty (
        module Exports, DateTimeDefaultValuesProperty(..),
        mkDateTimeDefaultValuesProperty
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import {-# SOURCE #-} Stratosphere.QuickSight.Template.DynamicDefaultValueProperty as Exports
import {-# SOURCE #-} Stratosphere.QuickSight.Template.RollingDateConfigurationProperty as Exports
import Stratosphere.ResourceProperties
import Stratosphere.Value
data DateTimeDefaultValuesProperty
  = -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-quicksight-template-datetimedefaultvalues.html>
    DateTimeDefaultValuesProperty {haddock_workaround_ :: (),
                                   -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-quicksight-template-datetimedefaultvalues.html#cfn-quicksight-template-datetimedefaultvalues-dynamicvalue>
                                   dynamicValue :: (Prelude.Maybe DynamicDefaultValueProperty),
                                   -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-quicksight-template-datetimedefaultvalues.html#cfn-quicksight-template-datetimedefaultvalues-rollingdate>
                                   rollingDate :: (Prelude.Maybe RollingDateConfigurationProperty),
                                   -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-quicksight-template-datetimedefaultvalues.html#cfn-quicksight-template-datetimedefaultvalues-staticvalues>
                                   staticValues :: (Prelude.Maybe (ValueList Prelude.Text))}
  deriving stock (Prelude.Eq, Prelude.Show)
mkDateTimeDefaultValuesProperty :: DateTimeDefaultValuesProperty
mkDateTimeDefaultValuesProperty
  = DateTimeDefaultValuesProperty
      {haddock_workaround_ = (), dynamicValue = Prelude.Nothing,
       rollingDate = Prelude.Nothing, staticValues = Prelude.Nothing}
instance ToResourceProperties DateTimeDefaultValuesProperty where
  toResourceProperties DateTimeDefaultValuesProperty {..}
    = ResourceProperties
        {awsType = "AWS::QuickSight::Template.DateTimeDefaultValues",
         supportsTags = Prelude.False,
         properties = Prelude.fromList
                        (Prelude.catMaybes
                           [(JSON..=) "DynamicValue" Prelude.<$> dynamicValue,
                            (JSON..=) "RollingDate" Prelude.<$> rollingDate,
                            (JSON..=) "StaticValues" Prelude.<$> staticValues])}
instance JSON.ToJSON DateTimeDefaultValuesProperty where
  toJSON DateTimeDefaultValuesProperty {..}
    = JSON.object
        (Prelude.fromList
           (Prelude.catMaybes
              [(JSON..=) "DynamicValue" Prelude.<$> dynamicValue,
               (JSON..=) "RollingDate" Prelude.<$> rollingDate,
               (JSON..=) "StaticValues" Prelude.<$> staticValues]))
instance Property "DynamicValue" DateTimeDefaultValuesProperty where
  type PropertyType "DynamicValue" DateTimeDefaultValuesProperty = DynamicDefaultValueProperty
  set newValue DateTimeDefaultValuesProperty {..}
    = DateTimeDefaultValuesProperty
        {dynamicValue = Prelude.pure newValue, ..}
instance Property "RollingDate" DateTimeDefaultValuesProperty where
  type PropertyType "RollingDate" DateTimeDefaultValuesProperty = RollingDateConfigurationProperty
  set newValue DateTimeDefaultValuesProperty {..}
    = DateTimeDefaultValuesProperty
        {rollingDate = Prelude.pure newValue, ..}
instance Property "StaticValues" DateTimeDefaultValuesProperty where
  type PropertyType "StaticValues" DateTimeDefaultValuesProperty = ValueList Prelude.Text
  set newValue DateTimeDefaultValuesProperty {..}
    = DateTimeDefaultValuesProperty
        {staticValues = Prelude.pure newValue, ..}