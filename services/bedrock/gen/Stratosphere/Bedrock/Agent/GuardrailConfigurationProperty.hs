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
  = GuardrailConfigurationProperty {guardrailIdentifier :: (Prelude.Maybe (Value Prelude.Text)),
                                    guardrailVersion :: (Prelude.Maybe (Value Prelude.Text))}
  deriving stock (Prelude.Eq, Prelude.Show)
mkGuardrailConfigurationProperty :: GuardrailConfigurationProperty
mkGuardrailConfigurationProperty
  = GuardrailConfigurationProperty
      {guardrailIdentifier = Prelude.Nothing,
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