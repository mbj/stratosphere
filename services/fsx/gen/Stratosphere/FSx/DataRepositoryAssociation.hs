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
  = -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-fsx-datarepositoryassociation.html>
    DataRepositoryAssociation {haddock_workaround_ :: (),
                               -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-fsx-datarepositoryassociation.html#cfn-fsx-datarepositoryassociation-batchimportmetadataoncreate>
                               batchImportMetaDataOnCreate :: (Prelude.Maybe (Value Prelude.Bool)),
                               -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-fsx-datarepositoryassociation.html#cfn-fsx-datarepositoryassociation-datarepositorypath>
                               dataRepositoryPath :: (Value Prelude.Text),
                               -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-fsx-datarepositoryassociation.html#cfn-fsx-datarepositoryassociation-filesystemid>
                               fileSystemId :: (Value Prelude.Text),
                               -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-fsx-datarepositoryassociation.html#cfn-fsx-datarepositoryassociation-filesystempath>
                               fileSystemPath :: (Value Prelude.Text),
                               -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-fsx-datarepositoryassociation.html#cfn-fsx-datarepositoryassociation-importedfilechunksize>
                               importedFileChunkSize :: (Prelude.Maybe (Value Prelude.Integer)),
                               -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-fsx-datarepositoryassociation.html#cfn-fsx-datarepositoryassociation-s3>
                               s3 :: (Prelude.Maybe S3Property),
                               -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-fsx-datarepositoryassociation.html#cfn-fsx-datarepositoryassociation-tags>
                               tags :: (Prelude.Maybe [Tag])}
  deriving stock (Prelude.Eq, Prelude.Show)
mkDataRepositoryAssociation ::
  Value Prelude.Text
  -> Value Prelude.Text
     -> Value Prelude.Text -> DataRepositoryAssociation
mkDataRepositoryAssociation
  dataRepositoryPath
  fileSystemId
  fileSystemPath
  = DataRepositoryAssociation
      {haddock_workaround_ = (), dataRepositoryPath = dataRepositoryPath,
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