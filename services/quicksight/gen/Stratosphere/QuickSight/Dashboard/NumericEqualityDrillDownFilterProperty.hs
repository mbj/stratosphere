module Stratosphere.QuickSight.Dashboard.NumericEqualityDrillDownFilterProperty (
        module Exports, NumericEqualityDrillDownFilterProperty(..),
        mkNumericEqualityDrillDownFilterProperty
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import {-# SOURCE #-} Stratosphere.QuickSight.Dashboard.ColumnIdentifierProperty as Exports
import Stratosphere.ResourceProperties
import Stratosphere.Value
data NumericEqualityDrillDownFilterProperty
  = -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-quicksight-dashboard-numericequalitydrilldownfilter.html>
    NumericEqualityDrillDownFilterProperty {haddock_workaround_ :: (),
                                            -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-quicksight-dashboard-numericequalitydrilldownfilter.html#cfn-quicksight-dashboard-numericequalitydrilldownfilter-column>
                                            column :: ColumnIdentifierProperty,
                                            -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-quicksight-dashboard-numericequalitydrilldownfilter.html#cfn-quicksight-dashboard-numericequalitydrilldownfilter-value>
                                            value :: (Value Prelude.Double)}
  deriving stock (Prelude.Eq, Prelude.Show)
mkNumericEqualityDrillDownFilterProperty ::
  ColumnIdentifierProperty
  -> Value Prelude.Double -> NumericEqualityDrillDownFilterProperty
mkNumericEqualityDrillDownFilterProperty column value
  = NumericEqualityDrillDownFilterProperty
      {haddock_workaround_ = (), column = column, value = value}
instance ToResourceProperties NumericEqualityDrillDownFilterProperty where
  toResourceProperties NumericEqualityDrillDownFilterProperty {..}
    = ResourceProperties
        {awsType = "AWS::QuickSight::Dashboard.NumericEqualityDrillDownFilter",
         supportsTags = Prelude.False,
         properties = ["Column" JSON..= column, "Value" JSON..= value]}
instance JSON.ToJSON NumericEqualityDrillDownFilterProperty where
  toJSON NumericEqualityDrillDownFilterProperty {..}
    = JSON.object ["Column" JSON..= column, "Value" JSON..= value]
instance Property "Column" NumericEqualityDrillDownFilterProperty where
  type PropertyType "Column" NumericEqualityDrillDownFilterProperty = ColumnIdentifierProperty
  set newValue NumericEqualityDrillDownFilterProperty {..}
    = NumericEqualityDrillDownFilterProperty {column = newValue, ..}
instance Property "Value" NumericEqualityDrillDownFilterProperty where
  type PropertyType "Value" NumericEqualityDrillDownFilterProperty = Value Prelude.Double
  set newValue NumericEqualityDrillDownFilterProperty {..}
    = NumericEqualityDrillDownFilterProperty {value = newValue, ..}