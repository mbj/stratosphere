module Stratosphere.Bedrock.Flow.FieldForRerankingProperty (
        FieldForRerankingProperty(..), mkFieldForRerankingProperty
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import Stratosphere.ResourceProperties
import Stratosphere.Value
data FieldForRerankingProperty
  = -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-bedrock-flow-fieldforreranking.html>
    FieldForRerankingProperty {haddock_workaround_ :: (),
                               -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-bedrock-flow-fieldforreranking.html#cfn-bedrock-flow-fieldforreranking-fieldname>
                               fieldName :: (Value Prelude.Text)}
  deriving stock (Prelude.Eq, Prelude.Show)
mkFieldForRerankingProperty ::
  Value Prelude.Text -> FieldForRerankingProperty
mkFieldForRerankingProperty fieldName
  = FieldForRerankingProperty
      {haddock_workaround_ = (), fieldName = fieldName}
instance ToResourceProperties FieldForRerankingProperty where
  toResourceProperties FieldForRerankingProperty {..}
    = ResourceProperties
        {awsType = "AWS::Bedrock::Flow.FieldForReranking",
         supportsTags = Prelude.False,
         properties = ["FieldName" JSON..= fieldName]}
instance JSON.ToJSON FieldForRerankingProperty where
  toJSON FieldForRerankingProperty {..}
    = JSON.object ["FieldName" JSON..= fieldName]
instance Property "FieldName" FieldForRerankingProperty where
  type PropertyType "FieldName" FieldForRerankingProperty = Value Prelude.Text
  set newValue FieldForRerankingProperty {..}
    = FieldForRerankingProperty {fieldName = newValue, ..}