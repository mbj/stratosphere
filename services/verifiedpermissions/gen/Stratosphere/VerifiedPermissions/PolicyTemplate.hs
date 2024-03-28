module Stratosphere.VerifiedPermissions.PolicyTemplate (
        PolicyTemplate(..), mkPolicyTemplate
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import Stratosphere.ResourceProperties
import Stratosphere.Value
data PolicyTemplate
  = PolicyTemplate {description :: (Prelude.Maybe (Value Prelude.Text)),
                    policyStoreId :: (Value Prelude.Text),
                    statement :: (Value Prelude.Text)}
  deriving stock (Prelude.Eq, Prelude.Show)
mkPolicyTemplate ::
  Value Prelude.Text -> Value Prelude.Text -> PolicyTemplate
mkPolicyTemplate policyStoreId statement
  = PolicyTemplate
      {policyStoreId = policyStoreId, statement = statement,
       description = Prelude.Nothing}
instance ToResourceProperties PolicyTemplate where
  toResourceProperties PolicyTemplate {..}
    = ResourceProperties
        {awsType = "AWS::VerifiedPermissions::PolicyTemplate",
         supportsTags = Prelude.False,
         properties = Prelude.fromList
                        ((Prelude.<>)
                           ["PolicyStoreId" JSON..= policyStoreId,
                            "Statement" JSON..= statement]
                           (Prelude.catMaybes
                              [(JSON..=) "Description" Prelude.<$> description]))}
instance JSON.ToJSON PolicyTemplate where
  toJSON PolicyTemplate {..}
    = JSON.object
        (Prelude.fromList
           ((Prelude.<>)
              ["PolicyStoreId" JSON..= policyStoreId,
               "Statement" JSON..= statement]
              (Prelude.catMaybes
                 [(JSON..=) "Description" Prelude.<$> description])))
instance Property "Description" PolicyTemplate where
  type PropertyType "Description" PolicyTemplate = Value Prelude.Text
  set newValue PolicyTemplate {..}
    = PolicyTemplate {description = Prelude.pure newValue, ..}
instance Property "PolicyStoreId" PolicyTemplate where
  type PropertyType "PolicyStoreId" PolicyTemplate = Value Prelude.Text
  set newValue PolicyTemplate {..}
    = PolicyTemplate {policyStoreId = newValue, ..}
instance Property "Statement" PolicyTemplate where
  type PropertyType "Statement" PolicyTemplate = Value Prelude.Text
  set newValue PolicyTemplate {..}
    = PolicyTemplate {statement = newValue, ..}