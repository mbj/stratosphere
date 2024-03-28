module Stratosphere.MediaTailor.SourceLocation.SecretsManagerAccessTokenConfigurationProperty (
        SecretsManagerAccessTokenConfigurationProperty(..),
        mkSecretsManagerAccessTokenConfigurationProperty
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import Stratosphere.ResourceProperties
import Stratosphere.Value
data SecretsManagerAccessTokenConfigurationProperty
  = SecretsManagerAccessTokenConfigurationProperty {headerName :: (Prelude.Maybe (Value Prelude.Text)),
                                                    secretArn :: (Prelude.Maybe (Value Prelude.Text)),
                                                    secretStringKey :: (Prelude.Maybe (Value Prelude.Text))}
  deriving stock (Prelude.Eq, Prelude.Show)
mkSecretsManagerAccessTokenConfigurationProperty ::
  SecretsManagerAccessTokenConfigurationProperty
mkSecretsManagerAccessTokenConfigurationProperty
  = SecretsManagerAccessTokenConfigurationProperty
      {headerName = Prelude.Nothing, secretArn = Prelude.Nothing,
       secretStringKey = Prelude.Nothing}
instance ToResourceProperties SecretsManagerAccessTokenConfigurationProperty where
  toResourceProperties
    SecretsManagerAccessTokenConfigurationProperty {..}
    = ResourceProperties
        {awsType = "AWS::MediaTailor::SourceLocation.SecretsManagerAccessTokenConfiguration",
         supportsTags = Prelude.False,
         properties = Prelude.fromList
                        (Prelude.catMaybes
                           [(JSON..=) "HeaderName" Prelude.<$> headerName,
                            (JSON..=) "SecretArn" Prelude.<$> secretArn,
                            (JSON..=) "SecretStringKey" Prelude.<$> secretStringKey])}
instance JSON.ToJSON SecretsManagerAccessTokenConfigurationProperty where
  toJSON SecretsManagerAccessTokenConfigurationProperty {..}
    = JSON.object
        (Prelude.fromList
           (Prelude.catMaybes
              [(JSON..=) "HeaderName" Prelude.<$> headerName,
               (JSON..=) "SecretArn" Prelude.<$> secretArn,
               (JSON..=) "SecretStringKey" Prelude.<$> secretStringKey]))
instance Property "HeaderName" SecretsManagerAccessTokenConfigurationProperty where
  type PropertyType "HeaderName" SecretsManagerAccessTokenConfigurationProperty = Value Prelude.Text
  set newValue SecretsManagerAccessTokenConfigurationProperty {..}
    = SecretsManagerAccessTokenConfigurationProperty
        {headerName = Prelude.pure newValue, ..}
instance Property "SecretArn" SecretsManagerAccessTokenConfigurationProperty where
  type PropertyType "SecretArn" SecretsManagerAccessTokenConfigurationProperty = Value Prelude.Text
  set newValue SecretsManagerAccessTokenConfigurationProperty {..}
    = SecretsManagerAccessTokenConfigurationProperty
        {secretArn = Prelude.pure newValue, ..}
instance Property "SecretStringKey" SecretsManagerAccessTokenConfigurationProperty where
  type PropertyType "SecretStringKey" SecretsManagerAccessTokenConfigurationProperty = Value Prelude.Text
  set newValue SecretsManagerAccessTokenConfigurationProperty {..}
    = SecretsManagerAccessTokenConfigurationProperty
        {secretStringKey = Prelude.pure newValue, ..}