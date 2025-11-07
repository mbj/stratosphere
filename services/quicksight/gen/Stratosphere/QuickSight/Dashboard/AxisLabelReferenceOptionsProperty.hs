module Stratosphere.QuickSight.Dashboard.AxisLabelReferenceOptionsProperty (
        module Exports, AxisLabelReferenceOptionsProperty(..),
        mkAxisLabelReferenceOptionsProperty
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import {-# SOURCE #-} Stratosphere.QuickSight.Dashboard.ColumnIdentifierProperty as Exports
import Stratosphere.ResourceProperties
import Stratosphere.Value
data AxisLabelReferenceOptionsProperty
  = -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-quicksight-dashboard-axislabelreferenceoptions.html>
    AxisLabelReferenceOptionsProperty {haddock_workaround_ :: (),
                                       -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-quicksight-dashboard-axislabelreferenceoptions.html#cfn-quicksight-dashboard-axislabelreferenceoptions-column>
                                       column :: ColumnIdentifierProperty,
                                       -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-quicksight-dashboard-axislabelreferenceoptions.html#cfn-quicksight-dashboard-axislabelreferenceoptions-fieldid>
                                       fieldId :: (Value Prelude.Text)}
  deriving stock (Prelude.Eq, Prelude.Show)
mkAxisLabelReferenceOptionsProperty ::
  ColumnIdentifierProperty
  -> Value Prelude.Text -> AxisLabelReferenceOptionsProperty
mkAxisLabelReferenceOptionsProperty column fieldId
  = AxisLabelReferenceOptionsProperty
      {haddock_workaround_ = (), column = column, fieldId = fieldId}
instance ToResourceProperties AxisLabelReferenceOptionsProperty where
  toResourceProperties AxisLabelReferenceOptionsProperty {..}
    = ResourceProperties
        {awsType = "AWS::QuickSight::Dashboard.AxisLabelReferenceOptions",
         supportsTags = Prelude.False,
         properties = ["Column" JSON..= column, "FieldId" JSON..= fieldId]}
instance JSON.ToJSON AxisLabelReferenceOptionsProperty where
  toJSON AxisLabelReferenceOptionsProperty {..}
    = JSON.object ["Column" JSON..= column, "FieldId" JSON..= fieldId]
instance Property "Column" AxisLabelReferenceOptionsProperty where
  type PropertyType "Column" AxisLabelReferenceOptionsProperty = ColumnIdentifierProperty
  set newValue AxisLabelReferenceOptionsProperty {..}
    = AxisLabelReferenceOptionsProperty {column = newValue, ..}
instance Property "FieldId" AxisLabelReferenceOptionsProperty where
  type PropertyType "FieldId" AxisLabelReferenceOptionsProperty = Value Prelude.Text
  set newValue AxisLabelReferenceOptionsProperty {..}
    = AxisLabelReferenceOptionsProperty {fieldId = newValue, ..}