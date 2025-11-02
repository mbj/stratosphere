module Stratosphere.Bedrock.Guardrail.ContentFilterConfigProperty (
        ContentFilterConfigProperty(..), mkContentFilterConfigProperty
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import Stratosphere.ResourceProperties
import Stratosphere.Value
data ContentFilterConfigProperty
  = -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-bedrock-guardrail-contentfilterconfig.html>
    ContentFilterConfigProperty {haddock_workaround_ :: (),
                                 -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-bedrock-guardrail-contentfilterconfig.html#cfn-bedrock-guardrail-contentfilterconfig-inputstrength>
                                 inputStrength :: (Value Prelude.Text),
                                 -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-bedrock-guardrail-contentfilterconfig.html#cfn-bedrock-guardrail-contentfilterconfig-outputstrength>
                                 outputStrength :: (Value Prelude.Text),
                                 -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-bedrock-guardrail-contentfilterconfig.html#cfn-bedrock-guardrail-contentfilterconfig-type>
                                 type' :: (Value Prelude.Text)}
  deriving stock (Prelude.Eq, Prelude.Show)
mkContentFilterConfigProperty ::
  Value Prelude.Text
  -> Value Prelude.Text
     -> Value Prelude.Text -> ContentFilterConfigProperty
mkContentFilterConfigProperty inputStrength outputStrength type'
  = ContentFilterConfigProperty
      {haddock_workaround_ = (), inputStrength = inputStrength,
       outputStrength = outputStrength, type' = type'}
instance ToResourceProperties ContentFilterConfigProperty where
  toResourceProperties ContentFilterConfigProperty {..}
    = ResourceProperties
        {awsType = "AWS::Bedrock::Guardrail.ContentFilterConfig",
         supportsTags = Prelude.False,
         properties = ["InputStrength" JSON..= inputStrength,
                       "OutputStrength" JSON..= outputStrength, "Type" JSON..= type']}
instance JSON.ToJSON ContentFilterConfigProperty where
  toJSON ContentFilterConfigProperty {..}
    = JSON.object
        ["InputStrength" JSON..= inputStrength,
         "OutputStrength" JSON..= outputStrength, "Type" JSON..= type']
instance Property "InputStrength" ContentFilterConfigProperty where
  type PropertyType "InputStrength" ContentFilterConfigProperty = Value Prelude.Text
  set newValue ContentFilterConfigProperty {..}
    = ContentFilterConfigProperty {inputStrength = newValue, ..}
instance Property "OutputStrength" ContentFilterConfigProperty where
  type PropertyType "OutputStrength" ContentFilterConfigProperty = Value Prelude.Text
  set newValue ContentFilterConfigProperty {..}
    = ContentFilterConfigProperty {outputStrength = newValue, ..}
instance Property "Type" ContentFilterConfigProperty where
  type PropertyType "Type" ContentFilterConfigProperty = Value Prelude.Text
  set newValue ContentFilterConfigProperty {..}
    = ContentFilterConfigProperty {type' = newValue, ..}