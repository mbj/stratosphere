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
  = ActionProperty {actionName :: (Value Prelude.Text),
                    containerAction :: (Prelude.Maybe ContainerActionProperty),
                    queryAction :: (Prelude.Maybe QueryActionProperty)}
  deriving stock (Prelude.Eq, Prelude.Show)
mkActionProperty :: Value Prelude.Text -> ActionProperty
mkActionProperty actionName
  = ActionProperty
      {actionName = actionName, containerAction = Prelude.Nothing,
       queryAction = Prelude.Nothing}
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