module Stratosphere.Omics.AnnotationStore.ReferenceItemProperty (
        ReferenceItemProperty(..), mkReferenceItemProperty
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import Stratosphere.ResourceProperties
import Stratosphere.Value
data ReferenceItemProperty
  = -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-omics-annotationstore-referenceitem.html>
    ReferenceItemProperty {haddock_workaround_ :: (),
                           -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-omics-annotationstore-referenceitem.html#cfn-omics-annotationstore-referenceitem-referencearn>
                           referenceArn :: (Value Prelude.Text)}
  deriving stock (Prelude.Eq, Prelude.Show)
mkReferenceItemProperty ::
  Value Prelude.Text -> ReferenceItemProperty
mkReferenceItemProperty referenceArn
  = ReferenceItemProperty
      {haddock_workaround_ = (), referenceArn = referenceArn}
instance ToResourceProperties ReferenceItemProperty where
  toResourceProperties ReferenceItemProperty {..}
    = ResourceProperties
        {awsType = "AWS::Omics::AnnotationStore.ReferenceItem",
         supportsTags = Prelude.False,
         properties = ["ReferenceArn" JSON..= referenceArn]}
instance JSON.ToJSON ReferenceItemProperty where
  toJSON ReferenceItemProperty {..}
    = JSON.object ["ReferenceArn" JSON..= referenceArn]
instance Property "ReferenceArn" ReferenceItemProperty where
  type PropertyType "ReferenceArn" ReferenceItemProperty = Value Prelude.Text
  set newValue ReferenceItemProperty {..}
    = ReferenceItemProperty {referenceArn = newValue, ..}