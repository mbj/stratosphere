module Stratosphere.Bedrock.Guardrail.ManagedWordsConfigProperty (
        ManagedWordsConfigProperty(..), mkManagedWordsConfigProperty
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import Stratosphere.ResourceProperties
import Stratosphere.Value
data ManagedWordsConfigProperty
  = -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-bedrock-guardrail-managedwordsconfig.html>
    ManagedWordsConfigProperty {haddock_workaround_ :: (),
                                -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-bedrock-guardrail-managedwordsconfig.html#cfn-bedrock-guardrail-managedwordsconfig-type>
                                type' :: (Value Prelude.Text)}
  deriving stock (Prelude.Eq, Prelude.Show)
mkManagedWordsConfigProperty ::
  Value Prelude.Text -> ManagedWordsConfigProperty
mkManagedWordsConfigProperty type'
  = ManagedWordsConfigProperty
      {haddock_workaround_ = (), type' = type'}
instance ToResourceProperties ManagedWordsConfigProperty where
  toResourceProperties ManagedWordsConfigProperty {..}
    = ResourceProperties
        {awsType = "AWS::Bedrock::Guardrail.ManagedWordsConfig",
         supportsTags = Prelude.False, properties = ["Type" JSON..= type']}
instance JSON.ToJSON ManagedWordsConfigProperty where
  toJSON ManagedWordsConfigProperty {..}
    = JSON.object ["Type" JSON..= type']
instance Property "Type" ManagedWordsConfigProperty where
  type PropertyType "Type" ManagedWordsConfigProperty = Value Prelude.Text
  set newValue ManagedWordsConfigProperty {..}
    = ManagedWordsConfigProperty {type' = newValue, ..}