module Stratosphere.QuickSight.Analysis.SmallMultiplesOptionsProperty (
        module Exports, SmallMultiplesOptionsProperty(..),
        mkSmallMultiplesOptionsProperty
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import {-# SOURCE #-} Stratosphere.QuickSight.Analysis.PanelConfigurationProperty as Exports
import {-# SOURCE #-} Stratosphere.QuickSight.Analysis.SmallMultiplesAxisPropertiesProperty as Exports
import Stratosphere.ResourceProperties
import Stratosphere.Value
data SmallMultiplesOptionsProperty
  = SmallMultiplesOptionsProperty {maxVisibleColumns :: (Prelude.Maybe (Value Prelude.Double)),
                                   maxVisibleRows :: (Prelude.Maybe (Value Prelude.Double)),
                                   panelConfiguration :: (Prelude.Maybe PanelConfigurationProperty),
                                   xAxis :: (Prelude.Maybe SmallMultiplesAxisPropertiesProperty),
                                   yAxis :: (Prelude.Maybe SmallMultiplesAxisPropertiesProperty)}
  deriving stock (Prelude.Eq, Prelude.Show)
mkSmallMultiplesOptionsProperty :: SmallMultiplesOptionsProperty
mkSmallMultiplesOptionsProperty
  = SmallMultiplesOptionsProperty
      {maxVisibleColumns = Prelude.Nothing,
       maxVisibleRows = Prelude.Nothing,
       panelConfiguration = Prelude.Nothing, xAxis = Prelude.Nothing,
       yAxis = Prelude.Nothing}
instance ToResourceProperties SmallMultiplesOptionsProperty where
  toResourceProperties SmallMultiplesOptionsProperty {..}
    = ResourceProperties
        {awsType = "AWS::QuickSight::Analysis.SmallMultiplesOptions",
         supportsTags = Prelude.False,
         properties = Prelude.fromList
                        (Prelude.catMaybes
                           [(JSON..=) "MaxVisibleColumns" Prelude.<$> maxVisibleColumns,
                            (JSON..=) "MaxVisibleRows" Prelude.<$> maxVisibleRows,
                            (JSON..=) "PanelConfiguration" Prelude.<$> panelConfiguration,
                            (JSON..=) "XAxis" Prelude.<$> xAxis,
                            (JSON..=) "YAxis" Prelude.<$> yAxis])}
instance JSON.ToJSON SmallMultiplesOptionsProperty where
  toJSON SmallMultiplesOptionsProperty {..}
    = JSON.object
        (Prelude.fromList
           (Prelude.catMaybes
              [(JSON..=) "MaxVisibleColumns" Prelude.<$> maxVisibleColumns,
               (JSON..=) "MaxVisibleRows" Prelude.<$> maxVisibleRows,
               (JSON..=) "PanelConfiguration" Prelude.<$> panelConfiguration,
               (JSON..=) "XAxis" Prelude.<$> xAxis,
               (JSON..=) "YAxis" Prelude.<$> yAxis]))
instance Property "MaxVisibleColumns" SmallMultiplesOptionsProperty where
  type PropertyType "MaxVisibleColumns" SmallMultiplesOptionsProperty = Value Prelude.Double
  set newValue SmallMultiplesOptionsProperty {..}
    = SmallMultiplesOptionsProperty
        {maxVisibleColumns = Prelude.pure newValue, ..}
instance Property "MaxVisibleRows" SmallMultiplesOptionsProperty where
  type PropertyType "MaxVisibleRows" SmallMultiplesOptionsProperty = Value Prelude.Double
  set newValue SmallMultiplesOptionsProperty {..}
    = SmallMultiplesOptionsProperty
        {maxVisibleRows = Prelude.pure newValue, ..}
instance Property "PanelConfiguration" SmallMultiplesOptionsProperty where
  type PropertyType "PanelConfiguration" SmallMultiplesOptionsProperty = PanelConfigurationProperty
  set newValue SmallMultiplesOptionsProperty {..}
    = SmallMultiplesOptionsProperty
        {panelConfiguration = Prelude.pure newValue, ..}
instance Property "XAxis" SmallMultiplesOptionsProperty where
  type PropertyType "XAxis" SmallMultiplesOptionsProperty = SmallMultiplesAxisPropertiesProperty
  set newValue SmallMultiplesOptionsProperty {..}
    = SmallMultiplesOptionsProperty {xAxis = Prelude.pure newValue, ..}
instance Property "YAxis" SmallMultiplesOptionsProperty where
  type PropertyType "YAxis" SmallMultiplesOptionsProperty = SmallMultiplesAxisPropertiesProperty
  set newValue SmallMultiplesOptionsProperty {..}
    = SmallMultiplesOptionsProperty {yAxis = Prelude.pure newValue, ..}