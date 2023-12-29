module Stratosphere.S3.Bucket.StorageClassAnalysisProperty (
        module Exports, StorageClassAnalysisProperty(..),
        mkStorageClassAnalysisProperty
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import {-# SOURCE #-} Stratosphere.S3.Bucket.DataExportProperty as Exports
import Stratosphere.ResourceProperties
data StorageClassAnalysisProperty
  = StorageClassAnalysisProperty {dataExport :: (Prelude.Maybe DataExportProperty)}
  deriving stock (Prelude.Eq, Prelude.Show)
mkStorageClassAnalysisProperty :: StorageClassAnalysisProperty
mkStorageClassAnalysisProperty
  = StorageClassAnalysisProperty {dataExport = Prelude.Nothing}
instance ToResourceProperties StorageClassAnalysisProperty where
  toResourceProperties StorageClassAnalysisProperty {..}
    = ResourceProperties
        {awsType = "AWS::S3::Bucket.StorageClassAnalysis",
         supportsTags = Prelude.False,
         properties = Prelude.fromList
                        (Prelude.catMaybes
                           [(JSON..=) "DataExport" Prelude.<$> dataExport])}
instance JSON.ToJSON StorageClassAnalysisProperty where
  toJSON StorageClassAnalysisProperty {..}
    = JSON.object
        (Prelude.fromList
           (Prelude.catMaybes
              [(JSON..=) "DataExport" Prelude.<$> dataExport]))
instance Property "DataExport" StorageClassAnalysisProperty where
  type PropertyType "DataExport" StorageClassAnalysisProperty = DataExportProperty
  set newValue StorageClassAnalysisProperty {}
    = StorageClassAnalysisProperty
        {dataExport = Prelude.pure newValue, ..}