module Stratosphere.Batch.JobDefinition.EksMetadataProperty (
        EksMetadataProperty(..), mkEksMetadataProperty
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import Stratosphere.ResourceProperties
import Stratosphere.Value
data EksMetadataProperty
  = -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-batch-jobdefinition-eksmetadata.html>
    EksMetadataProperty {haddock_workaround_ :: (),
                         -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-batch-jobdefinition-eksmetadata.html#cfn-batch-jobdefinition-eksmetadata-annotations>
                         annotations :: (Prelude.Maybe (Prelude.Map Prelude.Text (Value Prelude.Text))),
                         -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-batch-jobdefinition-eksmetadata.html#cfn-batch-jobdefinition-eksmetadata-labels>
                         labels :: (Prelude.Maybe (Prelude.Map Prelude.Text (Value Prelude.Text))),
                         -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-batch-jobdefinition-eksmetadata.html#cfn-batch-jobdefinition-eksmetadata-namespace>
                         namespace :: (Prelude.Maybe (Value Prelude.Text))}
  deriving stock (Prelude.Eq, Prelude.Show)
mkEksMetadataProperty :: EksMetadataProperty
mkEksMetadataProperty
  = EksMetadataProperty
      {haddock_workaround_ = (), annotations = Prelude.Nothing,
       labels = Prelude.Nothing, namespace = Prelude.Nothing}
instance ToResourceProperties EksMetadataProperty where
  toResourceProperties EksMetadataProperty {..}
    = ResourceProperties
        {awsType = "AWS::Batch::JobDefinition.EksMetadata",
         supportsTags = Prelude.False,
         properties = Prelude.fromList
                        (Prelude.catMaybes
                           [(JSON..=) "Annotations" Prelude.<$> annotations,
                            (JSON..=) "Labels" Prelude.<$> labels,
                            (JSON..=) "Namespace" Prelude.<$> namespace])}
instance JSON.ToJSON EksMetadataProperty where
  toJSON EksMetadataProperty {..}
    = JSON.object
        (Prelude.fromList
           (Prelude.catMaybes
              [(JSON..=) "Annotations" Prelude.<$> annotations,
               (JSON..=) "Labels" Prelude.<$> labels,
               (JSON..=) "Namespace" Prelude.<$> namespace]))
instance Property "Annotations" EksMetadataProperty where
  type PropertyType "Annotations" EksMetadataProperty = Prelude.Map Prelude.Text (Value Prelude.Text)
  set newValue EksMetadataProperty {..}
    = EksMetadataProperty {annotations = Prelude.pure newValue, ..}
instance Property "Labels" EksMetadataProperty where
  type PropertyType "Labels" EksMetadataProperty = Prelude.Map Prelude.Text (Value Prelude.Text)
  set newValue EksMetadataProperty {..}
    = EksMetadataProperty {labels = Prelude.pure newValue, ..}
instance Property "Namespace" EksMetadataProperty where
  type PropertyType "Namespace" EksMetadataProperty = Value Prelude.Text
  set newValue EksMetadataProperty {..}
    = EksMetadataProperty {namespace = Prelude.pure newValue, ..}