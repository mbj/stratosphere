module Stratosphere.Budgets.BudgetsAction.IamActionDefinitionProperty (
        IamActionDefinitionProperty(..), mkIamActionDefinitionProperty
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import Stratosphere.ResourceProperties
import Stratosphere.Value
data IamActionDefinitionProperty
  = -- |See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-budgets-budgetsaction-iamactiondefinition.html>
    IamActionDefinitionProperty {-- |See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-budgets-budgetsaction-iamactiondefinition.html#cfn-budgets-budgetsaction-iamactiondefinition-groups>
                                 groups :: (Prelude.Maybe (ValueList Prelude.Text)),
                                 -- |See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-budgets-budgetsaction-iamactiondefinition.html#cfn-budgets-budgetsaction-iamactiondefinition-policyarn>
                                 policyArn :: (Value Prelude.Text),
                                 -- |See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-budgets-budgetsaction-iamactiondefinition.html#cfn-budgets-budgetsaction-iamactiondefinition-roles>
                                 roles :: (Prelude.Maybe (ValueList Prelude.Text)),
                                 -- |See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-budgets-budgetsaction-iamactiondefinition.html#cfn-budgets-budgetsaction-iamactiondefinition-users>
                                 users :: (Prelude.Maybe (ValueList Prelude.Text))}
  deriving stock (Prelude.Eq, Prelude.Show)
mkIamActionDefinitionProperty ::
  Value Prelude.Text -> IamActionDefinitionProperty
mkIamActionDefinitionProperty policyArn
  = IamActionDefinitionProperty
      {policyArn = policyArn, groups = Prelude.Nothing,
       roles = Prelude.Nothing, users = Prelude.Nothing}
instance ToResourceProperties IamActionDefinitionProperty where
  toResourceProperties IamActionDefinitionProperty {..}
    = ResourceProperties
        {awsType = "AWS::Budgets::BudgetsAction.IamActionDefinition",
         supportsTags = Prelude.False,
         properties = Prelude.fromList
                        ((Prelude.<>)
                           ["PolicyArn" JSON..= policyArn]
                           (Prelude.catMaybes
                              [(JSON..=) "Groups" Prelude.<$> groups,
                               (JSON..=) "Roles" Prelude.<$> roles,
                               (JSON..=) "Users" Prelude.<$> users]))}
instance JSON.ToJSON IamActionDefinitionProperty where
  toJSON IamActionDefinitionProperty {..}
    = JSON.object
        (Prelude.fromList
           ((Prelude.<>)
              ["PolicyArn" JSON..= policyArn]
              (Prelude.catMaybes
                 [(JSON..=) "Groups" Prelude.<$> groups,
                  (JSON..=) "Roles" Prelude.<$> roles,
                  (JSON..=) "Users" Prelude.<$> users])))
instance Property "Groups" IamActionDefinitionProperty where
  type PropertyType "Groups" IamActionDefinitionProperty = ValueList Prelude.Text
  set newValue IamActionDefinitionProperty {..}
    = IamActionDefinitionProperty {groups = Prelude.pure newValue, ..}
instance Property "PolicyArn" IamActionDefinitionProperty where
  type PropertyType "PolicyArn" IamActionDefinitionProperty = Value Prelude.Text
  set newValue IamActionDefinitionProperty {..}
    = IamActionDefinitionProperty {policyArn = newValue, ..}
instance Property "Roles" IamActionDefinitionProperty where
  type PropertyType "Roles" IamActionDefinitionProperty = ValueList Prelude.Text
  set newValue IamActionDefinitionProperty {..}
    = IamActionDefinitionProperty {roles = Prelude.pure newValue, ..}
instance Property "Users" IamActionDefinitionProperty where
  type PropertyType "Users" IamActionDefinitionProperty = ValueList Prelude.Text
  set newValue IamActionDefinitionProperty {..}
    = IamActionDefinitionProperty {users = Prelude.pure newValue, ..}