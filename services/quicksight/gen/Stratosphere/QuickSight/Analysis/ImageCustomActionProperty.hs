module Stratosphere.QuickSight.Analysis.ImageCustomActionProperty (
        module Exports, ImageCustomActionProperty(..),
        mkImageCustomActionProperty
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import {-# SOURCE #-} Stratosphere.QuickSight.Analysis.ImageCustomActionOperationProperty as Exports
import Stratosphere.ResourceProperties
import Stratosphere.Value
data ImageCustomActionProperty
  = -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-quicksight-analysis-imagecustomaction.html>
    ImageCustomActionProperty {haddock_workaround_ :: (),
                               -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-quicksight-analysis-imagecustomaction.html#cfn-quicksight-analysis-imagecustomaction-actionoperations>
                               actionOperations :: [ImageCustomActionOperationProperty],
                               -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-quicksight-analysis-imagecustomaction.html#cfn-quicksight-analysis-imagecustomaction-customactionid>
                               customActionId :: (Value Prelude.Text),
                               -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-quicksight-analysis-imagecustomaction.html#cfn-quicksight-analysis-imagecustomaction-name>
                               name :: (Value Prelude.Text),
                               -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-quicksight-analysis-imagecustomaction.html#cfn-quicksight-analysis-imagecustomaction-status>
                               status :: (Prelude.Maybe (Value Prelude.Text)),
                               -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-quicksight-analysis-imagecustomaction.html#cfn-quicksight-analysis-imagecustomaction-trigger>
                               trigger :: (Value Prelude.Text)}
  deriving stock (Prelude.Eq, Prelude.Show)
mkImageCustomActionProperty ::
  [ImageCustomActionOperationProperty]
  -> Value Prelude.Text
     -> Value Prelude.Text
        -> Value Prelude.Text -> ImageCustomActionProperty
mkImageCustomActionProperty
  actionOperations
  customActionId
  name
  trigger
  = ImageCustomActionProperty
      {haddock_workaround_ = (), actionOperations = actionOperations,
       customActionId = customActionId, name = name, trigger = trigger,
       status = Prelude.Nothing}
instance ToResourceProperties ImageCustomActionProperty where
  toResourceProperties ImageCustomActionProperty {..}
    = ResourceProperties
        {awsType = "AWS::QuickSight::Analysis.ImageCustomAction",
         supportsTags = Prelude.False,
         properties = Prelude.fromList
                        ((Prelude.<>)
                           ["ActionOperations" JSON..= actionOperations,
                            "CustomActionId" JSON..= customActionId, "Name" JSON..= name,
                            "Trigger" JSON..= trigger]
                           (Prelude.catMaybes [(JSON..=) "Status" Prelude.<$> status]))}
instance JSON.ToJSON ImageCustomActionProperty where
  toJSON ImageCustomActionProperty {..}
    = JSON.object
        (Prelude.fromList
           ((Prelude.<>)
              ["ActionOperations" JSON..= actionOperations,
               "CustomActionId" JSON..= customActionId, "Name" JSON..= name,
               "Trigger" JSON..= trigger]
              (Prelude.catMaybes [(JSON..=) "Status" Prelude.<$> status])))
instance Property "ActionOperations" ImageCustomActionProperty where
  type PropertyType "ActionOperations" ImageCustomActionProperty = [ImageCustomActionOperationProperty]
  set newValue ImageCustomActionProperty {..}
    = ImageCustomActionProperty {actionOperations = newValue, ..}
instance Property "CustomActionId" ImageCustomActionProperty where
  type PropertyType "CustomActionId" ImageCustomActionProperty = Value Prelude.Text
  set newValue ImageCustomActionProperty {..}
    = ImageCustomActionProperty {customActionId = newValue, ..}
instance Property "Name" ImageCustomActionProperty where
  type PropertyType "Name" ImageCustomActionProperty = Value Prelude.Text
  set newValue ImageCustomActionProperty {..}
    = ImageCustomActionProperty {name = newValue, ..}
instance Property "Status" ImageCustomActionProperty where
  type PropertyType "Status" ImageCustomActionProperty = Value Prelude.Text
  set newValue ImageCustomActionProperty {..}
    = ImageCustomActionProperty {status = Prelude.pure newValue, ..}
instance Property "Trigger" ImageCustomActionProperty where
  type PropertyType "Trigger" ImageCustomActionProperty = Value Prelude.Text
  set newValue ImageCustomActionProperty {..}
    = ImageCustomActionProperty {trigger = newValue, ..}