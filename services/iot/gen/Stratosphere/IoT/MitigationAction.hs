module Stratosphere.IoT.MitigationAction (
        module Exports, MitigationAction(..), mkMitigationAction
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import {-# SOURCE #-} Stratosphere.IoT.MitigationAction.ActionParamsProperty as Exports
import Stratosphere.ResourceProperties
import Stratosphere.Tag
import Stratosphere.Value
data MitigationAction
  = -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-iot-mitigationaction.html>
    MitigationAction {haddock_workaround_ :: (),
                      -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-iot-mitigationaction.html#cfn-iot-mitigationaction-actionname>
                      actionName :: (Prelude.Maybe (Value Prelude.Text)),
                      -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-iot-mitigationaction.html#cfn-iot-mitigationaction-actionparams>
                      actionParams :: ActionParamsProperty,
                      -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-iot-mitigationaction.html#cfn-iot-mitigationaction-rolearn>
                      roleArn :: (Value Prelude.Text),
                      -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-iot-mitigationaction.html#cfn-iot-mitigationaction-tags>
                      tags :: (Prelude.Maybe [Tag])}
  deriving stock (Prelude.Eq, Prelude.Show)
mkMitigationAction ::
  ActionParamsProperty -> Value Prelude.Text -> MitigationAction
mkMitigationAction actionParams roleArn
  = MitigationAction
      {haddock_workaround_ = (), actionParams = actionParams,
       roleArn = roleArn, actionName = Prelude.Nothing,
       tags = Prelude.Nothing}
instance ToResourceProperties MitigationAction where
  toResourceProperties MitigationAction {..}
    = ResourceProperties
        {awsType = "AWS::IoT::MitigationAction",
         supportsTags = Prelude.True,
         properties = Prelude.fromList
                        ((Prelude.<>)
                           ["ActionParams" JSON..= actionParams, "RoleArn" JSON..= roleArn]
                           (Prelude.catMaybes
                              [(JSON..=) "ActionName" Prelude.<$> actionName,
                               (JSON..=) "Tags" Prelude.<$> tags]))}
instance JSON.ToJSON MitigationAction where
  toJSON MitigationAction {..}
    = JSON.object
        (Prelude.fromList
           ((Prelude.<>)
              ["ActionParams" JSON..= actionParams, "RoleArn" JSON..= roleArn]
              (Prelude.catMaybes
                 [(JSON..=) "ActionName" Prelude.<$> actionName,
                  (JSON..=) "Tags" Prelude.<$> tags])))
instance Property "ActionName" MitigationAction where
  type PropertyType "ActionName" MitigationAction = Value Prelude.Text
  set newValue MitigationAction {..}
    = MitigationAction {actionName = Prelude.pure newValue, ..}
instance Property "ActionParams" MitigationAction where
  type PropertyType "ActionParams" MitigationAction = ActionParamsProperty
  set newValue MitigationAction {..}
    = MitigationAction {actionParams = newValue, ..}
instance Property "RoleArn" MitigationAction where
  type PropertyType "RoleArn" MitigationAction = Value Prelude.Text
  set newValue MitigationAction {..}
    = MitigationAction {roleArn = newValue, ..}
instance Property "Tags" MitigationAction where
  type PropertyType "Tags" MitigationAction = [Tag]
  set newValue MitigationAction {..}
    = MitigationAction {tags = Prelude.pure newValue, ..}