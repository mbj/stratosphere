module Stratosphere.QuickSight.Analysis.AxisDataOptionsProperty (
        module Exports, AxisDataOptionsProperty(..),
        mkAxisDataOptionsProperty
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import {-# SOURCE #-} Stratosphere.QuickSight.Analysis.DateAxisOptionsProperty as Exports
import {-# SOURCE #-} Stratosphere.QuickSight.Analysis.NumericAxisOptionsProperty as Exports
import Stratosphere.ResourceProperties
data AxisDataOptionsProperty
  = AxisDataOptionsProperty {dateAxisOptions :: (Prelude.Maybe DateAxisOptionsProperty),
                             numericAxisOptions :: (Prelude.Maybe NumericAxisOptionsProperty)}
mkAxisDataOptionsProperty :: AxisDataOptionsProperty
mkAxisDataOptionsProperty
  = AxisDataOptionsProperty
      {dateAxisOptions = Prelude.Nothing,
       numericAxisOptions = Prelude.Nothing}
instance ToResourceProperties AxisDataOptionsProperty where
  toResourceProperties AxisDataOptionsProperty {..}
    = ResourceProperties
        {awsType = "AWS::QuickSight::Analysis.AxisDataOptions",
         supportsTags = Prelude.False,
         properties = Prelude.fromList
                        (Prelude.catMaybes
                           [(JSON..=) "DateAxisOptions" Prelude.<$> dateAxisOptions,
                            (JSON..=) "NumericAxisOptions" Prelude.<$> numericAxisOptions])}
instance JSON.ToJSON AxisDataOptionsProperty where
  toJSON AxisDataOptionsProperty {..}
    = JSON.object
        (Prelude.fromList
           (Prelude.catMaybes
              [(JSON..=) "DateAxisOptions" Prelude.<$> dateAxisOptions,
               (JSON..=) "NumericAxisOptions" Prelude.<$> numericAxisOptions]))
instance Property "DateAxisOptions" AxisDataOptionsProperty where
  type PropertyType "DateAxisOptions" AxisDataOptionsProperty = DateAxisOptionsProperty
  set newValue AxisDataOptionsProperty {..}
    = AxisDataOptionsProperty
        {dateAxisOptions = Prelude.pure newValue, ..}
instance Property "NumericAxisOptions" AxisDataOptionsProperty where
  type PropertyType "NumericAxisOptions" AxisDataOptionsProperty = NumericAxisOptionsProperty
  set newValue AxisDataOptionsProperty {..}
    = AxisDataOptionsProperty
        {numericAxisOptions = Prelude.pure newValue, ..}