module Stratosphere.QuickSight.Dashboard.LayerCustomActionProperty (
        module Exports, LayerCustomActionProperty(..),
        mkLayerCustomActionProperty
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import {-# SOURCE #-} Stratosphere.QuickSight.Dashboard.LayerCustomActionOperationProperty as Exports
import Stratosphere.ResourceProperties
import Stratosphere.Value
data LayerCustomActionProperty
  = -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-quicksight-dashboard-layercustomaction.html>
    LayerCustomActionProperty {haddock_workaround_ :: (),
                               -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-quicksight-dashboard-layercustomaction.html#cfn-quicksight-dashboard-layercustomaction-actionoperations>
                               actionOperations :: [LayerCustomActionOperationProperty],
                               -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-quicksight-dashboard-layercustomaction.html#cfn-quicksight-dashboard-layercustomaction-customactionid>
                               customActionId :: (Value Prelude.Text),
                               -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-quicksight-dashboard-layercustomaction.html#cfn-quicksight-dashboard-layercustomaction-name>
                               name :: (Value Prelude.Text),
                               -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-quicksight-dashboard-layercustomaction.html#cfn-quicksight-dashboard-layercustomaction-status>
                               status :: (Prelude.Maybe (Value Prelude.Text)),
                               -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-quicksight-dashboard-layercustomaction.html#cfn-quicksight-dashboard-layercustomaction-trigger>
                               trigger :: (Value Prelude.Text)}
  deriving stock (Prelude.Eq, Prelude.Show)
mkLayerCustomActionProperty ::
  [LayerCustomActionOperationProperty]
  -> Value Prelude.Text
     -> Value Prelude.Text
        -> Value Prelude.Text -> LayerCustomActionProperty
mkLayerCustomActionProperty
  actionOperations
  customActionId
  name
  trigger
  = LayerCustomActionProperty
      {haddock_workaround_ = (), actionOperations = actionOperations,
       customActionId = customActionId, name = name, trigger = trigger,
       status = Prelude.Nothing}
instance ToResourceProperties LayerCustomActionProperty where
  toResourceProperties LayerCustomActionProperty {..}
    = ResourceProperties
        {awsType = "AWS::QuickSight::Dashboard.LayerCustomAction",
         supportsTags = Prelude.False,
         properties = Prelude.fromList
                        ((Prelude.<>)
                           ["ActionOperations" JSON..= actionOperations,
                            "CustomActionId" JSON..= customActionId, "Name" JSON..= name,
                            "Trigger" JSON..= trigger]
                           (Prelude.catMaybes [(JSON..=) "Status" Prelude.<$> status]))}
instance JSON.ToJSON LayerCustomActionProperty where
  toJSON LayerCustomActionProperty {..}
    = JSON.object
        (Prelude.fromList
           ((Prelude.<>)
              ["ActionOperations" JSON..= actionOperations,
               "CustomActionId" JSON..= customActionId, "Name" JSON..= name,
               "Trigger" JSON..= trigger]
              (Prelude.catMaybes [(JSON..=) "Status" Prelude.<$> status])))
instance Property "ActionOperations" LayerCustomActionProperty where
  type PropertyType "ActionOperations" LayerCustomActionProperty = [LayerCustomActionOperationProperty]
  set newValue LayerCustomActionProperty {..}
    = LayerCustomActionProperty {actionOperations = newValue, ..}
instance Property "CustomActionId" LayerCustomActionProperty where
  type PropertyType "CustomActionId" LayerCustomActionProperty = Value Prelude.Text
  set newValue LayerCustomActionProperty {..}
    = LayerCustomActionProperty {customActionId = newValue, ..}
instance Property "Name" LayerCustomActionProperty where
  type PropertyType "Name" LayerCustomActionProperty = Value Prelude.Text
  set newValue LayerCustomActionProperty {..}
    = LayerCustomActionProperty {name = newValue, ..}
instance Property "Status" LayerCustomActionProperty where
  type PropertyType "Status" LayerCustomActionProperty = Value Prelude.Text
  set newValue LayerCustomActionProperty {..}
    = LayerCustomActionProperty {status = Prelude.pure newValue, ..}
instance Property "Trigger" LayerCustomActionProperty where
  type PropertyType "Trigger" LayerCustomActionProperty = Value Prelude.Text
  set newValue LayerCustomActionProperty {..}
    = LayerCustomActionProperty {trigger = newValue, ..}