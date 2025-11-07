module Stratosphere.QuickSight.Dashboard.AxisLabelOptionsProperty (
        module Exports, AxisLabelOptionsProperty(..),
        mkAxisLabelOptionsProperty
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import {-# SOURCE #-} Stratosphere.QuickSight.Dashboard.AxisLabelReferenceOptionsProperty as Exports
import {-# SOURCE #-} Stratosphere.QuickSight.Dashboard.FontConfigurationProperty as Exports
import Stratosphere.ResourceProperties
import Stratosphere.Value
data AxisLabelOptionsProperty
  = -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-quicksight-dashboard-axislabeloptions.html>
    AxisLabelOptionsProperty {haddock_workaround_ :: (),
                              -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-quicksight-dashboard-axislabeloptions.html#cfn-quicksight-dashboard-axislabeloptions-applyto>
                              applyTo :: (Prelude.Maybe AxisLabelReferenceOptionsProperty),
                              -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-quicksight-dashboard-axislabeloptions.html#cfn-quicksight-dashboard-axislabeloptions-customlabel>
                              customLabel :: (Prelude.Maybe (Value Prelude.Text)),
                              -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-quicksight-dashboard-axislabeloptions.html#cfn-quicksight-dashboard-axislabeloptions-fontconfiguration>
                              fontConfiguration :: (Prelude.Maybe FontConfigurationProperty)}
  deriving stock (Prelude.Eq, Prelude.Show)
mkAxisLabelOptionsProperty :: AxisLabelOptionsProperty
mkAxisLabelOptionsProperty
  = AxisLabelOptionsProperty
      {haddock_workaround_ = (), applyTo = Prelude.Nothing,
       customLabel = Prelude.Nothing, fontConfiguration = Prelude.Nothing}
instance ToResourceProperties AxisLabelOptionsProperty where
  toResourceProperties AxisLabelOptionsProperty {..}
    = ResourceProperties
        {awsType = "AWS::QuickSight::Dashboard.AxisLabelOptions",
         supportsTags = Prelude.False,
         properties = Prelude.fromList
                        (Prelude.catMaybes
                           [(JSON..=) "ApplyTo" Prelude.<$> applyTo,
                            (JSON..=) "CustomLabel" Prelude.<$> customLabel,
                            (JSON..=) "FontConfiguration" Prelude.<$> fontConfiguration])}
instance JSON.ToJSON AxisLabelOptionsProperty where
  toJSON AxisLabelOptionsProperty {..}
    = JSON.object
        (Prelude.fromList
           (Prelude.catMaybes
              [(JSON..=) "ApplyTo" Prelude.<$> applyTo,
               (JSON..=) "CustomLabel" Prelude.<$> customLabel,
               (JSON..=) "FontConfiguration" Prelude.<$> fontConfiguration]))
instance Property "ApplyTo" AxisLabelOptionsProperty where
  type PropertyType "ApplyTo" AxisLabelOptionsProperty = AxisLabelReferenceOptionsProperty
  set newValue AxisLabelOptionsProperty {..}
    = AxisLabelOptionsProperty {applyTo = Prelude.pure newValue, ..}
instance Property "CustomLabel" AxisLabelOptionsProperty where
  type PropertyType "CustomLabel" AxisLabelOptionsProperty = Value Prelude.Text
  set newValue AxisLabelOptionsProperty {..}
    = AxisLabelOptionsProperty
        {customLabel = Prelude.pure newValue, ..}
instance Property "FontConfiguration" AxisLabelOptionsProperty where
  type PropertyType "FontConfiguration" AxisLabelOptionsProperty = FontConfigurationProperty
  set newValue AxisLabelOptionsProperty {..}
    = AxisLabelOptionsProperty
        {fontConfiguration = Prelude.pure newValue, ..}