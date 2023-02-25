module Stratosphere.ECR.PullThroughCacheRule (
        PullThroughCacheRule(..), mkPullThroughCacheRule
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import Stratosphere.ResourceProperties
import Stratosphere.Value
data PullThroughCacheRule
  = PullThroughCacheRule {ecrRepositoryPrefix :: (Prelude.Maybe (Value Prelude.Text)),
                          upstreamRegistryUrl :: (Prelude.Maybe (Value Prelude.Text))}
mkPullThroughCacheRule :: PullThroughCacheRule
mkPullThroughCacheRule
  = PullThroughCacheRule
      {ecrRepositoryPrefix = Prelude.Nothing,
       upstreamRegistryUrl = Prelude.Nothing}
instance ToResourceProperties PullThroughCacheRule where
  toResourceProperties PullThroughCacheRule {..}
    = ResourceProperties
        {awsType = "AWS::ECR::PullThroughCacheRule",
         properties = Prelude.fromList
                        (Prelude.catMaybes
                           [(JSON..=) "EcrRepositoryPrefix" Prelude.<$> ecrRepositoryPrefix,
                            (JSON..=) "UpstreamRegistryUrl" Prelude.<$> upstreamRegistryUrl])}
instance JSON.ToJSON PullThroughCacheRule where
  toJSON PullThroughCacheRule {..}
    = JSON.object
        (Prelude.fromList
           (Prelude.catMaybes
              [(JSON..=) "EcrRepositoryPrefix" Prelude.<$> ecrRepositoryPrefix,
               (JSON..=) "UpstreamRegistryUrl" Prelude.<$> upstreamRegistryUrl]))
instance Property "EcrRepositoryPrefix" PullThroughCacheRule where
  type PropertyType "EcrRepositoryPrefix" PullThroughCacheRule = Value Prelude.Text
  set newValue PullThroughCacheRule {..}
    = PullThroughCacheRule
        {ecrRepositoryPrefix = Prelude.pure newValue, ..}
instance Property "UpstreamRegistryUrl" PullThroughCacheRule where
  type PropertyType "UpstreamRegistryUrl" PullThroughCacheRule = Value Prelude.Text
  set newValue PullThroughCacheRule {..}
    = PullThroughCacheRule
        {upstreamRegistryUrl = Prelude.pure newValue, ..}