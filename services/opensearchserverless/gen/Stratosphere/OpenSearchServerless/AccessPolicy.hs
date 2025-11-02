module Stratosphere.OpenSearchServerless.AccessPolicy (
        AccessPolicy(..), mkAccessPolicy
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import Stratosphere.ResourceProperties
import Stratosphere.Value
data AccessPolicy
  = -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-opensearchserverless-accesspolicy.html>
    AccessPolicy {haddock_workaround_ :: (),
                  -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-opensearchserverless-accesspolicy.html#cfn-opensearchserverless-accesspolicy-description>
                  description :: (Prelude.Maybe (Value Prelude.Text)),
                  -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-opensearchserverless-accesspolicy.html#cfn-opensearchserverless-accesspolicy-name>
                  name :: (Value Prelude.Text),
                  -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-opensearchserverless-accesspolicy.html#cfn-opensearchserverless-accesspolicy-policy>
                  policy :: (Value Prelude.Text),
                  -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-opensearchserverless-accesspolicy.html#cfn-opensearchserverless-accesspolicy-type>
                  type' :: (Value Prelude.Text)}
  deriving stock (Prelude.Eq, Prelude.Show)
mkAccessPolicy ::
  Value Prelude.Text
  -> Value Prelude.Text -> Value Prelude.Text -> AccessPolicy
mkAccessPolicy name policy type'
  = AccessPolicy
      {haddock_workaround_ = (), name = name, policy = policy,
       type' = type', description = Prelude.Nothing}
instance ToResourceProperties AccessPolicy where
  toResourceProperties AccessPolicy {..}
    = ResourceProperties
        {awsType = "AWS::OpenSearchServerless::AccessPolicy",
         supportsTags = Prelude.False,
         properties = Prelude.fromList
                        ((Prelude.<>)
                           ["Name" JSON..= name, "Policy" JSON..= policy,
                            "Type" JSON..= type']
                           (Prelude.catMaybes
                              [(JSON..=) "Description" Prelude.<$> description]))}
instance JSON.ToJSON AccessPolicy where
  toJSON AccessPolicy {..}
    = JSON.object
        (Prelude.fromList
           ((Prelude.<>)
              ["Name" JSON..= name, "Policy" JSON..= policy,
               "Type" JSON..= type']
              (Prelude.catMaybes
                 [(JSON..=) "Description" Prelude.<$> description])))
instance Property "Description" AccessPolicy where
  type PropertyType "Description" AccessPolicy = Value Prelude.Text
  set newValue AccessPolicy {..}
    = AccessPolicy {description = Prelude.pure newValue, ..}
instance Property "Name" AccessPolicy where
  type PropertyType "Name" AccessPolicy = Value Prelude.Text
  set newValue AccessPolicy {..} = AccessPolicy {name = newValue, ..}
instance Property "Policy" AccessPolicy where
  type PropertyType "Policy" AccessPolicy = Value Prelude.Text
  set newValue AccessPolicy {..}
    = AccessPolicy {policy = newValue, ..}
instance Property "Type" AccessPolicy where
  type PropertyType "Type" AccessPolicy = Value Prelude.Text
  set newValue AccessPolicy {..}
    = AccessPolicy {type' = newValue, ..}