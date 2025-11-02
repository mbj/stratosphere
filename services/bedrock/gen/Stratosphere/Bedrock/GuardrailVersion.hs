module Stratosphere.Bedrock.GuardrailVersion (
        GuardrailVersion(..), mkGuardrailVersion
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import Stratosphere.ResourceProperties
import Stratosphere.Value
data GuardrailVersion
  = -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-bedrock-guardrailversion.html>
    GuardrailVersion {haddock_workaround_ :: (),
                      -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-bedrock-guardrailversion.html#cfn-bedrock-guardrailversion-description>
                      description :: (Prelude.Maybe (Value Prelude.Text)),
                      -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-bedrock-guardrailversion.html#cfn-bedrock-guardrailversion-guardrailidentifier>
                      guardrailIdentifier :: (Value Prelude.Text)}
  deriving stock (Prelude.Eq, Prelude.Show)
mkGuardrailVersion :: Value Prelude.Text -> GuardrailVersion
mkGuardrailVersion guardrailIdentifier
  = GuardrailVersion
      {haddock_workaround_ = (),
       guardrailIdentifier = guardrailIdentifier,
       description = Prelude.Nothing}
instance ToResourceProperties GuardrailVersion where
  toResourceProperties GuardrailVersion {..}
    = ResourceProperties
        {awsType = "AWS::Bedrock::GuardrailVersion",
         supportsTags = Prelude.False,
         properties = Prelude.fromList
                        ((Prelude.<>)
                           ["GuardrailIdentifier" JSON..= guardrailIdentifier]
                           (Prelude.catMaybes
                              [(JSON..=) "Description" Prelude.<$> description]))}
instance JSON.ToJSON GuardrailVersion where
  toJSON GuardrailVersion {..}
    = JSON.object
        (Prelude.fromList
           ((Prelude.<>)
              ["GuardrailIdentifier" JSON..= guardrailIdentifier]
              (Prelude.catMaybes
                 [(JSON..=) "Description" Prelude.<$> description])))
instance Property "Description" GuardrailVersion where
  type PropertyType "Description" GuardrailVersion = Value Prelude.Text
  set newValue GuardrailVersion {..}
    = GuardrailVersion {description = Prelude.pure newValue, ..}
instance Property "GuardrailIdentifier" GuardrailVersion where
  type PropertyType "GuardrailIdentifier" GuardrailVersion = Value Prelude.Text
  set newValue GuardrailVersion {..}
    = GuardrailVersion {guardrailIdentifier = newValue, ..}