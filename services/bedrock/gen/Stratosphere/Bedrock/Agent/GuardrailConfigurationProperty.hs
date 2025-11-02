module Stratosphere.Bedrock.Agent.GuardrailConfigurationProperty (
        GuardrailConfigurationProperty(..),
        mkGuardrailConfigurationProperty
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import Stratosphere.ResourceProperties
import Stratosphere.Value
data GuardrailConfigurationProperty
  = -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-bedrock-agent-guardrailconfiguration.html>
    GuardrailConfigurationProperty {haddock_workaround_ :: (),
                                    -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-bedrock-agent-guardrailconfiguration.html#cfn-bedrock-agent-guardrailconfiguration-guardrailidentifier>
                                    guardrailIdentifier :: (Prelude.Maybe (Value Prelude.Text)),
                                    -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-bedrock-agent-guardrailconfiguration.html#cfn-bedrock-agent-guardrailconfiguration-guardrailversion>
                                    guardrailVersion :: (Prelude.Maybe (Value Prelude.Text))}
  deriving stock (Prelude.Eq, Prelude.Show)
mkGuardrailConfigurationProperty :: GuardrailConfigurationProperty
mkGuardrailConfigurationProperty
  = GuardrailConfigurationProperty
      {haddock_workaround_ = (), guardrailIdentifier = Prelude.Nothing,
       guardrailVersion = Prelude.Nothing}
instance ToResourceProperties GuardrailConfigurationProperty where
  toResourceProperties GuardrailConfigurationProperty {..}
    = ResourceProperties
        {awsType = "AWS::Bedrock::Agent.GuardrailConfiguration",
         supportsTags = Prelude.False,
         properties = Prelude.fromList
                        (Prelude.catMaybes
                           [(JSON..=) "GuardrailIdentifier" Prelude.<$> guardrailIdentifier,
                            (JSON..=) "GuardrailVersion" Prelude.<$> guardrailVersion])}
instance JSON.ToJSON GuardrailConfigurationProperty where
  toJSON GuardrailConfigurationProperty {..}
    = JSON.object
        (Prelude.fromList
           (Prelude.catMaybes
              [(JSON..=) "GuardrailIdentifier" Prelude.<$> guardrailIdentifier,
               (JSON..=) "GuardrailVersion" Prelude.<$> guardrailVersion]))
instance Property "GuardrailIdentifier" GuardrailConfigurationProperty where
  type PropertyType "GuardrailIdentifier" GuardrailConfigurationProperty = Value Prelude.Text
  set newValue GuardrailConfigurationProperty {..}
    = GuardrailConfigurationProperty
        {guardrailIdentifier = Prelude.pure newValue, ..}
instance Property "GuardrailVersion" GuardrailConfigurationProperty where
  type PropertyType "GuardrailVersion" GuardrailConfigurationProperty = Value Prelude.Text
  set newValue GuardrailConfigurationProperty {..}
    = GuardrailConfigurationProperty
        {guardrailVersion = Prelude.pure newValue, ..}