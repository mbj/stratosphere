module Stratosphere.QuickSight.Dashboard.AxisDisplayOptionsProperty (
        module Exports, AxisDisplayOptionsProperty(..),
        mkAxisDisplayOptionsProperty
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import {-# SOURCE #-} Stratosphere.QuickSight.Dashboard.AxisDataOptionsProperty as Exports
import {-# SOURCE #-} Stratosphere.QuickSight.Dashboard.AxisTickLabelOptionsProperty as Exports
import {-# SOURCE #-} Stratosphere.QuickSight.Dashboard.ScrollBarOptionsProperty as Exports
import Stratosphere.ResourceProperties
import Stratosphere.Value
data AxisDisplayOptionsProperty
  = AxisDisplayOptionsProperty {axisLineVisibility :: (Prelude.Maybe (Value Prelude.Text)),
                                axisOffset :: (Prelude.Maybe (Value Prelude.Text)),
                                dataOptions :: (Prelude.Maybe AxisDataOptionsProperty),
                                gridLineVisibility :: (Prelude.Maybe (Value Prelude.Text)),
                                scrollbarOptions :: (Prelude.Maybe ScrollBarOptionsProperty),
                                tickLabelOptions :: (Prelude.Maybe AxisTickLabelOptionsProperty)}
mkAxisDisplayOptionsProperty :: AxisDisplayOptionsProperty
mkAxisDisplayOptionsProperty
  = AxisDisplayOptionsProperty
      {axisLineVisibility = Prelude.Nothing,
       axisOffset = Prelude.Nothing, dataOptions = Prelude.Nothing,
       gridLineVisibility = Prelude.Nothing,
       scrollbarOptions = Prelude.Nothing,
       tickLabelOptions = Prelude.Nothing}
instance ToResourceProperties AxisDisplayOptionsProperty where
  toResourceProperties AxisDisplayOptionsProperty {..}
    = ResourceProperties
        {awsType = "AWS::QuickSight::Dashboard.AxisDisplayOptions",
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
  type PropertyType "AxisLineVisibility" AxisDisplayOptionsProperty = Value Prelude.Text
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
  type PropertyType "GridLineVisibility" AxisDisplayOptionsProperty = Value Prelude.Text
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