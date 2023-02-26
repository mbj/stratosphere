module Stratosphere.Greengrass.ResourceDefinitionVersion.SecretsManagerSecretResourceDataProperty (
        SecretsManagerSecretResourceDataProperty(..),
        mkSecretsManagerSecretResourceDataProperty
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import Stratosphere.ResourceProperties
import Stratosphere.Value
data SecretsManagerSecretResourceDataProperty
  = SecretsManagerSecretResourceDataProperty {aRN :: (Value Prelude.Text),
                                              additionalStagingLabelsToDownload :: (Prelude.Maybe (ValueList Prelude.Text))}
mkSecretsManagerSecretResourceDataProperty ::
  Value Prelude.Text -> SecretsManagerSecretResourceDataProperty
mkSecretsManagerSecretResourceDataProperty aRN
  = SecretsManagerSecretResourceDataProperty
      {aRN = aRN, additionalStagingLabelsToDownload = Prelude.Nothing}
instance ToResourceProperties SecretsManagerSecretResourceDataProperty where
  toResourceProperties SecretsManagerSecretResourceDataProperty {..}
    = ResourceProperties
        {awsType = "AWS::Greengrass::ResourceDefinitionVersion.SecretsManagerSecretResourceData",
         properties = Prelude.fromList
                        ((Prelude.<>)
                           ["ARN" JSON..= aRN]
                           (Prelude.catMaybes
                              [(JSON..=) "AdditionalStagingLabelsToDownload"
                                 Prelude.<$> additionalStagingLabelsToDownload]))}
instance JSON.ToJSON SecretsManagerSecretResourceDataProperty where
  toJSON SecretsManagerSecretResourceDataProperty {..}
    = JSON.object
        (Prelude.fromList
           ((Prelude.<>)
              ["ARN" JSON..= aRN]
              (Prelude.catMaybes
                 [(JSON..=) "AdditionalStagingLabelsToDownload"
                    Prelude.<$> additionalStagingLabelsToDownload])))
instance Property "ARN" SecretsManagerSecretResourceDataProperty where
  type PropertyType "ARN" SecretsManagerSecretResourceDataProperty = Value Prelude.Text
  set newValue SecretsManagerSecretResourceDataProperty {..}
    = SecretsManagerSecretResourceDataProperty {aRN = newValue, ..}
instance Property "AdditionalStagingLabelsToDownload" SecretsManagerSecretResourceDataProperty where
  type PropertyType "AdditionalStagingLabelsToDownload" SecretsManagerSecretResourceDataProperty = ValueList Prelude.Text
  set newValue SecretsManagerSecretResourceDataProperty {..}
    = SecretsManagerSecretResourceDataProperty
        {additionalStagingLabelsToDownload = Prelude.pure newValue, ..}