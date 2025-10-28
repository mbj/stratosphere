module Stratosphere.Greengrass.ResourceDefinition.SecretsManagerSecretResourceDataProperty (
        SecretsManagerSecretResourceDataProperty(..),
        mkSecretsManagerSecretResourceDataProperty
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import Stratosphere.ResourceProperties
import Stratosphere.Value
data SecretsManagerSecretResourceDataProperty
  = -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-greengrass-resourcedefinition-secretsmanagersecretresourcedata.html>
    SecretsManagerSecretResourceDataProperty {haddock_workaround_ :: (),
                                              -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-greengrass-resourcedefinition-secretsmanagersecretresourcedata.html#cfn-greengrass-resourcedefinition-secretsmanagersecretresourcedata-arn>
                                              aRN :: (Value Prelude.Text),
                                              -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-greengrass-resourcedefinition-secretsmanagersecretresourcedata.html#cfn-greengrass-resourcedefinition-secretsmanagersecretresourcedata-additionalstaginglabelstodownload>
                                              additionalStagingLabelsToDownload :: (Prelude.Maybe (ValueList Prelude.Text))}
  deriving stock (Prelude.Eq, Prelude.Show)
mkSecretsManagerSecretResourceDataProperty ::
  Value Prelude.Text -> SecretsManagerSecretResourceDataProperty
mkSecretsManagerSecretResourceDataProperty aRN
  = SecretsManagerSecretResourceDataProperty
      {haddock_workaround_ = (), aRN = aRN,
       additionalStagingLabelsToDownload = Prelude.Nothing}
instance ToResourceProperties SecretsManagerSecretResourceDataProperty where
  toResourceProperties SecretsManagerSecretResourceDataProperty {..}
    = ResourceProperties
        {awsType = "AWS::Greengrass::ResourceDefinition.SecretsManagerSecretResourceData",
         supportsTags = Prelude.False,
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