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
                                 -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-bedrock-guardrail-contentfilterconfig.html#cfn-bedrock-guardrail-contentfilterconfig-inputaction>
                                 inputAction :: (Prelude.Maybe (Value Prelude.Text)),
                                 -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-bedrock-guardrail-contentfilterconfig.html#cfn-bedrock-guardrail-contentfilterconfig-inputenabled>
                                 inputEnabled :: (Prelude.Maybe (Value Prelude.Bool)),
                                 -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-bedrock-guardrail-contentfilterconfig.html#cfn-bedrock-guardrail-contentfilterconfig-inputmodalities>
                                 inputModalities :: (Prelude.Maybe (ValueList Prelude.Text)),
                                 -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-bedrock-guardrail-contentfilterconfig.html#cfn-bedrock-guardrail-contentfilterconfig-inputstrength>
                                 inputStrength :: (Value Prelude.Text),
                                 -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-bedrock-guardrail-contentfilterconfig.html#cfn-bedrock-guardrail-contentfilterconfig-outputaction>
                                 outputAction :: (Prelude.Maybe (Value Prelude.Text)),
                                 -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-bedrock-guardrail-contentfilterconfig.html#cfn-bedrock-guardrail-contentfilterconfig-outputenabled>
                                 outputEnabled :: (Prelude.Maybe (Value Prelude.Bool)),
                                 -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-bedrock-guardrail-contentfilterconfig.html#cfn-bedrock-guardrail-contentfilterconfig-outputmodalities>
                                 outputModalities :: (Prelude.Maybe (ValueList Prelude.Text)),
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
       outputStrength = outputStrength, type' = type',
       inputAction = Prelude.Nothing, inputEnabled = Prelude.Nothing,
       inputModalities = Prelude.Nothing, outputAction = Prelude.Nothing,
       outputEnabled = Prelude.Nothing,
       outputModalities = Prelude.Nothing}
instance ToResourceProperties ContentFilterConfigProperty where
  toResourceProperties ContentFilterConfigProperty {..}
    = ResourceProperties
        {awsType = "AWS::Bedrock::Guardrail.ContentFilterConfig",
         supportsTags = Prelude.False,
         properties = Prelude.fromList
                        ((Prelude.<>)
                           ["InputStrength" JSON..= inputStrength,
                            "OutputStrength" JSON..= outputStrength, "Type" JSON..= type']
                           (Prelude.catMaybes
                              [(JSON..=) "InputAction" Prelude.<$> inputAction,
                               (JSON..=) "InputEnabled" Prelude.<$> inputEnabled,
                               (JSON..=) "InputModalities" Prelude.<$> inputModalities,
                               (JSON..=) "OutputAction" Prelude.<$> outputAction,
                               (JSON..=) "OutputEnabled" Prelude.<$> outputEnabled,
                               (JSON..=) "OutputModalities" Prelude.<$> outputModalities]))}
instance JSON.ToJSON ContentFilterConfigProperty where
  toJSON ContentFilterConfigProperty {..}
    = JSON.object
        (Prelude.fromList
           ((Prelude.<>)
              ["InputStrength" JSON..= inputStrength,
               "OutputStrength" JSON..= outputStrength, "Type" JSON..= type']
              (Prelude.catMaybes
                 [(JSON..=) "InputAction" Prelude.<$> inputAction,
                  (JSON..=) "InputEnabled" Prelude.<$> inputEnabled,
                  (JSON..=) "InputModalities" Prelude.<$> inputModalities,
                  (JSON..=) "OutputAction" Prelude.<$> outputAction,
                  (JSON..=) "OutputEnabled" Prelude.<$> outputEnabled,
                  (JSON..=) "OutputModalities" Prelude.<$> outputModalities])))
instance Property "InputAction" ContentFilterConfigProperty where
  type PropertyType "InputAction" ContentFilterConfigProperty = Value Prelude.Text
  set newValue ContentFilterConfigProperty {..}
    = ContentFilterConfigProperty
        {inputAction = Prelude.pure newValue, ..}
instance Property "InputEnabled" ContentFilterConfigProperty where
  type PropertyType "InputEnabled" ContentFilterConfigProperty = Value Prelude.Bool
  set newValue ContentFilterConfigProperty {..}
    = ContentFilterConfigProperty
        {inputEnabled = Prelude.pure newValue, ..}
instance Property "InputModalities" ContentFilterConfigProperty where
  type PropertyType "InputModalities" ContentFilterConfigProperty = ValueList Prelude.Text
  set newValue ContentFilterConfigProperty {..}
    = ContentFilterConfigProperty
        {inputModalities = Prelude.pure newValue, ..}
instance Property "InputStrength" ContentFilterConfigProperty where
  type PropertyType "InputStrength" ContentFilterConfigProperty = Value Prelude.Text
  set newValue ContentFilterConfigProperty {..}
    = ContentFilterConfigProperty {inputStrength = newValue, ..}
instance Property "OutputAction" ContentFilterConfigProperty where
  type PropertyType "OutputAction" ContentFilterConfigProperty = Value Prelude.Text
  set newValue ContentFilterConfigProperty {..}
    = ContentFilterConfigProperty
        {outputAction = Prelude.pure newValue, ..}
instance Property "OutputEnabled" ContentFilterConfigProperty where
  type PropertyType "OutputEnabled" ContentFilterConfigProperty = Value Prelude.Bool
  set newValue ContentFilterConfigProperty {..}
    = ContentFilterConfigProperty
        {outputEnabled = Prelude.pure newValue, ..}
instance Property "OutputModalities" ContentFilterConfigProperty where
  type PropertyType "OutputModalities" ContentFilterConfigProperty = ValueList Prelude.Text
  set newValue ContentFilterConfigProperty {..}
    = ContentFilterConfigProperty
        {outputModalities = Prelude.pure newValue, ..}
instance Property "OutputStrength" ContentFilterConfigProperty where
  type PropertyType "OutputStrength" ContentFilterConfigProperty = Value Prelude.Text
  set newValue ContentFilterConfigProperty {..}
    = ContentFilterConfigProperty {outputStrength = newValue, ..}
instance Property "Type" ContentFilterConfigProperty where
  type PropertyType "Type" ContentFilterConfigProperty = Value Prelude.Text
  set newValue ContentFilterConfigProperty {..}
    = ContentFilterConfigProperty {type' = newValue, ..}