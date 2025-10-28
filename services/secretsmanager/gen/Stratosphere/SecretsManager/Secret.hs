module Stratosphere.SecretsManager.Secret (
        module Exports, Secret(..), mkSecret
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import {-# SOURCE #-} Stratosphere.SecretsManager.Secret.GenerateSecretStringProperty as Exports
import {-# SOURCE #-} Stratosphere.SecretsManager.Secret.ReplicaRegionProperty as Exports
import Stratosphere.ResourceProperties
import Stratosphere.Tag
import Stratosphere.Value
data Secret
  = -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-secretsmanager-secret.html>
    Secret {haddock_workaround_ :: (),
            -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-secretsmanager-secret.html#cfn-secretsmanager-secret-description>
            description :: (Prelude.Maybe (Value Prelude.Text)),
            -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-secretsmanager-secret.html#cfn-secretsmanager-secret-generatesecretstring>
            generateSecretString :: (Prelude.Maybe GenerateSecretStringProperty),
            -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-secretsmanager-secret.html#cfn-secretsmanager-secret-kmskeyid>
            kmsKeyId :: (Prelude.Maybe (Value Prelude.Text)),
            -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-secretsmanager-secret.html#cfn-secretsmanager-secret-name>
            name :: (Prelude.Maybe (Value Prelude.Text)),
            -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-secretsmanager-secret.html#cfn-secretsmanager-secret-replicaregions>
            replicaRegions :: (Prelude.Maybe [ReplicaRegionProperty]),
            -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-secretsmanager-secret.html#cfn-secretsmanager-secret-secretstring>
            secretString :: (Prelude.Maybe (Value Prelude.Text)),
            -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-secretsmanager-secret.html#cfn-secretsmanager-secret-tags>
            tags :: (Prelude.Maybe [Tag])}
  deriving stock (Prelude.Eq, Prelude.Show)
mkSecret :: Secret
mkSecret
  = Secret
      {haddock_workaround_ = (), description = Prelude.Nothing,
       generateSecretString = Prelude.Nothing, kmsKeyId = Prelude.Nothing,
       name = Prelude.Nothing, replicaRegions = Prelude.Nothing,
       secretString = Prelude.Nothing, tags = Prelude.Nothing}
instance ToResourceProperties Secret where
  toResourceProperties Secret {..}
    = ResourceProperties
        {awsType = "AWS::SecretsManager::Secret",
         supportsTags = Prelude.True,
         properties = Prelude.fromList
                        (Prelude.catMaybes
                           [(JSON..=) "Description" Prelude.<$> description,
                            (JSON..=) "GenerateSecretString" Prelude.<$> generateSecretString,
                            (JSON..=) "KmsKeyId" Prelude.<$> kmsKeyId,
                            (JSON..=) "Name" Prelude.<$> name,
                            (JSON..=) "ReplicaRegions" Prelude.<$> replicaRegions,
                            (JSON..=) "SecretString" Prelude.<$> secretString,
                            (JSON..=) "Tags" Prelude.<$> tags])}
instance JSON.ToJSON Secret where
  toJSON Secret {..}
    = JSON.object
        (Prelude.fromList
           (Prelude.catMaybes
              [(JSON..=) "Description" Prelude.<$> description,
               (JSON..=) "GenerateSecretString" Prelude.<$> generateSecretString,
               (JSON..=) "KmsKeyId" Prelude.<$> kmsKeyId,
               (JSON..=) "Name" Prelude.<$> name,
               (JSON..=) "ReplicaRegions" Prelude.<$> replicaRegions,
               (JSON..=) "SecretString" Prelude.<$> secretString,
               (JSON..=) "Tags" Prelude.<$> tags]))
instance Property "Description" Secret where
  type PropertyType "Description" Secret = Value Prelude.Text
  set newValue Secret {..}
    = Secret {description = Prelude.pure newValue, ..}
instance Property "GenerateSecretString" Secret where
  type PropertyType "GenerateSecretString" Secret = GenerateSecretStringProperty
  set newValue Secret {..}
    = Secret {generateSecretString = Prelude.pure newValue, ..}
instance Property "KmsKeyId" Secret where
  type PropertyType "KmsKeyId" Secret = Value Prelude.Text
  set newValue Secret {..}
    = Secret {kmsKeyId = Prelude.pure newValue, ..}
instance Property "Name" Secret where
  type PropertyType "Name" Secret = Value Prelude.Text
  set newValue Secret {..}
    = Secret {name = Prelude.pure newValue, ..}
instance Property "ReplicaRegions" Secret where
  type PropertyType "ReplicaRegions" Secret = [ReplicaRegionProperty]
  set newValue Secret {..}
    = Secret {replicaRegions = Prelude.pure newValue, ..}
instance Property "SecretString" Secret where
  type PropertyType "SecretString" Secret = Value Prelude.Text
  set newValue Secret {..}
    = Secret {secretString = Prelude.pure newValue, ..}
instance Property "Tags" Secret where
  type PropertyType "Tags" Secret = [Tag]
  set newValue Secret {..}
    = Secret {tags = Prelude.pure newValue, ..}