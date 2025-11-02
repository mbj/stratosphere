module Stratosphere.B2BI.Transformer.SampleDocumentsProperty (
        module Exports, SampleDocumentsProperty(..),
        mkSampleDocumentsProperty
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import {-# SOURCE #-} Stratosphere.B2BI.Transformer.SampleDocumentKeysProperty as Exports
import Stratosphere.ResourceProperties
import Stratosphere.Value
data SampleDocumentsProperty
  = -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-b2bi-transformer-sampledocuments.html>
    SampleDocumentsProperty {haddock_workaround_ :: (),
                             -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-b2bi-transformer-sampledocuments.html#cfn-b2bi-transformer-sampledocuments-bucketname>
                             bucketName :: (Value Prelude.Text),
                             -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-b2bi-transformer-sampledocuments.html#cfn-b2bi-transformer-sampledocuments-keys>
                             keys :: [SampleDocumentKeysProperty]}
  deriving stock (Prelude.Eq, Prelude.Show)
mkSampleDocumentsProperty ::
  Value Prelude.Text
  -> [SampleDocumentKeysProperty] -> SampleDocumentsProperty
mkSampleDocumentsProperty bucketName keys
  = SampleDocumentsProperty
      {haddock_workaround_ = (), bucketName = bucketName, keys = keys}
instance ToResourceProperties SampleDocumentsProperty where
  toResourceProperties SampleDocumentsProperty {..}
    = ResourceProperties
        {awsType = "AWS::B2BI::Transformer.SampleDocuments",
         supportsTags = Prelude.False,
         properties = ["BucketName" JSON..= bucketName,
                       "Keys" JSON..= keys]}
instance JSON.ToJSON SampleDocumentsProperty where
  toJSON SampleDocumentsProperty {..}
    = JSON.object
        ["BucketName" JSON..= bucketName, "Keys" JSON..= keys]
instance Property "BucketName" SampleDocumentsProperty where
  type PropertyType "BucketName" SampleDocumentsProperty = Value Prelude.Text
  set newValue SampleDocumentsProperty {..}
    = SampleDocumentsProperty {bucketName = newValue, ..}
instance Property "Keys" SampleDocumentsProperty where
  type PropertyType "Keys" SampleDocumentsProperty = [SampleDocumentKeysProperty]
  set newValue SampleDocumentsProperty {..}
    = SampleDocumentsProperty {keys = newValue, ..}