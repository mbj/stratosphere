module Stratosphere.QuickSight.Analysis.AxisDisplayRangeProperty (
        module Exports, AxisDisplayRangeProperty(..),
        mkAxisDisplayRangeProperty
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import {-# SOURCE #-} Stratosphere.QuickSight.Analysis.AxisDisplayMinMaxRangeProperty as Exports
import Stratosphere.ResourceProperties
data AxisDisplayRangeProperty
  = AxisDisplayRangeProperty {dataDriven :: (Prelude.Maybe JSON.Object),
                              minMax :: (Prelude.Maybe AxisDisplayMinMaxRangeProperty)}
mkAxisDisplayRangeProperty :: AxisDisplayRangeProperty
mkAxisDisplayRangeProperty
  = AxisDisplayRangeProperty
      {dataDriven = Prelude.Nothing, minMax = Prelude.Nothing}
instance ToResourceProperties AxisDisplayRangeProperty where
  toResourceProperties AxisDisplayRangeProperty {..}
    = ResourceProperties
        {awsType = "AWS::QuickSight::Analysis.AxisDisplayRange",
         supportsTags = Prelude.False,
         properties = Prelude.fromList
                        (Prelude.catMaybes
                           [(JSON..=) "DataDriven" Prelude.<$> dataDriven,
                            (JSON..=) "MinMax" Prelude.<$> minMax])}
instance JSON.ToJSON AxisDisplayRangeProperty where
  toJSON AxisDisplayRangeProperty {..}
    = JSON.object
        (Prelude.fromList
           (Prelude.catMaybes
              [(JSON..=) "DataDriven" Prelude.<$> dataDriven,
               (JSON..=) "MinMax" Prelude.<$> minMax]))
instance Property "DataDriven" AxisDisplayRangeProperty where
  type PropertyType "DataDriven" AxisDisplayRangeProperty = JSON.Object
  set newValue AxisDisplayRangeProperty {..}
    = AxisDisplayRangeProperty {dataDriven = Prelude.pure newValue, ..}
instance Property "MinMax" AxisDisplayRangeProperty where
  type PropertyType "MinMax" AxisDisplayRangeProperty = AxisDisplayMinMaxRangeProperty
  set newValue AxisDisplayRangeProperty {..}
    = AxisDisplayRangeProperty {minMax = Prelude.pure newValue, ..}