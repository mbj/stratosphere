module Stratosphere.DMS.Endpoint.DocDbSettingsProperty (
        DocDbSettingsProperty(..), mkDocDbSettingsProperty
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import Stratosphere.ResourceProperties
import Stratosphere.Value
data DocDbSettingsProperty
  = DocDbSettingsProperty {docsToInvestigate :: (Prelude.Maybe (Value Prelude.Integer)),
                           extractDocId :: (Prelude.Maybe (Value Prelude.Bool)),
                           nestingLevel :: (Prelude.Maybe (Value Prelude.Text)),
                           secretsManagerAccessRoleArn :: (Prelude.Maybe (Value Prelude.Text)),
                           secretsManagerSecretId :: (Prelude.Maybe (Value Prelude.Text))}
mkDocDbSettingsProperty :: DocDbSettingsProperty
mkDocDbSettingsProperty
  = DocDbSettingsProperty
      {docsToInvestigate = Prelude.Nothing,
       extractDocId = Prelude.Nothing, nestingLevel = Prelude.Nothing,
       secretsManagerAccessRoleArn = Prelude.Nothing,
       secretsManagerSecretId = Prelude.Nothing}
instance ToResourceProperties DocDbSettingsProperty where
  toResourceProperties DocDbSettingsProperty {..}
    = ResourceProperties
        {awsType = "AWS::DMS::Endpoint.DocDbSettings",
         supportsTags = Prelude.False,
         properties = Prelude.fromList
                        (Prelude.catMaybes
                           [(JSON..=) "DocsToInvestigate" Prelude.<$> docsToInvestigate,
                            (JSON..=) "ExtractDocId" Prelude.<$> extractDocId,
                            (JSON..=) "NestingLevel" Prelude.<$> nestingLevel,
                            (JSON..=) "SecretsManagerAccessRoleArn"
                              Prelude.<$> secretsManagerAccessRoleArn,
                            (JSON..=) "SecretsManagerSecretId"
                              Prelude.<$> secretsManagerSecretId])}
instance JSON.ToJSON DocDbSettingsProperty where
  toJSON DocDbSettingsProperty {..}
    = JSON.object
        (Prelude.fromList
           (Prelude.catMaybes
              [(JSON..=) "DocsToInvestigate" Prelude.<$> docsToInvestigate,
               (JSON..=) "ExtractDocId" Prelude.<$> extractDocId,
               (JSON..=) "NestingLevel" Prelude.<$> nestingLevel,
               (JSON..=) "SecretsManagerAccessRoleArn"
                 Prelude.<$> secretsManagerAccessRoleArn,
               (JSON..=) "SecretsManagerSecretId"
                 Prelude.<$> secretsManagerSecretId]))
instance Property "DocsToInvestigate" DocDbSettingsProperty where
  type PropertyType "DocsToInvestigate" DocDbSettingsProperty = Value Prelude.Integer
  set newValue DocDbSettingsProperty {..}
    = DocDbSettingsProperty
        {docsToInvestigate = Prelude.pure newValue, ..}
instance Property "ExtractDocId" DocDbSettingsProperty where
  type PropertyType "ExtractDocId" DocDbSettingsProperty = Value Prelude.Bool
  set newValue DocDbSettingsProperty {..}
    = DocDbSettingsProperty {extractDocId = Prelude.pure newValue, ..}
instance Property "NestingLevel" DocDbSettingsProperty where
  type PropertyType "NestingLevel" DocDbSettingsProperty = Value Prelude.Text
  set newValue DocDbSettingsProperty {..}
    = DocDbSettingsProperty {nestingLevel = Prelude.pure newValue, ..}
instance Property "SecretsManagerAccessRoleArn" DocDbSettingsProperty where
  type PropertyType "SecretsManagerAccessRoleArn" DocDbSettingsProperty = Value Prelude.Text
  set newValue DocDbSettingsProperty {..}
    = DocDbSettingsProperty
        {secretsManagerAccessRoleArn = Prelude.pure newValue, ..}
instance Property "SecretsManagerSecretId" DocDbSettingsProperty where
  type PropertyType "SecretsManagerSecretId" DocDbSettingsProperty = Value Prelude.Text
  set newValue DocDbSettingsProperty {..}
    = DocDbSettingsProperty
        {secretsManagerSecretId = Prelude.pure newValue, ..}