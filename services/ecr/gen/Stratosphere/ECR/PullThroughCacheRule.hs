module Stratosphere.ECR.PullThroughCacheRule (
        PullThroughCacheRule(..), mkPullThroughCacheRule
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import Stratosphere.ResourceProperties
import Stratosphere.Value
data PullThroughCacheRule
  = PullThroughCacheRule {credentialArn :: (Prelude.Maybe (Value Prelude.Text)),
                          ecrRepositoryPrefix :: (Prelude.Maybe (Value Prelude.Text)),
                          upstreamRegistry :: (Prelude.Maybe (Value Prelude.Text)),
                          upstreamRegistryUrl :: (Prelude.Maybe (Value Prelude.Text))}
  deriving stock (Prelude.Eq, Prelude.Show)
mkPullThroughCacheRule :: PullThroughCacheRule
mkPullThroughCacheRule
  = PullThroughCacheRule
      {credentialArn = Prelude.Nothing,
       ecrRepositoryPrefix = Prelude.Nothing,
       upstreamRegistry = Prelude.Nothing,
       upstreamRegistryUrl = Prelude.Nothing}
instance ToResourceProperties PullThroughCacheRule where
  toResourceProperties PullThroughCacheRule {..}
    = ResourceProperties
        {awsType = "AWS::ECR::PullThroughCacheRule",
         supportsTags = Prelude.False,
         properties = Prelude.fromList
                        (Prelude.catMaybes
                           [(JSON..=) "CredentialArn" Prelude.<$> credentialArn,
                            (JSON..=) "EcrRepositoryPrefix" Prelude.<$> ecrRepositoryPrefix,
                            (JSON..=) "UpstreamRegistry" Prelude.<$> upstreamRegistry,
                            (JSON..=) "UpstreamRegistryUrl" Prelude.<$> upstreamRegistryUrl])}
instance JSON.ToJSON PullThroughCacheRule where
  toJSON PullThroughCacheRule {..}
    = JSON.object
        (Prelude.fromList
           (Prelude.catMaybes
              [(JSON..=) "CredentialArn" Prelude.<$> credentialArn,
               (JSON..=) "EcrRepositoryPrefix" Prelude.<$> ecrRepositoryPrefix,
               (JSON..=) "UpstreamRegistry" Prelude.<$> upstreamRegistry,
               (JSON..=) "UpstreamRegistryUrl" Prelude.<$> upstreamRegistryUrl]))
instance Property "CredentialArn" PullThroughCacheRule where
  type PropertyType "CredentialArn" PullThroughCacheRule = Value Prelude.Text
  set newValue PullThroughCacheRule {..}
    = PullThroughCacheRule {credentialArn = Prelude.pure newValue, ..}
instance Property "EcrRepositoryPrefix" PullThroughCacheRule where
  type PropertyType "EcrRepositoryPrefix" PullThroughCacheRule = Value Prelude.Text
  set newValue PullThroughCacheRule {..}
    = PullThroughCacheRule
        {ecrRepositoryPrefix = Prelude.pure newValue, ..}
instance Property "UpstreamRegistry" PullThroughCacheRule where
  type PropertyType "UpstreamRegistry" PullThroughCacheRule = Value Prelude.Text
  set newValue PullThroughCacheRule {..}
    = PullThroughCacheRule
        {upstreamRegistry = Prelude.pure newValue, ..}
instance Property "UpstreamRegistryUrl" PullThroughCacheRule where
  type PropertyType "UpstreamRegistryUrl" PullThroughCacheRule = Value Prelude.Text
  set newValue PullThroughCacheRule {..}
    = PullThroughCacheRule
        {upstreamRegistryUrl = Prelude.pure newValue, ..}