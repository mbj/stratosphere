module Stratosphere.FSx.DataRepositoryAssociation (
        module Exports, DataRepositoryAssociation(..),
        mkDataRepositoryAssociation
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import {-# SOURCE #-} Stratosphere.FSx.DataRepositoryAssociation.S3Property as Exports
import Stratosphere.ResourceProperties
import Stratosphere.Tag
import Stratosphere.Value
data DataRepositoryAssociation
  = DataRepositoryAssociation {batchImportMetaDataOnCreate :: (Prelude.Maybe (Value Prelude.Bool)),
                               dataRepositoryPath :: (Value Prelude.Text),
                               fileSystemId :: (Value Prelude.Text),
                               fileSystemPath :: (Value Prelude.Text),
                               importedFileChunkSize :: (Prelude.Maybe (Value Prelude.Integer)),
                               s3 :: (Prelude.Maybe S3Property),
                               tags :: (Prelude.Maybe [Tag])}
mkDataRepositoryAssociation ::
  Value Prelude.Text
  -> Value Prelude.Text
     -> Value Prelude.Text -> DataRepositoryAssociation
mkDataRepositoryAssociation
  dataRepositoryPath
  fileSystemId
  fileSystemPath
  = DataRepositoryAssociation
      {dataRepositoryPath = dataRepositoryPath,
       fileSystemId = fileSystemId, fileSystemPath = fileSystemPath,
       batchImportMetaDataOnCreate = Prelude.Nothing,
       importedFileChunkSize = Prelude.Nothing, s3 = Prelude.Nothing,
       tags = Prelude.Nothing}
instance ToResourceProperties DataRepositoryAssociation where
  toResourceProperties DataRepositoryAssociation {..}
    = ResourceProperties
        {awsType = "AWS::FSx::DataRepositoryAssociation",
         supportsTags = Prelude.True,
         properties = Prelude.fromList
                        ((Prelude.<>)
                           ["DataRepositoryPath" JSON..= dataRepositoryPath,
                            "FileSystemId" JSON..= fileSystemId,
                            "FileSystemPath" JSON..= fileSystemPath]
                           (Prelude.catMaybes
                              [(JSON..=) "BatchImportMetaDataOnCreate"
                                 Prelude.<$> batchImportMetaDataOnCreate,
                               (JSON..=) "ImportedFileChunkSize"
                                 Prelude.<$> importedFileChunkSize,
                               (JSON..=) "S3" Prelude.<$> s3,
                               (JSON..=) "Tags" Prelude.<$> tags]))}
instance JSON.ToJSON DataRepositoryAssociation where
  toJSON DataRepositoryAssociation {..}
    = JSON.object
        (Prelude.fromList
           ((Prelude.<>)
              ["DataRepositoryPath" JSON..= dataRepositoryPath,
               "FileSystemId" JSON..= fileSystemId,
               "FileSystemPath" JSON..= fileSystemPath]
              (Prelude.catMaybes
                 [(JSON..=) "BatchImportMetaDataOnCreate"
                    Prelude.<$> batchImportMetaDataOnCreate,
                  (JSON..=) "ImportedFileChunkSize"
                    Prelude.<$> importedFileChunkSize,
                  (JSON..=) "S3" Prelude.<$> s3,
                  (JSON..=) "Tags" Prelude.<$> tags])))
instance Property "BatchImportMetaDataOnCreate" DataRepositoryAssociation where
  type PropertyType "BatchImportMetaDataOnCreate" DataRepositoryAssociation = Value Prelude.Bool
  set newValue DataRepositoryAssociation {..}
    = DataRepositoryAssociation
        {batchImportMetaDataOnCreate = Prelude.pure newValue, ..}
instance Property "DataRepositoryPath" DataRepositoryAssociation where
  type PropertyType "DataRepositoryPath" DataRepositoryAssociation = Value Prelude.Text
  set newValue DataRepositoryAssociation {..}
    = DataRepositoryAssociation {dataRepositoryPath = newValue, ..}
instance Property "FileSystemId" DataRepositoryAssociation where
  type PropertyType "FileSystemId" DataRepositoryAssociation = Value Prelude.Text
  set newValue DataRepositoryAssociation {..}
    = DataRepositoryAssociation {fileSystemId = newValue, ..}
instance Property "FileSystemPath" DataRepositoryAssociation where
  type PropertyType "FileSystemPath" DataRepositoryAssociation = Value Prelude.Text
  set newValue DataRepositoryAssociation {..}
    = DataRepositoryAssociation {fileSystemPath = newValue, ..}
instance Property "ImportedFileChunkSize" DataRepositoryAssociation where
  type PropertyType "ImportedFileChunkSize" DataRepositoryAssociation = Value Prelude.Integer
  set newValue DataRepositoryAssociation {..}
    = DataRepositoryAssociation
        {importedFileChunkSize = Prelude.pure newValue, ..}
instance Property "S3" DataRepositoryAssociation where
  type PropertyType "S3" DataRepositoryAssociation = S3Property
  set newValue DataRepositoryAssociation {..}
    = DataRepositoryAssociation {s3 = Prelude.pure newValue, ..}
instance Property "Tags" DataRepositoryAssociation where
  type PropertyType "Tags" DataRepositoryAssociation = [Tag]
  set newValue DataRepositoryAssociation {..}
    = DataRepositoryAssociation {tags = Prelude.pure newValue, ..}