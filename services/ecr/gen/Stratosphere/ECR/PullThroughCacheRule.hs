module Stratosphere.ECR.PullThroughCacheRule (
        PullThroughCacheRule(..), mkPullThroughCacheRule
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import Stratosphere.ResourceProperties
import Stratosphere.Value
data PullThroughCacheRule
  = -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-ecr-pullthroughcacherule.html>
    PullThroughCacheRule {haddock_workaround_ :: (),
                          -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-ecr-pullthroughcacherule.html#cfn-ecr-pullthroughcacherule-credentialarn>
                          credentialArn :: (Prelude.Maybe (Value Prelude.Text)),
                          -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-ecr-pullthroughcacherule.html#cfn-ecr-pullthroughcacherule-ecrrepositoryprefix>
                          ecrRepositoryPrefix :: (Prelude.Maybe (Value Prelude.Text)),
                          -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-ecr-pullthroughcacherule.html#cfn-ecr-pullthroughcacherule-upstreamregistry>
                          upstreamRegistry :: (Prelude.Maybe (Value Prelude.Text)),
                          -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-ecr-pullthroughcacherule.html#cfn-ecr-pullthroughcacherule-upstreamregistryurl>
                          upstreamRegistryUrl :: (Prelude.Maybe (Value Prelude.Text))}
  deriving stock (Prelude.Eq, Prelude.Show)
mkPullThroughCacheRule :: PullThroughCacheRule
mkPullThroughCacheRule
  = PullThroughCacheRule
      {haddock_workaround_ = (), credentialArn = Prelude.Nothing,
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