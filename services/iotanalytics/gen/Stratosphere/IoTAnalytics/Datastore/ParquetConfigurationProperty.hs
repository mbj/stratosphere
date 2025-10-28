module Stratosphere.IoTAnalytics.Datastore.ParquetConfigurationProperty (
        module Exports, ParquetConfigurationProperty(..),
        mkParquetConfigurationProperty
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import {-# SOURCE #-} Stratosphere.IoTAnalytics.Datastore.SchemaDefinitionProperty as Exports
import Stratosphere.ResourceProperties
data ParquetConfigurationProperty
  = -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-iotanalytics-datastore-parquetconfiguration.html>
    ParquetConfigurationProperty {haddock_workaround_ :: (),
                                  -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-iotanalytics-datastore-parquetconfiguration.html#cfn-iotanalytics-datastore-parquetconfiguration-schemadefinition>
                                  schemaDefinition :: (Prelude.Maybe SchemaDefinitionProperty)}
  deriving stock (Prelude.Eq, Prelude.Show)
mkParquetConfigurationProperty :: ParquetConfigurationProperty
mkParquetConfigurationProperty
  = ParquetConfigurationProperty
      {haddock_workaround_ = (), schemaDefinition = Prelude.Nothing}
instance ToResourceProperties ParquetConfigurationProperty where
  toResourceProperties ParquetConfigurationProperty {..}
    = ResourceProperties
        {awsType = "AWS::IoTAnalytics::Datastore.ParquetConfiguration",
         supportsTags = Prelude.False,
         properties = Prelude.fromList
                        (Prelude.catMaybes
                           [(JSON..=) "SchemaDefinition" Prelude.<$> schemaDefinition])}
instance JSON.ToJSON ParquetConfigurationProperty where
  toJSON ParquetConfigurationProperty {..}
    = JSON.object
        (Prelude.fromList
           (Prelude.catMaybes
              [(JSON..=) "SchemaDefinition" Prelude.<$> schemaDefinition]))
instance Property "SchemaDefinition" ParquetConfigurationProperty where
  type PropertyType "SchemaDefinition" ParquetConfigurationProperty = SchemaDefinitionProperty
  set newValue ParquetConfigurationProperty {..}
    = ParquetConfigurationProperty
        {schemaDefinition = Prelude.pure newValue, ..}