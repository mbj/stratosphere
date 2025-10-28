module Stratosphere.Omics.VariantStore.ReferenceItemProperty (
        ReferenceItemProperty(..), mkReferenceItemProperty
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import Stratosphere.ResourceProperties
import Stratosphere.Value
data ReferenceItemProperty
  = -- |See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-omics-variantstore-referenceitem.html>
    ReferenceItemProperty {-- |See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-omics-variantstore-referenceitem.html#cfn-omics-variantstore-referenceitem-referencearn>
                           referenceArn :: (Value Prelude.Text)}
  deriving stock (Prelude.Eq, Prelude.Show)
mkReferenceItemProperty ::
  Value Prelude.Text -> ReferenceItemProperty
mkReferenceItemProperty referenceArn
  = ReferenceItemProperty {referenceArn = referenceArn}
instance ToResourceProperties ReferenceItemProperty where
  toResourceProperties ReferenceItemProperty {..}
    = ResourceProperties
        {awsType = "AWS::Omics::VariantStore.ReferenceItem",
         supportsTags = Prelude.False,
         properties = ["ReferenceArn" JSON..= referenceArn]}
instance JSON.ToJSON ReferenceItemProperty where
  toJSON ReferenceItemProperty {..}
    = JSON.object ["ReferenceArn" JSON..= referenceArn]
instance Property "ReferenceArn" ReferenceItemProperty where
  type PropertyType "ReferenceArn" ReferenceItemProperty = Value Prelude.Text
  set newValue ReferenceItemProperty {}
    = ReferenceItemProperty {referenceArn = newValue, ..}