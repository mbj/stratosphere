module Stratosphere.QuickSight.Template.AxisDisplayOptionsProperty (
        module Exports, AxisDisplayOptionsProperty(..),
        mkAxisDisplayOptionsProperty
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import {-# SOURCE #-} Stratosphere.QuickSight.Template.AxisDataOptionsProperty as Exports
import {-# SOURCE #-} Stratosphere.QuickSight.Template.AxisTickLabelOptionsProperty as Exports
import {-# SOURCE #-} Stratosphere.QuickSight.Template.ScrollBarOptionsProperty as Exports
import Stratosphere.ResourceProperties
import Stratosphere.Value
data AxisDisplayOptionsProperty
  = -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-quicksight-template-axisdisplayoptions.html>
    AxisDisplayOptionsProperty {haddock_workaround_ :: (),
                                -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-quicksight-template-axisdisplayoptions.html#cfn-quicksight-template-axisdisplayoptions-axislinevisibility>
                                axisLineVisibility :: (Prelude.Maybe JSON.Object),
                                -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-quicksight-template-axisdisplayoptions.html#cfn-quicksight-template-axisdisplayoptions-axisoffset>
                                axisOffset :: (Prelude.Maybe (Value Prelude.Text)),
                                -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-quicksight-template-axisdisplayoptions.html#cfn-quicksight-template-axisdisplayoptions-dataoptions>
                                dataOptions :: (Prelude.Maybe AxisDataOptionsProperty),
                                -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-quicksight-template-axisdisplayoptions.html#cfn-quicksight-template-axisdisplayoptions-gridlinevisibility>
                                gridLineVisibility :: (Prelude.Maybe JSON.Object),
                                -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-quicksight-template-axisdisplayoptions.html#cfn-quicksight-template-axisdisplayoptions-scrollbaroptions>
                                scrollbarOptions :: (Prelude.Maybe ScrollBarOptionsProperty),
                                -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-quicksight-template-axisdisplayoptions.html#cfn-quicksight-template-axisdisplayoptions-ticklabeloptions>
                                tickLabelOptions :: (Prelude.Maybe AxisTickLabelOptionsProperty)}
  deriving stock (Prelude.Eq, Prelude.Show)
mkAxisDisplayOptionsProperty :: AxisDisplayOptionsProperty
mkAxisDisplayOptionsProperty
  = AxisDisplayOptionsProperty
      {haddock_workaround_ = (), axisLineVisibility = Prelude.Nothing,
       axisOffset = Prelude.Nothing, dataOptions = Prelude.Nothing,
       gridLineVisibility = Prelude.Nothing,
       scrollbarOptions = Prelude.Nothing,
       tickLabelOptions = Prelude.Nothing}
instance ToResourceProperties AxisDisplayOptionsProperty where
  toResourceProperties AxisDisplayOptionsProperty {..}
    = ResourceProperties
        {awsType = "AWS::QuickSight::Template.AxisDisplayOptions",
         supportsTags = Prelude.False,
         properties = Prelude.fromList
                        (Prelude.catMaybes
                           [(JSON..=) "AxisLineVisibility" Prelude.<$> axisLineVisibility,
                            (JSON..=) "AxisOffset" Prelude.<$> axisOffset,
                            (JSON..=) "DataOptions" Prelude.<$> dataOptions,
                            (JSON..=) "GridLineVisibility" Prelude.<$> gridLineVisibility,
                            (JSON..=) "ScrollbarOptions" Prelude.<$> scrollbarOptions,
                            (JSON..=) "TickLabelOptions" Prelude.<$> tickLabelOptions])}
instance JSON.ToJSON AxisDisplayOptionsProperty where
  toJSON AxisDisplayOptionsProperty {..}
    = JSON.object
        (Prelude.fromList
           (Prelude.catMaybes
              [(JSON..=) "AxisLineVisibility" Prelude.<$> axisLineVisibility,
               (JSON..=) "AxisOffset" Prelude.<$> axisOffset,
               (JSON..=) "DataOptions" Prelude.<$> dataOptions,
               (JSON..=) "GridLineVisibility" Prelude.<$> gridLineVisibility,
               (JSON..=) "ScrollbarOptions" Prelude.<$> scrollbarOptions,
               (JSON..=) "TickLabelOptions" Prelude.<$> tickLabelOptions]))
instance Property "AxisLineVisibility" AxisDisplayOptionsProperty where
  type PropertyType "AxisLineVisibility" AxisDisplayOptionsProperty = JSON.Object
  set newValue AxisDisplayOptionsProperty {..}
    = AxisDisplayOptionsProperty
        {axisLineVisibility = Prelude.pure newValue, ..}
instance Property "AxisOffset" AxisDisplayOptionsProperty where
  type PropertyType "AxisOffset" AxisDisplayOptionsProperty = Value Prelude.Text
  set newValue AxisDisplayOptionsProperty {..}
    = AxisDisplayOptionsProperty
        {axisOffset = Prelude.pure newValue, ..}
instance Property "DataOptions" AxisDisplayOptionsProperty where
  type PropertyType "DataOptions" AxisDisplayOptionsProperty = AxisDataOptionsProperty
  set newValue AxisDisplayOptionsProperty {..}
    = AxisDisplayOptionsProperty
        {dataOptions = Prelude.pure newValue, ..}
instance Property "GridLineVisibility" AxisDisplayOptionsProperty where
  type PropertyType "GridLineVisibility" AxisDisplayOptionsProperty = JSON.Object
  set newValue AxisDisplayOptionsProperty {..}
    = AxisDisplayOptionsProperty
        {gridLineVisibility = Prelude.pure newValue, ..}
instance Property "ScrollbarOptions" AxisDisplayOptionsProperty where
  type PropertyType "ScrollbarOptions" AxisDisplayOptionsProperty = ScrollBarOptionsProperty
  set newValue AxisDisplayOptionsProperty {..}
    = AxisDisplayOptionsProperty
        {scrollbarOptions = Prelude.pure newValue, ..}
instance Property "TickLabelOptions" AxisDisplayOptionsProperty where
  type PropertyType "TickLabelOptions" AxisDisplayOptionsProperty = AxisTickLabelOptionsProperty
  set newValue AxisDisplayOptionsProperty {..}
    = AxisDisplayOptionsProperty
        {tickLabelOptions = Prelude.pure newValue, ..}