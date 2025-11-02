module Stratosphere.ECR.Repository.LifecyclePolicyProperty (
        LifecyclePolicyProperty(..), mkLifecyclePolicyProperty
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import Stratosphere.ResourceProperties
import Stratosphere.Value
data LifecyclePolicyProperty
  = -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-ecr-repository-lifecyclepolicy.html>
    LifecyclePolicyProperty {haddock_workaround_ :: (),
                             -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-ecr-repository-lifecyclepolicy.html#cfn-ecr-repository-lifecyclepolicy-lifecyclepolicytext>
                             lifecyclePolicyText :: (Prelude.Maybe (Value Prelude.Text)),
                             -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-ecr-repository-lifecyclepolicy.html#cfn-ecr-repository-lifecyclepolicy-registryid>
                             registryId :: (Prelude.Maybe (Value Prelude.Text))}
  deriving stock (Prelude.Eq, Prelude.Show)
mkLifecyclePolicyProperty :: LifecyclePolicyProperty
mkLifecyclePolicyProperty
  = LifecyclePolicyProperty
      {haddock_workaround_ = (), lifecyclePolicyText = Prelude.Nothing,
       registryId = Prelude.Nothing}
instance ToResourceProperties LifecyclePolicyProperty where
  toResourceProperties LifecyclePolicyProperty {..}
    = ResourceProperties
        {awsType = "AWS::ECR::Repository.LifecyclePolicy",
         supportsTags = Prelude.False,
         properties = Prelude.fromList
                        (Prelude.catMaybes
                           [(JSON..=) "LifecyclePolicyText" Prelude.<$> lifecyclePolicyText,
                            (JSON..=) "RegistryId" Prelude.<$> registryId])}
instance JSON.ToJSON LifecyclePolicyProperty where
  toJSON LifecyclePolicyProperty {..}
    = JSON.object
        (Prelude.fromList
           (Prelude.catMaybes
              [(JSON..=) "LifecyclePolicyText" Prelude.<$> lifecyclePolicyText,
               (JSON..=) "RegistryId" Prelude.<$> registryId]))
instance Property "LifecyclePolicyText" LifecyclePolicyProperty where
  type PropertyType "LifecyclePolicyText" LifecyclePolicyProperty = Value Prelude.Text
  set newValue LifecyclePolicyProperty {..}
    = LifecyclePolicyProperty
        {lifecyclePolicyText = Prelude.pure newValue, ..}
instance Property "RegistryId" LifecyclePolicyProperty where
  type PropertyType "RegistryId" LifecyclePolicyProperty = Value Prelude.Text
  set newValue LifecyclePolicyProperty {..}
    = LifecyclePolicyProperty {registryId = Prelude.pure newValue, ..}