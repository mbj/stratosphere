module Stratosphere.IoTAnalytics.Dataset.ActionProperty (
        module Exports, ActionProperty(..), mkActionProperty
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import {-# SOURCE #-} Stratosphere.IoTAnalytics.Dataset.ContainerActionProperty as Exports
import {-# SOURCE #-} Stratosphere.IoTAnalytics.Dataset.QueryActionProperty as Exports
import Stratosphere.ResourceProperties
import Stratosphere.Value
data ActionProperty
  = -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-iotanalytics-dataset-action.html>
    ActionProperty {haddock_workaround_ :: (),
                    -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-iotanalytics-dataset-action.html#cfn-iotanalytics-dataset-action-actionname>
                    actionName :: (Value Prelude.Text),
                    -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-iotanalytics-dataset-action.html#cfn-iotanalytics-dataset-action-containeraction>
                    containerAction :: (Prelude.Maybe ContainerActionProperty),
                    -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-iotanalytics-dataset-action.html#cfn-iotanalytics-dataset-action-queryaction>
                    queryAction :: (Prelude.Maybe QueryActionProperty)}
  deriving stock (Prelude.Eq, Prelude.Show)
mkActionProperty :: Value Prelude.Text -> ActionProperty
mkActionProperty actionName
  = ActionProperty
      {haddock_workaround_ = (), actionName = actionName,
       containerAction = Prelude.Nothing, queryAction = Prelude.Nothing}
instance ToResourceProperties ActionProperty where
  toResourceProperties ActionProperty {..}
    = ResourceProperties
        {awsType = "AWS::IoTAnalytics::Dataset.Action",
         supportsTags = Prelude.False,
         properties = Prelude.fromList
                        ((Prelude.<>)
                           ["ActionName" JSON..= actionName]
                           (Prelude.catMaybes
                              [(JSON..=) "ContainerAction" Prelude.<$> containerAction,
                               (JSON..=) "QueryAction" Prelude.<$> queryAction]))}
instance JSON.ToJSON ActionProperty where
  toJSON ActionProperty {..}
    = JSON.object
        (Prelude.fromList
           ((Prelude.<>)
              ["ActionName" JSON..= actionName]
              (Prelude.catMaybes
                 [(JSON..=) "ContainerAction" Prelude.<$> containerAction,
                  (JSON..=) "QueryAction" Prelude.<$> queryAction])))
instance Property "ActionName" ActionProperty where
  type PropertyType "ActionName" ActionProperty = Value Prelude.Text
  set newValue ActionProperty {..}
    = ActionProperty {actionName = newValue, ..}
instance Property "ContainerAction" ActionProperty where
  type PropertyType "ContainerAction" ActionProperty = ContainerActionProperty
  set newValue ActionProperty {..}
    = ActionProperty {containerAction = Prelude.pure newValue, ..}
instance Property "QueryAction" ActionProperty where
  type PropertyType "QueryAction" ActionProperty = QueryActionProperty
  set newValue ActionProperty {..}
    = ActionProperty {queryAction = Prelude.pure newValue, ..}