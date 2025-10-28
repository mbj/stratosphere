module Stratosphere.Logs.AccountPolicy (
        AccountPolicy(..), mkAccountPolicy
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import Stratosphere.ResourceProperties
import Stratosphere.Value
data AccountPolicy
  = -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-logs-accountpolicy.html>
    AccountPolicy {haddock_workaround_ :: (),
                   -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-logs-accountpolicy.html#cfn-logs-accountpolicy-policydocument>
                   policyDocument :: (Value Prelude.Text),
                   -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-logs-accountpolicy.html#cfn-logs-accountpolicy-policyname>
                   policyName :: (Value Prelude.Text),
                   -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-logs-accountpolicy.html#cfn-logs-accountpolicy-policytype>
                   policyType :: (Value Prelude.Text),
                   -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-logs-accountpolicy.html#cfn-logs-accountpolicy-scope>
                   scope :: (Prelude.Maybe (Value Prelude.Text)),
                   -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-logs-accountpolicy.html#cfn-logs-accountpolicy-selectioncriteria>
                   selectionCriteria :: (Prelude.Maybe (Value Prelude.Text))}
  deriving stock (Prelude.Eq, Prelude.Show)
mkAccountPolicy ::
  Value Prelude.Text
  -> Value Prelude.Text -> Value Prelude.Text -> AccountPolicy
mkAccountPolicy policyDocument policyName policyType
  = AccountPolicy
      {haddock_workaround_ = (), policyDocument = policyDocument,
       policyName = policyName, policyType = policyType,
       scope = Prelude.Nothing, selectionCriteria = Prelude.Nothing}
instance ToResourceProperties AccountPolicy where
  toResourceProperties AccountPolicy {..}
    = ResourceProperties
        {awsType = "AWS::Logs::AccountPolicy",
         supportsTags = Prelude.False,
         properties = Prelude.fromList
                        ((Prelude.<>)
                           ["PolicyDocument" JSON..= policyDocument,
                            "PolicyName" JSON..= policyName, "PolicyType" JSON..= policyType]
                           (Prelude.catMaybes
                              [(JSON..=) "Scope" Prelude.<$> scope,
                               (JSON..=) "SelectionCriteria" Prelude.<$> selectionCriteria]))}
instance JSON.ToJSON AccountPolicy where
  toJSON AccountPolicy {..}
    = JSON.object
        (Prelude.fromList
           ((Prelude.<>)
              ["PolicyDocument" JSON..= policyDocument,
               "PolicyName" JSON..= policyName, "PolicyType" JSON..= policyType]
              (Prelude.catMaybes
                 [(JSON..=) "Scope" Prelude.<$> scope,
                  (JSON..=) "SelectionCriteria" Prelude.<$> selectionCriteria])))
instance Property "PolicyDocument" AccountPolicy where
  type PropertyType "PolicyDocument" AccountPolicy = Value Prelude.Text
  set newValue AccountPolicy {..}
    = AccountPolicy {policyDocument = newValue, ..}
instance Property "PolicyName" AccountPolicy where
  type PropertyType "PolicyName" AccountPolicy = Value Prelude.Text
  set newValue AccountPolicy {..}
    = AccountPolicy {policyName = newValue, ..}
instance Property "PolicyType" AccountPolicy where
  type PropertyType "PolicyType" AccountPolicy = Value Prelude.Text
  set newValue AccountPolicy {..}
    = AccountPolicy {policyType = newValue, ..}
instance Property "Scope" AccountPolicy where
  type PropertyType "Scope" AccountPolicy = Value Prelude.Text
  set newValue AccountPolicy {..}
    = AccountPolicy {scope = Prelude.pure newValue, ..}
instance Property "SelectionCriteria" AccountPolicy where
  type PropertyType "SelectionCriteria" AccountPolicy = Value Prelude.Text
  set newValue AccountPolicy {..}
    = AccountPolicy {selectionCriteria = Prelude.pure newValue, ..}