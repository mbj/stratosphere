module Stratosphere.QBusiness.Permission (
        module Exports, Permission(..), mkPermission
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import {-# SOURCE #-} Stratosphere.QBusiness.Permission.ConditionProperty as Exports
import Stratosphere.ResourceProperties
import Stratosphere.Value
data Permission
  = -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-qbusiness-permission.html>
    Permission {haddock_workaround_ :: (),
                -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-qbusiness-permission.html#cfn-qbusiness-permission-actions>
                actions :: (ValueList Prelude.Text),
                -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-qbusiness-permission.html#cfn-qbusiness-permission-applicationid>
                applicationId :: (Value Prelude.Text),
                -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-qbusiness-permission.html#cfn-qbusiness-permission-conditions>
                conditions :: (Prelude.Maybe [ConditionProperty]),
                -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-qbusiness-permission.html#cfn-qbusiness-permission-principal>
                principal :: (Value Prelude.Text),
                -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-qbusiness-permission.html#cfn-qbusiness-permission-statementid>
                statementId :: (Value Prelude.Text)}
  deriving stock (Prelude.Eq, Prelude.Show)
mkPermission ::
  ValueList Prelude.Text
  -> Value Prelude.Text
     -> Value Prelude.Text -> Value Prelude.Text -> Permission
mkPermission actions applicationId principal statementId
  = Permission
      {haddock_workaround_ = (), actions = actions,
       applicationId = applicationId, principal = principal,
       statementId = statementId, conditions = Prelude.Nothing}
instance ToResourceProperties Permission where
  toResourceProperties Permission {..}
    = ResourceProperties
        {awsType = "AWS::QBusiness::Permission",
         supportsTags = Prelude.False,
         properties = Prelude.fromList
                        ((Prelude.<>)
                           ["Actions" JSON..= actions, "ApplicationId" JSON..= applicationId,
                            "Principal" JSON..= principal, "StatementId" JSON..= statementId]
                           (Prelude.catMaybes
                              [(JSON..=) "Conditions" Prelude.<$> conditions]))}
instance JSON.ToJSON Permission where
  toJSON Permission {..}
    = JSON.object
        (Prelude.fromList
           ((Prelude.<>)
              ["Actions" JSON..= actions, "ApplicationId" JSON..= applicationId,
               "Principal" JSON..= principal, "StatementId" JSON..= statementId]
              (Prelude.catMaybes
                 [(JSON..=) "Conditions" Prelude.<$> conditions])))
instance Property "Actions" Permission where
  type PropertyType "Actions" Permission = ValueList Prelude.Text
  set newValue Permission {..} = Permission {actions = newValue, ..}
instance Property "ApplicationId" Permission where
  type PropertyType "ApplicationId" Permission = Value Prelude.Text
  set newValue Permission {..}
    = Permission {applicationId = newValue, ..}
instance Property "Conditions" Permission where
  type PropertyType "Conditions" Permission = [ConditionProperty]
  set newValue Permission {..}
    = Permission {conditions = Prelude.pure newValue, ..}
instance Property "Principal" Permission where
  type PropertyType "Principal" Permission = Value Prelude.Text
  set newValue Permission {..}
    = Permission {principal = newValue, ..}
instance Property "StatementId" Permission where
  type PropertyType "StatementId" Permission = Value Prelude.Text
  set newValue Permission {..}
    = Permission {statementId = newValue, ..}