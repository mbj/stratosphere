module Stratosphere.Omics.AnnotationStore.TsvStoreOptionsProperty (
        TsvStoreOptionsProperty(..), mkTsvStoreOptionsProperty
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import Stratosphere.ResourceProperties
import Stratosphere.Value
data TsvStoreOptionsProperty
  = -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-omics-annotationstore-tsvstoreoptions.html>
    TsvStoreOptionsProperty {haddock_workaround_ :: (),
                             -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-omics-annotationstore-tsvstoreoptions.html#cfn-omics-annotationstore-tsvstoreoptions-annotationtype>
                             annotationType :: (Prelude.Maybe (Value Prelude.Text)),
                             -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-omics-annotationstore-tsvstoreoptions.html#cfn-omics-annotationstore-tsvstoreoptions-formattoheader>
                             formatToHeader :: (Prelude.Maybe (Prelude.Map Prelude.Text (Value Prelude.Text))),
                             -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-omics-annotationstore-tsvstoreoptions.html#cfn-omics-annotationstore-tsvstoreoptions-schema>
                             schema :: (Prelude.Maybe JSON.Object)}
  deriving stock (Prelude.Eq, Prelude.Show)
mkTsvStoreOptionsProperty :: TsvStoreOptionsProperty
mkTsvStoreOptionsProperty
  = TsvStoreOptionsProperty
      {haddock_workaround_ = (), annotationType = Prelude.Nothing,
       formatToHeader = Prelude.Nothing, schema = Prelude.Nothing}
instance ToResourceProperties TsvStoreOptionsProperty where
  toResourceProperties TsvStoreOptionsProperty {..}
    = ResourceProperties
        {awsType = "AWS::Omics::AnnotationStore.TsvStoreOptions",
         supportsTags = Prelude.False,
         properties = Prelude.fromList
                        (Prelude.catMaybes
                           [(JSON..=) "AnnotationType" Prelude.<$> annotationType,
                            (JSON..=) "FormatToHeader" Prelude.<$> formatToHeader,
                            (JSON..=) "Schema" Prelude.<$> schema])}
instance JSON.ToJSON TsvStoreOptionsProperty where
  toJSON TsvStoreOptionsProperty {..}
    = JSON.object
        (Prelude.fromList
           (Prelude.catMaybes
              [(JSON..=) "AnnotationType" Prelude.<$> annotationType,
               (JSON..=) "FormatToHeader" Prelude.<$> formatToHeader,
               (JSON..=) "Schema" Prelude.<$> schema]))
instance Property "AnnotationType" TsvStoreOptionsProperty where
  type PropertyType "AnnotationType" TsvStoreOptionsProperty = Value Prelude.Text
  set newValue TsvStoreOptionsProperty {..}
    = TsvStoreOptionsProperty
        {annotationType = Prelude.pure newValue, ..}
instance Property "FormatToHeader" TsvStoreOptionsProperty where
  type PropertyType "FormatToHeader" TsvStoreOptionsProperty = Prelude.Map Prelude.Text (Value Prelude.Text)
  set newValue TsvStoreOptionsProperty {..}
    = TsvStoreOptionsProperty
        {formatToHeader = Prelude.pure newValue, ..}
instance Property "Schema" TsvStoreOptionsProperty where
  type PropertyType "Schema" TsvStoreOptionsProperty = JSON.Object
  set newValue TsvStoreOptionsProperty {..}
    = TsvStoreOptionsProperty {schema = Prelude.pure newValue, ..}