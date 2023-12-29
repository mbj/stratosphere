module Stratosphere.DataBrew.Job.ProfileConfigurationProperty (
        module Exports, ProfileConfigurationProperty(..),
        mkProfileConfigurationProperty
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import {-# SOURCE #-} Stratosphere.DataBrew.Job.ColumnSelectorProperty as Exports
import {-# SOURCE #-} Stratosphere.DataBrew.Job.ColumnStatisticsConfigurationProperty as Exports
import {-# SOURCE #-} Stratosphere.DataBrew.Job.EntityDetectorConfigurationProperty as Exports
import {-# SOURCE #-} Stratosphere.DataBrew.Job.StatisticsConfigurationProperty as Exports
import Stratosphere.ResourceProperties
data ProfileConfigurationProperty
  = ProfileConfigurationProperty {columnStatisticsConfigurations :: (Prelude.Maybe [ColumnStatisticsConfigurationProperty]),
                                  datasetStatisticsConfiguration :: (Prelude.Maybe StatisticsConfigurationProperty),
                                  entityDetectorConfiguration :: (Prelude.Maybe EntityDetectorConfigurationProperty),
                                  profileColumns :: (Prelude.Maybe [ColumnSelectorProperty])}
  deriving stock (Prelude.Eq, Prelude.Show)
mkProfileConfigurationProperty :: ProfileConfigurationProperty
mkProfileConfigurationProperty
  = ProfileConfigurationProperty
      {columnStatisticsConfigurations = Prelude.Nothing,
       datasetStatisticsConfiguration = Prelude.Nothing,
       entityDetectorConfiguration = Prelude.Nothing,
       profileColumns = Prelude.Nothing}
instance ToResourceProperties ProfileConfigurationProperty where
  toResourceProperties ProfileConfigurationProperty {..}
    = ResourceProperties
        {awsType = "AWS::DataBrew::Job.ProfileConfiguration",
         supportsTags = Prelude.False,
         properties = Prelude.fromList
                        (Prelude.catMaybes
                           [(JSON..=) "ColumnStatisticsConfigurations"
                              Prelude.<$> columnStatisticsConfigurations,
                            (JSON..=) "DatasetStatisticsConfiguration"
                              Prelude.<$> datasetStatisticsConfiguration,
                            (JSON..=) "EntityDetectorConfiguration"
                              Prelude.<$> entityDetectorConfiguration,
                            (JSON..=) "ProfileColumns" Prelude.<$> profileColumns])}
instance JSON.ToJSON ProfileConfigurationProperty where
  toJSON ProfileConfigurationProperty {..}
    = JSON.object
        (Prelude.fromList
           (Prelude.catMaybes
              [(JSON..=) "ColumnStatisticsConfigurations"
                 Prelude.<$> columnStatisticsConfigurations,
               (JSON..=) "DatasetStatisticsConfiguration"
                 Prelude.<$> datasetStatisticsConfiguration,
               (JSON..=) "EntityDetectorConfiguration"
                 Prelude.<$> entityDetectorConfiguration,
               (JSON..=) "ProfileColumns" Prelude.<$> profileColumns]))
instance Property "ColumnStatisticsConfigurations" ProfileConfigurationProperty where
  type PropertyType "ColumnStatisticsConfigurations" ProfileConfigurationProperty = [ColumnStatisticsConfigurationProperty]
  set newValue ProfileConfigurationProperty {..}
    = ProfileConfigurationProperty
        {columnStatisticsConfigurations = Prelude.pure newValue, ..}
instance Property "DatasetStatisticsConfiguration" ProfileConfigurationProperty where
  type PropertyType "DatasetStatisticsConfiguration" ProfileConfigurationProperty = StatisticsConfigurationProperty
  set newValue ProfileConfigurationProperty {..}
    = ProfileConfigurationProperty
        {datasetStatisticsConfiguration = Prelude.pure newValue, ..}
instance Property "EntityDetectorConfiguration" ProfileConfigurationProperty where
  type PropertyType "EntityDetectorConfiguration" ProfileConfigurationProperty = EntityDetectorConfigurationProperty
  set newValue ProfileConfigurationProperty {..}
    = ProfileConfigurationProperty
        {entityDetectorConfiguration = Prelude.pure newValue, ..}
instance Property "ProfileColumns" ProfileConfigurationProperty where
  type PropertyType "ProfileColumns" ProfileConfigurationProperty = [ColumnSelectorProperty]
  set newValue ProfileConfigurationProperty {..}
    = ProfileConfigurationProperty
        {profileColumns = Prelude.pure newValue, ..}