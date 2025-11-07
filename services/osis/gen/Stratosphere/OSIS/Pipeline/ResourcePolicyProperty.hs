module Stratosphere.OSIS.Pipeline.ResourcePolicyProperty (
        ResourcePolicyProperty(..), mkResourcePolicyProperty
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import Stratosphere.ResourceProperties
data ResourcePolicyProperty
  = -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-osis-pipeline-resourcepolicy.html>
    ResourcePolicyProperty {haddock_workaround_ :: (),
                            -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-osis-pipeline-resourcepolicy.html#cfn-osis-pipeline-resourcepolicy-policy>
                            policy :: JSON.Object}
  deriving stock (Prelude.Eq, Prelude.Show)
mkResourcePolicyProperty :: JSON.Object -> ResourcePolicyProperty
mkResourcePolicyProperty policy
  = ResourcePolicyProperty
      {haddock_workaround_ = (), policy = policy}
instance ToResourceProperties ResourcePolicyProperty where
  toResourceProperties ResourcePolicyProperty {..}
    = ResourceProperties
        {awsType = "AWS::OSIS::Pipeline.ResourcePolicy",
         supportsTags = Prelude.False,
         properties = ["Policy" JSON..= policy]}
instance JSON.ToJSON ResourcePolicyProperty where
  toJSON ResourcePolicyProperty {..}
    = JSON.object ["Policy" JSON..= policy]
instance Property "Policy" ResourcePolicyProperty where
  type PropertyType "Policy" ResourcePolicyProperty = JSON.Object
  set newValue ResourcePolicyProperty {..}
    = ResourcePolicyProperty {policy = newValue, ..}