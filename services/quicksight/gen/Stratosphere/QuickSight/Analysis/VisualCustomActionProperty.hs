module Stratosphere.QuickSight.Analysis.VisualCustomActionProperty (
        module Exports, VisualCustomActionProperty(..),
        mkVisualCustomActionProperty
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import {-# SOURCE #-} Stratosphere.QuickSight.Analysis.VisualCustomActionOperationProperty as Exports
import Stratosphere.ResourceProperties
import Stratosphere.Value
data VisualCustomActionProperty
  = -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-quicksight-analysis-visualcustomaction.html>
    VisualCustomActionProperty {haddock_workaround_ :: (),
                                -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-quicksight-analysis-visualcustomaction.html#cfn-quicksight-analysis-visualcustomaction-actionoperations>
                                actionOperations :: [VisualCustomActionOperationProperty],
                                -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-quicksight-analysis-visualcustomaction.html#cfn-quicksight-analysis-visualcustomaction-customactionid>
                                customActionId :: (Value Prelude.Text),
                                -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-quicksight-analysis-visualcustomaction.html#cfn-quicksight-analysis-visualcustomaction-name>
                                name :: (Value Prelude.Text),
                                -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-quicksight-analysis-visualcustomaction.html#cfn-quicksight-analysis-visualcustomaction-status>
                                status :: (Prelude.Maybe (Value Prelude.Text)),
                                -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-quicksight-analysis-visualcustomaction.html#cfn-quicksight-analysis-visualcustomaction-trigger>
                                trigger :: (Value Prelude.Text)}
  deriving stock (Prelude.Eq, Prelude.Show)
mkVisualCustomActionProperty ::
  [VisualCustomActionOperationProperty]
  -> Value Prelude.Text
     -> Value Prelude.Text
        -> Value Prelude.Text -> VisualCustomActionProperty
mkVisualCustomActionProperty
  actionOperations
  customActionId
  name
  trigger
  = VisualCustomActionProperty
      {haddock_workaround_ = (), actionOperations = actionOperations,
       customActionId = customActionId, name = name, trigger = trigger,
       status = Prelude.Nothing}
instance ToResourceProperties VisualCustomActionProperty where
  toResourceProperties VisualCustomActionProperty {..}
    = ResourceProperties
        {awsType = "AWS::QuickSight::Analysis.VisualCustomAction",
         supportsTags = Prelude.False,
         properties = Prelude.fromList
                        ((Prelude.<>)
                           ["ActionOperations" JSON..= actionOperations,
                            "CustomActionId" JSON..= customActionId, "Name" JSON..= name,
                            "Trigger" JSON..= trigger]
                           (Prelude.catMaybes [(JSON..=) "Status" Prelude.<$> status]))}
instance JSON.ToJSON VisualCustomActionProperty where
  toJSON VisualCustomActionProperty {..}
    = JSON.object
        (Prelude.fromList
           ((Prelude.<>)
              ["ActionOperations" JSON..= actionOperations,
               "CustomActionId" JSON..= customActionId, "Name" JSON..= name,
               "Trigger" JSON..= trigger]
              (Prelude.catMaybes [(JSON..=) "Status" Prelude.<$> status])))
instance Property "ActionOperations" VisualCustomActionProperty where
  type PropertyType "ActionOperations" VisualCustomActionProperty = [VisualCustomActionOperationProperty]
  set newValue VisualCustomActionProperty {..}
    = VisualCustomActionProperty {actionOperations = newValue, ..}
instance Property "CustomActionId" VisualCustomActionProperty where
  type PropertyType "CustomActionId" VisualCustomActionProperty = Value Prelude.Text
  set newValue VisualCustomActionProperty {..}
    = VisualCustomActionProperty {customActionId = newValue, ..}
instance Property "Name" VisualCustomActionProperty where
  type PropertyType "Name" VisualCustomActionProperty = Value Prelude.Text
  set newValue VisualCustomActionProperty {..}
    = VisualCustomActionProperty {name = newValue, ..}
instance Property "Status" VisualCustomActionProperty where
  type PropertyType "Status" VisualCustomActionProperty = Value Prelude.Text
  set newValue VisualCustomActionProperty {..}
    = VisualCustomActionProperty {status = Prelude.pure newValue, ..}
instance Property "Trigger" VisualCustomActionProperty where
  type PropertyType "Trigger" VisualCustomActionProperty = Value Prelude.Text
  set newValue VisualCustomActionProperty {..}
    = VisualCustomActionProperty {trigger = newValue, ..}