module Stratosphere.Wisdom.AIGuardrail.GuardrailManagedWordsConfigProperty (
        GuardrailManagedWordsConfigProperty(..),
        mkGuardrailManagedWordsConfigProperty
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import Stratosphere.ResourceProperties
import Stratosphere.Value
data GuardrailManagedWordsConfigProperty
  = -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-wisdom-aiguardrail-guardrailmanagedwordsconfig.html>
    GuardrailManagedWordsConfigProperty {haddock_workaround_ :: (),
                                         -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-wisdom-aiguardrail-guardrailmanagedwordsconfig.html#cfn-wisdom-aiguardrail-guardrailmanagedwordsconfig-type>
                                         type' :: (Value Prelude.Text)}
  deriving stock (Prelude.Eq, Prelude.Show)
mkGuardrailManagedWordsConfigProperty ::
  Value Prelude.Text -> GuardrailManagedWordsConfigProperty
mkGuardrailManagedWordsConfigProperty type'
  = GuardrailManagedWordsConfigProperty
      {haddock_workaround_ = (), type' = type'}
instance ToResourceProperties GuardrailManagedWordsConfigProperty where
  toResourceProperties GuardrailManagedWordsConfigProperty {..}
    = ResourceProperties
        {awsType = "AWS::Wisdom::AIGuardrail.GuardrailManagedWordsConfig",
         supportsTags = Prelude.False, properties = ["Type" JSON..= type']}
instance JSON.ToJSON GuardrailManagedWordsConfigProperty where
  toJSON GuardrailManagedWordsConfigProperty {..}
    = JSON.object ["Type" JSON..= type']
instance Property "Type" GuardrailManagedWordsConfigProperty where
  type PropertyType "Type" GuardrailManagedWordsConfigProperty = Value Prelude.Text
  set newValue GuardrailManagedWordsConfigProperty {..}
    = GuardrailManagedWordsConfigProperty {type' = newValue, ..}