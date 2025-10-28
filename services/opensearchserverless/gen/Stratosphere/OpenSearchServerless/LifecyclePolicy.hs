module Stratosphere.OpenSearchServerless.LifecyclePolicy (
        LifecyclePolicy(..), mkLifecyclePolicy
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import Stratosphere.ResourceProperties
import Stratosphere.Value
data LifecyclePolicy
  = -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-opensearchserverless-lifecyclepolicy.html>
    LifecyclePolicy {haddock_workaround_ :: (),
                     -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-opensearchserverless-lifecyclepolicy.html#cfn-opensearchserverless-lifecyclepolicy-description>
                     description :: (Prelude.Maybe (Value Prelude.Text)),
                     -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-opensearchserverless-lifecyclepolicy.html#cfn-opensearchserverless-lifecyclepolicy-name>
                     name :: (Value Prelude.Text),
                     -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-opensearchserverless-lifecyclepolicy.html#cfn-opensearchserverless-lifecyclepolicy-policy>
                     policy :: (Value Prelude.Text),
                     -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-opensearchserverless-lifecyclepolicy.html#cfn-opensearchserverless-lifecyclepolicy-type>
                     type' :: (Value Prelude.Text)}
  deriving stock (Prelude.Eq, Prelude.Show)
mkLifecyclePolicy ::
  Value Prelude.Text
  -> Value Prelude.Text -> Value Prelude.Text -> LifecyclePolicy
mkLifecyclePolicy name policy type'
  = LifecyclePolicy
      {haddock_workaround_ = (), name = name, policy = policy,
       type' = type', description = Prelude.Nothing}
instance ToResourceProperties LifecyclePolicy where
  toResourceProperties LifecyclePolicy {..}
    = ResourceProperties
        {awsType = "AWS::OpenSearchServerless::LifecyclePolicy",
         supportsTags = Prelude.False,
         properties = Prelude.fromList
                        ((Prelude.<>)
                           ["Name" JSON..= name, "Policy" JSON..= policy,
                            "Type" JSON..= type']
                           (Prelude.catMaybes
                              [(JSON..=) "Description" Prelude.<$> description]))}
instance JSON.ToJSON LifecyclePolicy where
  toJSON LifecyclePolicy {..}
    = JSON.object
        (Prelude.fromList
           ((Prelude.<>)
              ["Name" JSON..= name, "Policy" JSON..= policy,
               "Type" JSON..= type']
              (Prelude.catMaybes
                 [(JSON..=) "Description" Prelude.<$> description])))
instance Property "Description" LifecyclePolicy where
  type PropertyType "Description" LifecyclePolicy = Value Prelude.Text
  set newValue LifecyclePolicy {..}
    = LifecyclePolicy {description = Prelude.pure newValue, ..}
instance Property "Name" LifecyclePolicy where
  type PropertyType "Name" LifecyclePolicy = Value Prelude.Text
  set newValue LifecyclePolicy {..}
    = LifecyclePolicy {name = newValue, ..}
instance Property "Policy" LifecyclePolicy where
  type PropertyType "Policy" LifecyclePolicy = Value Prelude.Text
  set newValue LifecyclePolicy {..}
    = LifecyclePolicy {policy = newValue, ..}
instance Property "Type" LifecyclePolicy where
  type PropertyType "Type" LifecyclePolicy = Value Prelude.Text
  set newValue LifecyclePolicy {..}
    = LifecyclePolicy {type' = newValue, ..}