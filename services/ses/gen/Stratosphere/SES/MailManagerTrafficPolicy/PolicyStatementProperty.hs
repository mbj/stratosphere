module Stratosphere.SES.MailManagerTrafficPolicy.PolicyStatementProperty (
        module Exports, PolicyStatementProperty(..),
        mkPolicyStatementProperty
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import {-# SOURCE #-} Stratosphere.SES.MailManagerTrafficPolicy.PolicyConditionProperty as Exports
import Stratosphere.ResourceProperties
import Stratosphere.Value
data PolicyStatementProperty
  = -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-ses-mailmanagertrafficpolicy-policystatement.html>
    PolicyStatementProperty {haddock_workaround_ :: (),
                             -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-ses-mailmanagertrafficpolicy-policystatement.html#cfn-ses-mailmanagertrafficpolicy-policystatement-action>
                             action :: (Value Prelude.Text),
                             -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-ses-mailmanagertrafficpolicy-policystatement.html#cfn-ses-mailmanagertrafficpolicy-policystatement-conditions>
                             conditions :: [PolicyConditionProperty]}
  deriving stock (Prelude.Eq, Prelude.Show)
mkPolicyStatementProperty ::
  Value Prelude.Text
  -> [PolicyConditionProperty] -> PolicyStatementProperty
mkPolicyStatementProperty action conditions
  = PolicyStatementProperty
      {haddock_workaround_ = (), action = action,
       conditions = conditions}
instance ToResourceProperties PolicyStatementProperty where
  toResourceProperties PolicyStatementProperty {..}
    = ResourceProperties
        {awsType = "AWS::SES::MailManagerTrafficPolicy.PolicyStatement",
         supportsTags = Prelude.False,
         properties = ["Action" JSON..= action,
                       "Conditions" JSON..= conditions]}
instance JSON.ToJSON PolicyStatementProperty where
  toJSON PolicyStatementProperty {..}
    = JSON.object
        ["Action" JSON..= action, "Conditions" JSON..= conditions]
instance Property "Action" PolicyStatementProperty where
  type PropertyType "Action" PolicyStatementProperty = Value Prelude.Text
  set newValue PolicyStatementProperty {..}
    = PolicyStatementProperty {action = newValue, ..}
instance Property "Conditions" PolicyStatementProperty where
  type PropertyType "Conditions" PolicyStatementProperty = [PolicyConditionProperty]
  set newValue PolicyStatementProperty {..}
    = PolicyStatementProperty {conditions = newValue, ..}