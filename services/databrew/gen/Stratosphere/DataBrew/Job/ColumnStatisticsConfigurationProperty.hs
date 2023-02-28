module Stratosphere.DataBrew.Job.ColumnStatisticsConfigurationProperty (
        module Exports, ColumnStatisticsConfigurationProperty(..),
        mkColumnStatisticsConfigurationProperty
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import {-# SOURCE #-} Stratosphere.DataBrew.Job.ColumnSelectorProperty as Exports
import {-# SOURCE #-} Stratosphere.DataBrew.Job.StatisticsConfigurationProperty as Exports
import Stratosphere.ResourceProperties
data ColumnStatisticsConfigurationProperty
  = ColumnStatisticsConfigurationProperty {selectors :: (Prelude.Maybe [ColumnSelectorProperty]),
                                           statistics :: StatisticsConfigurationProperty}
mkColumnStatisticsConfigurationProperty ::
  StatisticsConfigurationProperty
  -> ColumnStatisticsConfigurationProperty
mkColumnStatisticsConfigurationProperty statistics
  = ColumnStatisticsConfigurationProperty
      {statistics = statistics, selectors = Prelude.Nothing}
instance ToResourceProperties ColumnStatisticsConfigurationProperty where
  toResourceProperties ColumnStatisticsConfigurationProperty {..}
    = ResourceProperties
        {awsType = "AWS::DataBrew::Job.ColumnStatisticsConfiguration",
         supportsTags = Prelude.False,
         properties = Prelude.fromList
                        ((Prelude.<>)
                           ["Statistics" JSON..= statistics]
                           (Prelude.catMaybes [(JSON..=) "Selectors" Prelude.<$> selectors]))}
instance JSON.ToJSON ColumnStatisticsConfigurationProperty where
  toJSON ColumnStatisticsConfigurationProperty {..}
    = JSON.object
        (Prelude.fromList
           ((Prelude.<>)
              ["Statistics" JSON..= statistics]
              (Prelude.catMaybes [(JSON..=) "Selectors" Prelude.<$> selectors])))
instance Property "Selectors" ColumnStatisticsConfigurationProperty where
  type PropertyType "Selectors" ColumnStatisticsConfigurationProperty = [ColumnSelectorProperty]
  set newValue ColumnStatisticsConfigurationProperty {..}
    = ColumnStatisticsConfigurationProperty
        {selectors = Prelude.pure newValue, ..}
instance Property "Statistics" ColumnStatisticsConfigurationProperty where
  type PropertyType "Statistics" ColumnStatisticsConfigurationProperty = StatisticsConfigurationProperty
  set newValue ColumnStatisticsConfigurationProperty {..}
    = ColumnStatisticsConfigurationProperty {statistics = newValue, ..}