module Stratosphere.Bedrock.Guardrail.PiiEntityConfigProperty (
        PiiEntityConfigProperty(..), mkPiiEntityConfigProperty
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import Stratosphere.ResourceProperties
import Stratosphere.Value
data PiiEntityConfigProperty
  = -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-bedrock-guardrail-piientityconfig.html>
    PiiEntityConfigProperty {haddock_workaround_ :: (),
                             -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-bedrock-guardrail-piientityconfig.html#cfn-bedrock-guardrail-piientityconfig-action>
                             action :: (Value Prelude.Text),
                             -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-bedrock-guardrail-piientityconfig.html#cfn-bedrock-guardrail-piientityconfig-inputaction>
                             inputAction :: (Prelude.Maybe (Value Prelude.Text)),
                             -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-bedrock-guardrail-piientityconfig.html#cfn-bedrock-guardrail-piientityconfig-inputenabled>
                             inputEnabled :: (Prelude.Maybe (Value Prelude.Bool)),
                             -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-bedrock-guardrail-piientityconfig.html#cfn-bedrock-guardrail-piientityconfig-outputaction>
                             outputAction :: (Prelude.Maybe (Value Prelude.Text)),
                             -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-bedrock-guardrail-piientityconfig.html#cfn-bedrock-guardrail-piientityconfig-outputenabled>
                             outputEnabled :: (Prelude.Maybe (Value Prelude.Bool)),
                             -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-bedrock-guardrail-piientityconfig.html#cfn-bedrock-guardrail-piientityconfig-type>
                             type' :: (Value Prelude.Text)}
  deriving stock (Prelude.Eq, Prelude.Show)
mkPiiEntityConfigProperty ::
  Value Prelude.Text -> Value Prelude.Text -> PiiEntityConfigProperty
mkPiiEntityConfigProperty action type'
  = PiiEntityConfigProperty
      {haddock_workaround_ = (), action = action, type' = type',
       inputAction = Prelude.Nothing, inputEnabled = Prelude.Nothing,
       outputAction = Prelude.Nothing, outputEnabled = Prelude.Nothing}
instance ToResourceProperties PiiEntityConfigProperty where
  toResourceProperties PiiEntityConfigProperty {..}
    = ResourceProperties
        {awsType = "AWS::Bedrock::Guardrail.PiiEntityConfig",
         supportsTags = Prelude.False,
         properties = Prelude.fromList
                        ((Prelude.<>)
                           ["Action" JSON..= action, "Type" JSON..= type']
                           (Prelude.catMaybes
                              [(JSON..=) "InputAction" Prelude.<$> inputAction,
                               (JSON..=) "InputEnabled" Prelude.<$> inputEnabled,
                               (JSON..=) "OutputAction" Prelude.<$> outputAction,
                               (JSON..=) "OutputEnabled" Prelude.<$> outputEnabled]))}
instance JSON.ToJSON PiiEntityConfigProperty where
  toJSON PiiEntityConfigProperty {..}
    = JSON.object
        (Prelude.fromList
           ((Prelude.<>)
              ["Action" JSON..= action, "Type" JSON..= type']
              (Prelude.catMaybes
                 [(JSON..=) "InputAction" Prelude.<$> inputAction,
                  (JSON..=) "InputEnabled" Prelude.<$> inputEnabled,
                  (JSON..=) "OutputAction" Prelude.<$> outputAction,
                  (JSON..=) "OutputEnabled" Prelude.<$> outputEnabled])))
instance Property "Action" PiiEntityConfigProperty where
  type PropertyType "Action" PiiEntityConfigProperty = Value Prelude.Text
  set newValue PiiEntityConfigProperty {..}
    = PiiEntityConfigProperty {action = newValue, ..}
instance Property "InputAction" PiiEntityConfigProperty where
  type PropertyType "InputAction" PiiEntityConfigProperty = Value Prelude.Text
  set newValue PiiEntityConfigProperty {..}
    = PiiEntityConfigProperty {inputAction = Prelude.pure newValue, ..}
instance Property "InputEnabled" PiiEntityConfigProperty where
  type PropertyType "InputEnabled" PiiEntityConfigProperty = Value Prelude.Bool
  set newValue PiiEntityConfigProperty {..}
    = PiiEntityConfigProperty
        {inputEnabled = Prelude.pure newValue, ..}
instance Property "OutputAction" PiiEntityConfigProperty where
  type PropertyType "OutputAction" PiiEntityConfigProperty = Value Prelude.Text
  set newValue PiiEntityConfigProperty {..}
    = PiiEntityConfigProperty
        {outputAction = Prelude.pure newValue, ..}
instance Property "OutputEnabled" PiiEntityConfigProperty where
  type PropertyType "OutputEnabled" PiiEntityConfigProperty = Value Prelude.Bool
  set newValue PiiEntityConfigProperty {..}
    = PiiEntityConfigProperty
        {outputEnabled = Prelude.pure newValue, ..}
instance Property "Type" PiiEntityConfigProperty where
  type PropertyType "Type" PiiEntityConfigProperty = Value Prelude.Text
  set newValue PiiEntityConfigProperty {..}
    = PiiEntityConfigProperty {type' = newValue, ..}