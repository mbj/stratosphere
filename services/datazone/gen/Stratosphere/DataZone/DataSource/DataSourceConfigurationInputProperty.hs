module Stratosphere.DataZone.DataSource.DataSourceConfigurationInputProperty (
        module Exports, DataSourceConfigurationInputProperty(..),
        mkDataSourceConfigurationInputProperty
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import {-# SOURCE #-} Stratosphere.DataZone.DataSource.GlueRunConfigurationInputProperty as Exports
import {-# SOURCE #-} Stratosphere.DataZone.DataSource.RedshiftRunConfigurationInputProperty as Exports
import Stratosphere.ResourceProperties
data DataSourceConfigurationInputProperty
  = DataSourceConfigurationInputProperty {glueRunConfiguration :: (Prelude.Maybe GlueRunConfigurationInputProperty),
                                          redshiftRunConfiguration :: (Prelude.Maybe RedshiftRunConfigurationInputProperty)}
  deriving stock (Prelude.Eq, Prelude.Show)
mkDataSourceConfigurationInputProperty ::
  DataSourceConfigurationInputProperty
mkDataSourceConfigurationInputProperty
  = DataSourceConfigurationInputProperty
      {glueRunConfiguration = Prelude.Nothing,
       redshiftRunConfiguration = Prelude.Nothing}
instance ToResourceProperties DataSourceConfigurationInputProperty where
  toResourceProperties DataSourceConfigurationInputProperty {..}
    = ResourceProperties
        {awsType = "AWS::DataZone::DataSource.DataSourceConfigurationInput",
         supportsTags = Prelude.False,
         properties = Prelude.fromList
                        (Prelude.catMaybes
                           [(JSON..=) "GlueRunConfiguration" Prelude.<$> glueRunConfiguration,
                            (JSON..=) "RedshiftRunConfiguration"
                              Prelude.<$> redshiftRunConfiguration])}
instance JSON.ToJSON DataSourceConfigurationInputProperty where
  toJSON DataSourceConfigurationInputProperty {..}
    = JSON.object
        (Prelude.fromList
           (Prelude.catMaybes
              [(JSON..=) "GlueRunConfiguration" Prelude.<$> glueRunConfiguration,
               (JSON..=) "RedshiftRunConfiguration"
                 Prelude.<$> redshiftRunConfiguration]))
instance Property "GlueRunConfiguration" DataSourceConfigurationInputProperty where
  type PropertyType "GlueRunConfiguration" DataSourceConfigurationInputProperty = GlueRunConfigurationInputProperty
  set newValue DataSourceConfigurationInputProperty {..}
    = DataSourceConfigurationInputProperty
        {glueRunConfiguration = Prelude.pure newValue, ..}
instance Property "RedshiftRunConfiguration" DataSourceConfigurationInputProperty where
  type PropertyType "RedshiftRunConfiguration" DataSourceConfigurationInputProperty = RedshiftRunConfigurationInputProperty
  set newValue DataSourceConfigurationInputProperty {..}
    = DataSourceConfigurationInputProperty
        {redshiftRunConfiguration = Prelude.pure newValue, ..}