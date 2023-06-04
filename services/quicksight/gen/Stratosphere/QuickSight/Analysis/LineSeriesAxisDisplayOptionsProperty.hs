module Stratosphere.QuickSight.Analysis.LineSeriesAxisDisplayOptionsProperty (
        module Exports, LineSeriesAxisDisplayOptionsProperty(..),
        mkLineSeriesAxisDisplayOptionsProperty
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import {-# SOURCE #-} Stratosphere.QuickSight.Analysis.AxisDisplayOptionsProperty as Exports
import {-# SOURCE #-} Stratosphere.QuickSight.Analysis.MissingDataConfigurationProperty as Exports
import Stratosphere.ResourceProperties
data LineSeriesAxisDisplayOptionsProperty
  = LineSeriesAxisDisplayOptionsProperty {axisOptions :: (Prelude.Maybe AxisDisplayOptionsProperty),
                                          missingDataConfigurations :: (Prelude.Maybe [MissingDataConfigurationProperty])}
mkLineSeriesAxisDisplayOptionsProperty ::
  LineSeriesAxisDisplayOptionsProperty
mkLineSeriesAxisDisplayOptionsProperty
  = LineSeriesAxisDisplayOptionsProperty
      {axisOptions = Prelude.Nothing,
       missingDataConfigurations = Prelude.Nothing}
instance ToResourceProperties LineSeriesAxisDisplayOptionsProperty where
  toResourceProperties LineSeriesAxisDisplayOptionsProperty {..}
    = ResourceProperties
        {awsType = "AWS::QuickSight::Analysis.LineSeriesAxisDisplayOptions",
         supportsTags = Prelude.False,
         properties = Prelude.fromList
                        (Prelude.catMaybes
                           [(JSON..=) "AxisOptions" Prelude.<$> axisOptions,
                            (JSON..=) "MissingDataConfigurations"
                              Prelude.<$> missingDataConfigurations])}
instance JSON.ToJSON LineSeriesAxisDisplayOptionsProperty where
  toJSON LineSeriesAxisDisplayOptionsProperty {..}
    = JSON.object
        (Prelude.fromList
           (Prelude.catMaybes
              [(JSON..=) "AxisOptions" Prelude.<$> axisOptions,
               (JSON..=) "MissingDataConfigurations"
                 Prelude.<$> missingDataConfigurations]))
instance Property "AxisOptions" LineSeriesAxisDisplayOptionsProperty where
  type PropertyType "AxisOptions" LineSeriesAxisDisplayOptionsProperty = AxisDisplayOptionsProperty
  set newValue LineSeriesAxisDisplayOptionsProperty {..}
    = LineSeriesAxisDisplayOptionsProperty
        {axisOptions = Prelude.pure newValue, ..}
instance Property "MissingDataConfigurations" LineSeriesAxisDisplayOptionsProperty where
  type PropertyType "MissingDataConfigurations" LineSeriesAxisDisplayOptionsProperty = [MissingDataConfigurationProperty]
  set newValue LineSeriesAxisDisplayOptionsProperty {..}
    = LineSeriesAxisDisplayOptionsProperty
        {missingDataConfigurations = Prelude.pure newValue, ..}