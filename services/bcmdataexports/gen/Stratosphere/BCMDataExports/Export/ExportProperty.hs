module Stratosphere.BCMDataExports.Export.ExportProperty (
        module Exports, ExportProperty(..), mkExportProperty
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import {-# SOURCE #-} Stratosphere.BCMDataExports.Export.DataQueryProperty as Exports
import {-# SOURCE #-} Stratosphere.BCMDataExports.Export.DestinationConfigurationsProperty as Exports
import {-# SOURCE #-} Stratosphere.BCMDataExports.Export.RefreshCadenceProperty as Exports
import Stratosphere.ResourceProperties
import Stratosphere.Value
data ExportProperty
  = -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-bcmdataexports-export-export.html>
    ExportProperty {haddock_workaround_ :: (),
                    -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-bcmdataexports-export-export.html#cfn-bcmdataexports-export-export-dataquery>
                    dataQuery :: DataQueryProperty,
                    -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-bcmdataexports-export-export.html#cfn-bcmdataexports-export-export-description>
                    description :: (Prelude.Maybe (Value Prelude.Text)),
                    -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-bcmdataexports-export-export.html#cfn-bcmdataexports-export-export-destinationconfigurations>
                    destinationConfigurations :: DestinationConfigurationsProperty,
                    -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-bcmdataexports-export-export.html#cfn-bcmdataexports-export-export-exportarn>
                    exportArn :: (Prelude.Maybe (Value Prelude.Text)),
                    -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-bcmdataexports-export-export.html#cfn-bcmdataexports-export-export-name>
                    name :: (Value Prelude.Text),
                    -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-bcmdataexports-export-export.html#cfn-bcmdataexports-export-export-refreshcadence>
                    refreshCadence :: RefreshCadenceProperty}
  deriving stock (Prelude.Eq, Prelude.Show)
mkExportProperty ::
  DataQueryProperty
  -> DestinationConfigurationsProperty
     -> Value Prelude.Text -> RefreshCadenceProperty -> ExportProperty
mkExportProperty
  dataQuery
  destinationConfigurations
  name
  refreshCadence
  = ExportProperty
      {haddock_workaround_ = (), dataQuery = dataQuery,
       destinationConfigurations = destinationConfigurations, name = name,
       refreshCadence = refreshCadence, description = Prelude.Nothing,
       exportArn = Prelude.Nothing}
instance ToResourceProperties ExportProperty where
  toResourceProperties ExportProperty {..}
    = ResourceProperties
        {awsType = "AWS::BCMDataExports::Export.Export",
         supportsTags = Prelude.False,
         properties = Prelude.fromList
                        ((Prelude.<>)
                           ["DataQuery" JSON..= dataQuery,
                            "DestinationConfigurations" JSON..= destinationConfigurations,
                            "Name" JSON..= name, "RefreshCadence" JSON..= refreshCadence]
                           (Prelude.catMaybes
                              [(JSON..=) "Description" Prelude.<$> description,
                               (JSON..=) "ExportArn" Prelude.<$> exportArn]))}
instance JSON.ToJSON ExportProperty where
  toJSON ExportProperty {..}
    = JSON.object
        (Prelude.fromList
           ((Prelude.<>)
              ["DataQuery" JSON..= dataQuery,
               "DestinationConfigurations" JSON..= destinationConfigurations,
               "Name" JSON..= name, "RefreshCadence" JSON..= refreshCadence]
              (Prelude.catMaybes
                 [(JSON..=) "Description" Prelude.<$> description,
                  (JSON..=) "ExportArn" Prelude.<$> exportArn])))
instance Property "DataQuery" ExportProperty where
  type PropertyType "DataQuery" ExportProperty = DataQueryProperty
  set newValue ExportProperty {..}
    = ExportProperty {dataQuery = newValue, ..}
instance Property "Description" ExportProperty where
  type PropertyType "Description" ExportProperty = Value Prelude.Text
  set newValue ExportProperty {..}
    = ExportProperty {description = Prelude.pure newValue, ..}
instance Property "DestinationConfigurations" ExportProperty where
  type PropertyType "DestinationConfigurations" ExportProperty = DestinationConfigurationsProperty
  set newValue ExportProperty {..}
    = ExportProperty {destinationConfigurations = newValue, ..}
instance Property "ExportArn" ExportProperty where
  type PropertyType "ExportArn" ExportProperty = Value Prelude.Text
  set newValue ExportProperty {..}
    = ExportProperty {exportArn = Prelude.pure newValue, ..}
instance Property "Name" ExportProperty where
  type PropertyType "Name" ExportProperty = Value Prelude.Text
  set newValue ExportProperty {..}
    = ExportProperty {name = newValue, ..}
instance Property "RefreshCadence" ExportProperty where
  type PropertyType "RefreshCadence" ExportProperty = RefreshCadenceProperty
  set newValue ExportProperty {..}
    = ExportProperty {refreshCadence = newValue, ..}