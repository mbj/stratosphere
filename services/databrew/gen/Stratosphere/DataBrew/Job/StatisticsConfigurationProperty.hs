module Stratosphere.DataBrew.Job.StatisticsConfigurationProperty (
        module Exports, StatisticsConfigurationProperty(..),
        mkStatisticsConfigurationProperty
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import {-# SOURCE #-} Stratosphere.DataBrew.Job.StatisticOverrideProperty as Exports
import Stratosphere.ResourceProperties
import Stratosphere.Value
data StatisticsConfigurationProperty
  = StatisticsConfigurationProperty {includedStatistics :: (Prelude.Maybe (ValueList Prelude.Text)),
                                     overrides :: (Prelude.Maybe [StatisticOverrideProperty])}
  deriving stock (Prelude.Eq, Prelude.Show)
mkStatisticsConfigurationProperty ::
  StatisticsConfigurationProperty
mkStatisticsConfigurationProperty
  = StatisticsConfigurationProperty
      {includedStatistics = Prelude.Nothing, overrides = Prelude.Nothing}
instance ToResourceProperties StatisticsConfigurationProperty where
  toResourceProperties StatisticsConfigurationProperty {..}
    = ResourceProperties
        {awsType = "AWS::DataBrew::Job.StatisticsConfiguration",
         supportsTags = Prelude.False,
         properties = Prelude.fromList
                        (Prelude.catMaybes
                           [(JSON..=) "IncludedStatistics" Prelude.<$> includedStatistics,
                            (JSON..=) "Overrides" Prelude.<$> overrides])}
instance JSON.ToJSON StatisticsConfigurationProperty where
  toJSON StatisticsConfigurationProperty {..}
    = JSON.object
        (Prelude.fromList
           (Prelude.catMaybes
              [(JSON..=) "IncludedStatistics" Prelude.<$> includedStatistics,
               (JSON..=) "Overrides" Prelude.<$> overrides]))
instance Property "IncludedStatistics" StatisticsConfigurationProperty where
  type PropertyType "IncludedStatistics" StatisticsConfigurationProperty = ValueList Prelude.Text
  set newValue StatisticsConfigurationProperty {..}
    = StatisticsConfigurationProperty
        {includedStatistics = Prelude.pure newValue, ..}
instance Property "Overrides" StatisticsConfigurationProperty where
  type PropertyType "Overrides" StatisticsConfigurationProperty = [StatisticOverrideProperty]
  set newValue StatisticsConfigurationProperty {..}
    = StatisticsConfigurationProperty
        {overrides = Prelude.pure newValue, ..}