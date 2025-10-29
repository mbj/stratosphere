module Stratosphere.SecretsManager.ResourcePolicy (
        ResourcePolicy(..), mkResourcePolicy
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import Stratosphere.ResourceProperties
import Stratosphere.Value
data ResourcePolicy
  = -- |See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-secretsmanager-resourcepolicy.html>
    ResourcePolicy {-- |See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-secretsmanager-resourcepolicy.html#cfn-secretsmanager-resourcepolicy-blockpublicpolicy>
                    blockPublicPolicy :: (Prelude.Maybe (Value Prelude.Bool)),
                    -- |See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-secretsmanager-resourcepolicy.html#cfn-secretsmanager-resourcepolicy-resourcepolicy>
                    resourcePolicy :: JSON.Object,
                    -- |See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-secretsmanager-resourcepolicy.html#cfn-secretsmanager-resourcepolicy-secretid>
                    secretId :: (Value Prelude.Text)}
  deriving stock (Prelude.Eq, Prelude.Show)
mkResourcePolicy ::
  JSON.Object -> Value Prelude.Text -> ResourcePolicy
mkResourcePolicy resourcePolicy secretId
  = ResourcePolicy
      {resourcePolicy = resourcePolicy, secretId = secretId,
       blockPublicPolicy = Prelude.Nothing}
instance ToResourceProperties ResourcePolicy where
  toResourceProperties ResourcePolicy {..}
    = ResourceProperties
        {awsType = "AWS::SecretsManager::ResourcePolicy",
         supportsTags = Prelude.False,
         properties = Prelude.fromList
                        ((Prelude.<>)
                           ["ResourcePolicy" JSON..= resourcePolicy,
                            "SecretId" JSON..= secretId]
                           (Prelude.catMaybes
                              [(JSON..=) "BlockPublicPolicy" Prelude.<$> blockPublicPolicy]))}
instance JSON.ToJSON ResourcePolicy where
  toJSON ResourcePolicy {..}
    = JSON.object
        (Prelude.fromList
           ((Prelude.<>)
              ["ResourcePolicy" JSON..= resourcePolicy,
               "SecretId" JSON..= secretId]
              (Prelude.catMaybes
                 [(JSON..=) "BlockPublicPolicy" Prelude.<$> blockPublicPolicy])))
instance Property "BlockPublicPolicy" ResourcePolicy where
  type PropertyType "BlockPublicPolicy" ResourcePolicy = Value Prelude.Bool
  set newValue ResourcePolicy {..}
    = ResourcePolicy {blockPublicPolicy = Prelude.pure newValue, ..}
instance Property "ResourcePolicy" ResourcePolicy where
  type PropertyType "ResourcePolicy" ResourcePolicy = JSON.Object
  set newValue ResourcePolicy {..}
    = ResourcePolicy {resourcePolicy = newValue, ..}
instance Property "SecretId" ResourcePolicy where
  type PropertyType "SecretId" ResourcePolicy = Value Prelude.Text
  set newValue ResourcePolicy {..}
    = ResourcePolicy {secretId = newValue, ..}