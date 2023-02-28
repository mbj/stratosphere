module Stratosphere.IoTAnalytics.Datastore.FileFormatConfigurationProperty (
        module Exports, FileFormatConfigurationProperty(..),
        mkFileFormatConfigurationProperty
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import {-# SOURCE #-} Stratosphere.IoTAnalytics.Datastore.ParquetConfigurationProperty as Exports
import Stratosphere.ResourceProperties
data FileFormatConfigurationProperty
  = FileFormatConfigurationProperty {jsonConfiguration :: (Prelude.Maybe JSON.Object),
                                     parquetConfiguration :: (Prelude.Maybe ParquetConfigurationProperty)}
mkFileFormatConfigurationProperty ::
  FileFormatConfigurationProperty
mkFileFormatConfigurationProperty
  = FileFormatConfigurationProperty
      {jsonConfiguration = Prelude.Nothing,
       parquetConfiguration = Prelude.Nothing}
instance ToResourceProperties FileFormatConfigurationProperty where
  toResourceProperties FileFormatConfigurationProperty {..}
    = ResourceProperties
        {awsType = "AWS::IoTAnalytics::Datastore.FileFormatConfiguration",
         supportsTags = Prelude.False,
         properties = Prelude.fromList
                        (Prelude.catMaybes
                           [(JSON..=) "JsonConfiguration" Prelude.<$> jsonConfiguration,
                            (JSON..=) "ParquetConfiguration"
                              Prelude.<$> parquetConfiguration])}
instance JSON.ToJSON FileFormatConfigurationProperty where
  toJSON FileFormatConfigurationProperty {..}
    = JSON.object
        (Prelude.fromList
           (Prelude.catMaybes
              [(JSON..=) "JsonConfiguration" Prelude.<$> jsonConfiguration,
               (JSON..=) "ParquetConfiguration"
                 Prelude.<$> parquetConfiguration]))
instance Property "JsonConfiguration" FileFormatConfigurationProperty where
  type PropertyType "JsonConfiguration" FileFormatConfigurationProperty = JSON.Object
  set newValue FileFormatConfigurationProperty {..}
    = FileFormatConfigurationProperty
        {jsonConfiguration = Prelude.pure newValue, ..}
instance Property "ParquetConfiguration" FileFormatConfigurationProperty where
  type PropertyType "ParquetConfiguration" FileFormatConfigurationProperty = ParquetConfigurationProperty
  set newValue FileFormatConfigurationProperty {..}
    = FileFormatConfigurationProperty
        {parquetConfiguration = Prelude.pure newValue, ..}