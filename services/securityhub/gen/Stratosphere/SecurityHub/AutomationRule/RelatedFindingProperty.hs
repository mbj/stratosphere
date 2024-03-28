module Stratosphere.SecurityHub.AutomationRule.RelatedFindingProperty (
        RelatedFindingProperty(..), mkRelatedFindingProperty
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import Stratosphere.ResourceProperties
import Stratosphere.Value
data RelatedFindingProperty
  = RelatedFindingProperty {id :: JSON.Object,
                            productArn :: (Value Prelude.Text)}
  deriving stock (Prelude.Eq, Prelude.Show)
mkRelatedFindingProperty ::
  JSON.Object -> Value Prelude.Text -> RelatedFindingProperty
mkRelatedFindingProperty id productArn
  = RelatedFindingProperty {id = id, productArn = productArn}
instance ToResourceProperties RelatedFindingProperty where
  toResourceProperties RelatedFindingProperty {..}
    = ResourceProperties
        {awsType = "AWS::SecurityHub::AutomationRule.RelatedFinding",
         supportsTags = Prelude.False,
         properties = ["Id" JSON..= id, "ProductArn" JSON..= productArn]}
instance JSON.ToJSON RelatedFindingProperty where
  toJSON RelatedFindingProperty {..}
    = JSON.object ["Id" JSON..= id, "ProductArn" JSON..= productArn]
instance Property "Id" RelatedFindingProperty where
  type PropertyType "Id" RelatedFindingProperty = JSON.Object
  set newValue RelatedFindingProperty {..}
    = RelatedFindingProperty {id = newValue, ..}
instance Property "ProductArn" RelatedFindingProperty where
  type PropertyType "ProductArn" RelatedFindingProperty = Value Prelude.Text
  set newValue RelatedFindingProperty {..}
    = RelatedFindingProperty {productArn = newValue, ..}