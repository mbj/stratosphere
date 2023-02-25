module Stratosphere.Lambda.Permission (
        Permission(..), mkPermission
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import Stratosphere.ResourceProperties
import Stratosphere.Value
data Permission
  = Permission {action :: (Value Prelude.Text),
                eventSourceToken :: (Prelude.Maybe (Value Prelude.Text)),
                functionName :: (Value Prelude.Text),
                functionUrlAuthType :: (Prelude.Maybe (Value Prelude.Text)),
                principal :: (Value Prelude.Text),
                principalOrgID :: (Prelude.Maybe (Value Prelude.Text)),
                sourceAccount :: (Prelude.Maybe (Value Prelude.Text)),
                sourceArn :: (Prelude.Maybe (Value Prelude.Text))}
mkPermission ::
  Value Prelude.Text
  -> Value Prelude.Text -> Value Prelude.Text -> Permission
mkPermission action functionName principal
  = Permission
      {action = action, functionName = functionName,
       principal = principal, eventSourceToken = Prelude.Nothing,
       functionUrlAuthType = Prelude.Nothing,
       principalOrgID = Prelude.Nothing, sourceAccount = Prelude.Nothing,
       sourceArn = Prelude.Nothing}
instance ToResourceProperties Permission where
  toResourceProperties Permission {..}
    = ResourceProperties
        {awsType = "AWS::Lambda::Permission",
         properties = Prelude.fromList
                        ((Prelude.<>)
                           ["Action" JSON..= action, "FunctionName" JSON..= functionName,
                            "Principal" JSON..= principal]
                           (Prelude.catMaybes
                              [(JSON..=) "EventSourceToken" Prelude.<$> eventSourceToken,
                               (JSON..=) "FunctionUrlAuthType" Prelude.<$> functionUrlAuthType,
                               (JSON..=) "PrincipalOrgID" Prelude.<$> principalOrgID,
                               (JSON..=) "SourceAccount" Prelude.<$> sourceAccount,
                               (JSON..=) "SourceArn" Prelude.<$> sourceArn]))}
instance JSON.ToJSON Permission where
  toJSON Permission {..}
    = JSON.object
        (Prelude.fromList
           ((Prelude.<>)
              ["Action" JSON..= action, "FunctionName" JSON..= functionName,
               "Principal" JSON..= principal]
              (Prelude.catMaybes
                 [(JSON..=) "EventSourceToken" Prelude.<$> eventSourceToken,
                  (JSON..=) "FunctionUrlAuthType" Prelude.<$> functionUrlAuthType,
                  (JSON..=) "PrincipalOrgID" Prelude.<$> principalOrgID,
                  (JSON..=) "SourceAccount" Prelude.<$> sourceAccount,
                  (JSON..=) "SourceArn" Prelude.<$> sourceArn])))
instance Property "Action" Permission where
  type PropertyType "Action" Permission = Value Prelude.Text
  set newValue Permission {..} = Permission {action = newValue, ..}
instance Property "EventSourceToken" Permission where
  type PropertyType "EventSourceToken" Permission = Value Prelude.Text
  set newValue Permission {..}
    = Permission {eventSourceToken = Prelude.pure newValue, ..}
instance Property "FunctionName" Permission where
  type PropertyType "FunctionName" Permission = Value Prelude.Text
  set newValue Permission {..}
    = Permission {functionName = newValue, ..}
instance Property "FunctionUrlAuthType" Permission where
  type PropertyType "FunctionUrlAuthType" Permission = Value Prelude.Text
  set newValue Permission {..}
    = Permission {functionUrlAuthType = Prelude.pure newValue, ..}
instance Property "Principal" Permission where
  type PropertyType "Principal" Permission = Value Prelude.Text
  set newValue Permission {..}
    = Permission {principal = newValue, ..}
instance Property "PrincipalOrgID" Permission where
  type PropertyType "PrincipalOrgID" Permission = Value Prelude.Text
  set newValue Permission {..}
    = Permission {principalOrgID = Prelude.pure newValue, ..}
instance Property "SourceAccount" Permission where
  type PropertyType "SourceAccount" Permission = Value Prelude.Text
  set newValue Permission {..}
    = Permission {sourceAccount = Prelude.pure newValue, ..}
instance Property "SourceArn" Permission where
  type PropertyType "SourceArn" Permission = Value Prelude.Text
  set newValue Permission {..}
    = Permission {sourceArn = Prelude.pure newValue, ..}