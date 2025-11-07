module Stratosphere.DataZone.DataSource.DataSourceConfigurationInputProperty (
        module Exports, DataSourceConfigurationInputProperty(..),
        mkDataSourceConfigurationInputProperty
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import {-# SOURCE #-} Stratosphere.DataZone.DataSource.GlueRunConfigurationInputProperty as Exports
import {-# SOURCE #-} Stratosphere.DataZone.DataSource.RedshiftRunConfigurationInputProperty as Exports
import {-# SOURCE #-} Stratosphere.DataZone.DataSource.SageMakerRunConfigurationInputProperty as Exports
import Stratosphere.ResourceProperties
data DataSourceConfigurationInputProperty
  = -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-datazone-datasource-datasourceconfigurationinput.html>
    DataSourceConfigurationInputProperty {haddock_workaround_ :: (),
                                          -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-datazone-datasource-datasourceconfigurationinput.html#cfn-datazone-datasource-datasourceconfigurationinput-gluerunconfiguration>
                                          glueRunConfiguration :: (Prelude.Maybe GlueRunConfigurationInputProperty),
                                          -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-datazone-datasource-datasourceconfigurationinput.html#cfn-datazone-datasource-datasourceconfigurationinput-redshiftrunconfiguration>
                                          redshiftRunConfiguration :: (Prelude.Maybe RedshiftRunConfigurationInputProperty),
                                          -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-datazone-datasource-datasourceconfigurationinput.html#cfn-datazone-datasource-datasourceconfigurationinput-sagemakerrunconfiguration>
                                          sageMakerRunConfiguration :: (Prelude.Maybe SageMakerRunConfigurationInputProperty)}
  deriving stock (Prelude.Eq, Prelude.Show)
mkDataSourceConfigurationInputProperty ::
  DataSourceConfigurationInputProperty
mkDataSourceConfigurationInputProperty
  = DataSourceConfigurationInputProperty
      {haddock_workaround_ = (), glueRunConfiguration = Prelude.Nothing,
       redshiftRunConfiguration = Prelude.Nothing,
       sageMakerRunConfiguration = Prelude.Nothing}
instance ToResourceProperties DataSourceConfigurationInputProperty where
  toResourceProperties DataSourceConfigurationInputProperty {..}
    = ResourceProperties
        {awsType = "AWS::DataZone::DataSource.DataSourceConfigurationInput",
         supportsTags = Prelude.False,
         properties = Prelude.fromList
                        (Prelude.catMaybes
                           [(JSON..=) "GlueRunConfiguration" Prelude.<$> glueRunConfiguration,
                            (JSON..=) "RedshiftRunConfiguration"
                              Prelude.<$> redshiftRunConfiguration,
                            (JSON..=) "SageMakerRunConfiguration"
                              Prelude.<$> sageMakerRunConfiguration])}
instance JSON.ToJSON DataSourceConfigurationInputProperty where
  toJSON DataSourceConfigurationInputProperty {..}
    = JSON.object
        (Prelude.fromList
           (Prelude.catMaybes
              [(JSON..=) "GlueRunConfiguration" Prelude.<$> glueRunConfiguration,
               (JSON..=) "RedshiftRunConfiguration"
                 Prelude.<$> redshiftRunConfiguration,
               (JSON..=) "SageMakerRunConfiguration"
                 Prelude.<$> sageMakerRunConfiguration]))
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
instance Property "SageMakerRunConfiguration" DataSourceConfigurationInputProperty where
  type PropertyType "SageMakerRunConfiguration" DataSourceConfigurationInputProperty = SageMakerRunConfigurationInputProperty
  set newValue DataSourceConfigurationInputProperty {..}
    = DataSourceConfigurationInputProperty
        {sageMakerRunConfiguration = Prelude.pure newValue, ..}