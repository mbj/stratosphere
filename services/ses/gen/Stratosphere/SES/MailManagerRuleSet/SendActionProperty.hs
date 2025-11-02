module Stratosphere.SES.MailManagerRuleSet.SendActionProperty (
        SendActionProperty(..), mkSendActionProperty
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import Stratosphere.ResourceProperties
import Stratosphere.Value
data SendActionProperty
  = -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-ses-mailmanagerruleset-sendaction.html>
    SendActionProperty {haddock_workaround_ :: (),
                        -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-ses-mailmanagerruleset-sendaction.html#cfn-ses-mailmanagerruleset-sendaction-actionfailurepolicy>
                        actionFailurePolicy :: (Prelude.Maybe (Value Prelude.Text)),
                        -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-ses-mailmanagerruleset-sendaction.html#cfn-ses-mailmanagerruleset-sendaction-rolearn>
                        roleArn :: (Value Prelude.Text)}
  deriving stock (Prelude.Eq, Prelude.Show)
mkSendActionProperty :: Value Prelude.Text -> SendActionProperty
mkSendActionProperty roleArn
  = SendActionProperty
      {haddock_workaround_ = (), roleArn = roleArn,
       actionFailurePolicy = Prelude.Nothing}
instance ToResourceProperties SendActionProperty where
  toResourceProperties SendActionProperty {..}
    = ResourceProperties
        {awsType = "AWS::SES::MailManagerRuleSet.SendAction",
         supportsTags = Prelude.False,
         properties = Prelude.fromList
                        ((Prelude.<>)
                           ["RoleArn" JSON..= roleArn]
                           (Prelude.catMaybes
                              [(JSON..=) "ActionFailurePolicy"
                                 Prelude.<$> actionFailurePolicy]))}
instance JSON.ToJSON SendActionProperty where
  toJSON SendActionProperty {..}
    = JSON.object
        (Prelude.fromList
           ((Prelude.<>)
              ["RoleArn" JSON..= roleArn]
              (Prelude.catMaybes
                 [(JSON..=) "ActionFailurePolicy"
                    Prelude.<$> actionFailurePolicy])))
instance Property "ActionFailurePolicy" SendActionProperty where
  type PropertyType "ActionFailurePolicy" SendActionProperty = Value Prelude.Text
  set newValue SendActionProperty {..}
    = SendActionProperty
        {actionFailurePolicy = Prelude.pure newValue, ..}
instance Property "RoleArn" SendActionProperty where
  type PropertyType "RoleArn" SendActionProperty = Value Prelude.Text
  set newValue SendActionProperty {..}
    = SendActionProperty {roleArn = newValue, ..}