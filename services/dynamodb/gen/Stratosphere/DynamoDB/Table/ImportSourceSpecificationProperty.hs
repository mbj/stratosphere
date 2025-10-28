module Stratosphere.DynamoDB.Table.ImportSourceSpecificationProperty (
        module Exports, ImportSourceSpecificationProperty(..),
        mkImportSourceSpecificationProperty
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import {-# SOURCE #-} Stratosphere.DynamoDB.Table.InputFormatOptionsProperty as Exports
import {-# SOURCE #-} Stratosphere.DynamoDB.Table.S3BucketSourceProperty as Exports
import Stratosphere.ResourceProperties
import Stratosphere.Value
data ImportSourceSpecificationProperty
  = -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-dynamodb-table-importsourcespecification.html>
    ImportSourceSpecificationProperty {haddock_workaround_ :: (),
                                       -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-dynamodb-table-importsourcespecification.html#cfn-dynamodb-table-importsourcespecification-inputcompressiontype>
                                       inputCompressionType :: (Prelude.Maybe (Value Prelude.Text)),
                                       -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-dynamodb-table-importsourcespecification.html#cfn-dynamodb-table-importsourcespecification-inputformat>
                                       inputFormat :: (Value Prelude.Text),
                                       -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-dynamodb-table-importsourcespecification.html#cfn-dynamodb-table-importsourcespecification-inputformatoptions>
                                       inputFormatOptions :: (Prelude.Maybe InputFormatOptionsProperty),
                                       -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-dynamodb-table-importsourcespecification.html#cfn-dynamodb-table-importsourcespecification-s3bucketsource>
                                       s3BucketSource :: S3BucketSourceProperty}
  deriving stock (Prelude.Eq, Prelude.Show)
mkImportSourceSpecificationProperty ::
  Value Prelude.Text
  -> S3BucketSourceProperty -> ImportSourceSpecificationProperty
mkImportSourceSpecificationProperty inputFormat s3BucketSource
  = ImportSourceSpecificationProperty
      {haddock_workaround_ = (), inputFormat = inputFormat,
       s3BucketSource = s3BucketSource,
       inputCompressionType = Prelude.Nothing,
       inputFormatOptions = Prelude.Nothing}
instance ToResourceProperties ImportSourceSpecificationProperty where
  toResourceProperties ImportSourceSpecificationProperty {..}
    = ResourceProperties
        {awsType = "AWS::DynamoDB::Table.ImportSourceSpecification",
         supportsTags = Prelude.False,
         properties = Prelude.fromList
                        ((Prelude.<>)
                           ["InputFormat" JSON..= inputFormat,
                            "S3BucketSource" JSON..= s3BucketSource]
                           (Prelude.catMaybes
                              [(JSON..=) "InputCompressionType" Prelude.<$> inputCompressionType,
                               (JSON..=) "InputFormatOptions" Prelude.<$> inputFormatOptions]))}
instance JSON.ToJSON ImportSourceSpecificationProperty where
  toJSON ImportSourceSpecificationProperty {..}
    = JSON.object
        (Prelude.fromList
           ((Prelude.<>)
              ["InputFormat" JSON..= inputFormat,
               "S3BucketSource" JSON..= s3BucketSource]
              (Prelude.catMaybes
                 [(JSON..=) "InputCompressionType" Prelude.<$> inputCompressionType,
                  (JSON..=) "InputFormatOptions" Prelude.<$> inputFormatOptions])))
instance Property "InputCompressionType" ImportSourceSpecificationProperty where
  type PropertyType "InputCompressionType" ImportSourceSpecificationProperty = Value Prelude.Text
  set newValue ImportSourceSpecificationProperty {..}
    = ImportSourceSpecificationProperty
        {inputCompressionType = Prelude.pure newValue, ..}
instance Property "InputFormat" ImportSourceSpecificationProperty where
  type PropertyType "InputFormat" ImportSourceSpecificationProperty = Value Prelude.Text
  set newValue ImportSourceSpecificationProperty {..}
    = ImportSourceSpecificationProperty {inputFormat = newValue, ..}
instance Property "InputFormatOptions" ImportSourceSpecificationProperty where
  type PropertyType "InputFormatOptions" ImportSourceSpecificationProperty = InputFormatOptionsProperty
  set newValue ImportSourceSpecificationProperty {..}
    = ImportSourceSpecificationProperty
        {inputFormatOptions = Prelude.pure newValue, ..}
instance Property "S3BucketSource" ImportSourceSpecificationProperty where
  type PropertyType "S3BucketSource" ImportSourceSpecificationProperty = S3BucketSourceProperty
  set newValue ImportSourceSpecificationProperty {..}
    = ImportSourceSpecificationProperty {s3BucketSource = newValue, ..}