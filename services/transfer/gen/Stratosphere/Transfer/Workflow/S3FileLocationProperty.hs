module Stratosphere.Transfer.Workflow.S3FileLocationProperty (
        module Exports, S3FileLocationProperty(..),
        mkS3FileLocationProperty
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import {-# SOURCE #-} Stratosphere.Transfer.Workflow.S3InputFileLocationProperty as Exports
import Stratosphere.ResourceProperties
data S3FileLocationProperty
  = -- |See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-transfer-workflow-s3filelocation.html>
    S3FileLocationProperty {-- |See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-transfer-workflow-s3filelocation.html#cfn-transfer-workflow-s3filelocation-s3filelocation>
                            s3FileLocation :: (Prelude.Maybe S3InputFileLocationProperty)}
  deriving stock (Prelude.Eq, Prelude.Show)
mkS3FileLocationProperty :: S3FileLocationProperty
mkS3FileLocationProperty
  = S3FileLocationProperty {s3FileLocation = Prelude.Nothing}
instance ToResourceProperties S3FileLocationProperty where
  toResourceProperties S3FileLocationProperty {..}
    = ResourceProperties
        {awsType = "AWS::Transfer::Workflow.S3FileLocation",
         supportsTags = Prelude.False,
         properties = Prelude.fromList
                        (Prelude.catMaybes
                           [(JSON..=) "S3FileLocation" Prelude.<$> s3FileLocation])}
instance JSON.ToJSON S3FileLocationProperty where
  toJSON S3FileLocationProperty {..}
    = JSON.object
        (Prelude.fromList
           (Prelude.catMaybes
              [(JSON..=) "S3FileLocation" Prelude.<$> s3FileLocation]))
instance Property "S3FileLocation" S3FileLocationProperty where
  type PropertyType "S3FileLocation" S3FileLocationProperty = S3InputFileLocationProperty
  set newValue S3FileLocationProperty {}
    = S3FileLocationProperty
        {s3FileLocation = Prelude.pure newValue, ..}