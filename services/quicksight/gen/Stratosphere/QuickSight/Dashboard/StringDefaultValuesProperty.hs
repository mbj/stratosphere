module Stratosphere.QuickSight.Dashboard.StringDefaultValuesProperty (
        module Exports, StringDefaultValuesProperty(..),
        mkStringDefaultValuesProperty
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import {-# SOURCE #-} Stratosphere.QuickSight.Dashboard.DynamicDefaultValueProperty as Exports
import Stratosphere.ResourceProperties
import Stratosphere.Value
data StringDefaultValuesProperty
  = -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-quicksight-dashboard-stringdefaultvalues.html>
    StringDefaultValuesProperty {haddock_workaround_ :: (),
                                 -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-quicksight-dashboard-stringdefaultvalues.html#cfn-quicksight-dashboard-stringdefaultvalues-dynamicvalue>
                                 dynamicValue :: (Prelude.Maybe DynamicDefaultValueProperty),
                                 -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-quicksight-dashboard-stringdefaultvalues.html#cfn-quicksight-dashboard-stringdefaultvalues-staticvalues>
                                 staticValues :: (Prelude.Maybe (ValueList Prelude.Text))}
  deriving stock (Prelude.Eq, Prelude.Show)
mkStringDefaultValuesProperty :: StringDefaultValuesProperty
mkStringDefaultValuesProperty
  = StringDefaultValuesProperty
      {haddock_workaround_ = (), dynamicValue = Prelude.Nothing,
       staticValues = Prelude.Nothing}
instance ToResourceProperties StringDefaultValuesProperty where
  toResourceProperties StringDefaultValuesProperty {..}
    = ResourceProperties
        {awsType = "AWS::QuickSight::Dashboard.StringDefaultValues",
         supportsTags = Prelude.False,
         properties = Prelude.fromList
                        (Prelude.catMaybes
                           [(JSON..=) "DynamicValue" Prelude.<$> dynamicValue,
                            (JSON..=) "StaticValues" Prelude.<$> staticValues])}
instance JSON.ToJSON StringDefaultValuesProperty where
  toJSON StringDefaultValuesProperty {..}
    = JSON.object
        (Prelude.fromList
           (Prelude.catMaybes
              [(JSON..=) "DynamicValue" Prelude.<$> dynamicValue,
               (JSON..=) "StaticValues" Prelude.<$> staticValues]))
instance Property "DynamicValue" StringDefaultValuesProperty where
  type PropertyType "DynamicValue" StringDefaultValuesProperty = DynamicDefaultValueProperty
  set newValue StringDefaultValuesProperty {..}
    = StringDefaultValuesProperty
        {dynamicValue = Prelude.pure newValue, ..}
instance Property "StaticValues" StringDefaultValuesProperty where
  type PropertyType "StaticValues" StringDefaultValuesProperty = ValueList Prelude.Text
  set newValue StringDefaultValuesProperty {..}
    = StringDefaultValuesProperty
        {staticValues = Prelude.pure newValue, ..}