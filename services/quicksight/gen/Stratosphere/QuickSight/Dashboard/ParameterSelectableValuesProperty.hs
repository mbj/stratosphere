module Stratosphere.QuickSight.Dashboard.ParameterSelectableValuesProperty (
        module Exports, ParameterSelectableValuesProperty(..),
        mkParameterSelectableValuesProperty
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import {-# SOURCE #-} Stratosphere.QuickSight.Dashboard.ColumnIdentifierProperty as Exports
import Stratosphere.ResourceProperties
import Stratosphere.Value
data ParameterSelectableValuesProperty
  = -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-quicksight-dashboard-parameterselectablevalues.html>
    ParameterSelectableValuesProperty {haddock_workaround_ :: (),
                                       -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-quicksight-dashboard-parameterselectablevalues.html#cfn-quicksight-dashboard-parameterselectablevalues-linktodatasetcolumn>
                                       linkToDataSetColumn :: (Prelude.Maybe ColumnIdentifierProperty),
                                       -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-quicksight-dashboard-parameterselectablevalues.html#cfn-quicksight-dashboard-parameterselectablevalues-values>
                                       values :: (Prelude.Maybe (ValueList Prelude.Text))}
  deriving stock (Prelude.Eq, Prelude.Show)
mkParameterSelectableValuesProperty ::
  ParameterSelectableValuesProperty
mkParameterSelectableValuesProperty
  = ParameterSelectableValuesProperty
      {haddock_workaround_ = (), linkToDataSetColumn = Prelude.Nothing,
       values = Prelude.Nothing}
instance ToResourceProperties ParameterSelectableValuesProperty where
  toResourceProperties ParameterSelectableValuesProperty {..}
    = ResourceProperties
        {awsType = "AWS::QuickSight::Dashboard.ParameterSelectableValues",
         supportsTags = Prelude.False,
         properties = Prelude.fromList
                        (Prelude.catMaybes
                           [(JSON..=) "LinkToDataSetColumn" Prelude.<$> linkToDataSetColumn,
                            (JSON..=) "Values" Prelude.<$> values])}
instance JSON.ToJSON ParameterSelectableValuesProperty where
  toJSON ParameterSelectableValuesProperty {..}
    = JSON.object
        (Prelude.fromList
           (Prelude.catMaybes
              [(JSON..=) "LinkToDataSetColumn" Prelude.<$> linkToDataSetColumn,
               (JSON..=) "Values" Prelude.<$> values]))
instance Property "LinkToDataSetColumn" ParameterSelectableValuesProperty where
  type PropertyType "LinkToDataSetColumn" ParameterSelectableValuesProperty = ColumnIdentifierProperty
  set newValue ParameterSelectableValuesProperty {..}
    = ParameterSelectableValuesProperty
        {linkToDataSetColumn = Prelude.pure newValue, ..}
instance Property "Values" ParameterSelectableValuesProperty where
  type PropertyType "Values" ParameterSelectableValuesProperty = ValueList Prelude.Text
  set newValue ParameterSelectableValuesProperty {..}
    = ParameterSelectableValuesProperty
        {values = Prelude.pure newValue, ..}