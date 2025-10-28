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
  = -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-iotanalytics-datastore-fileformatconfiguration.html>
    FileFormatConfigurationProperty {haddock_workaround_ :: (),
                                     -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-iotanalytics-datastore-fileformatconfiguration.html#cfn-iotanalytics-datastore-fileformatconfiguration-jsonconfiguration>
                                     jsonConfiguration :: (Prelude.Maybe JSON.Object),
                                     -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-iotanalytics-datastore-fileformatconfiguration.html#cfn-iotanalytics-datastore-fileformatconfiguration-parquetconfiguration>
                                     parquetConfiguration :: (Prelude.Maybe ParquetConfigurationProperty)}
  deriving stock (Prelude.Eq, Prelude.Show)
mkFileFormatConfigurationProperty ::
  FileFormatConfigurationProperty
mkFileFormatConfigurationProperty
  = FileFormatConfigurationProperty
      {haddock_workaround_ = (), jsonConfiguration = Prelude.Nothing,
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