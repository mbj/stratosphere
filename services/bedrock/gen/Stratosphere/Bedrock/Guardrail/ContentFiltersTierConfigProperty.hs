module Stratosphere.Bedrock.Guardrail.ContentFiltersTierConfigProperty (
        ContentFiltersTierConfigProperty(..),
        mkContentFiltersTierConfigProperty
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import Stratosphere.ResourceProperties
import Stratosphere.Value
data ContentFiltersTierConfigProperty
  = -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-bedrock-guardrail-contentfilterstierconfig.html>
    ContentFiltersTierConfigProperty {haddock_workaround_ :: (),
                                      -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-bedrock-guardrail-contentfilterstierconfig.html#cfn-bedrock-guardrail-contentfilterstierconfig-tiername>
                                      tierName :: (Value Prelude.Text)}
  deriving stock (Prelude.Eq, Prelude.Show)
mkContentFiltersTierConfigProperty ::
  Value Prelude.Text -> ContentFiltersTierConfigProperty
mkContentFiltersTierConfigProperty tierName
  = ContentFiltersTierConfigProperty
      {haddock_workaround_ = (), tierName = tierName}
instance ToResourceProperties ContentFiltersTierConfigProperty where
  toResourceProperties ContentFiltersTierConfigProperty {..}
    = ResourceProperties
        {awsType = "AWS::Bedrock::Guardrail.ContentFiltersTierConfig",
         supportsTags = Prelude.False,
         properties = ["TierName" JSON..= tierName]}
instance JSON.ToJSON ContentFiltersTierConfigProperty where
  toJSON ContentFiltersTierConfigProperty {..}
    = JSON.object ["TierName" JSON..= tierName]
instance Property "TierName" ContentFiltersTierConfigProperty where
  type PropertyType "TierName" ContentFiltersTierConfigProperty = Value Prelude.Text
  set newValue ContentFiltersTierConfigProperty {..}
    = ContentFiltersTierConfigProperty {tierName = newValue, ..}