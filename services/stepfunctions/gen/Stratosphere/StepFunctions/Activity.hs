module Stratosphere.StepFunctions.Activity (
        module Exports, Activity(..), mkActivity
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import {-# SOURCE #-} Stratosphere.StepFunctions.Activity.TagsEntryProperty as Exports
import Stratosphere.ResourceProperties
import Stratosphere.Value
data Activity
  = Activity {name :: (Value Prelude.Text),
              tags :: (Prelude.Maybe [TagsEntryProperty])}
mkActivity :: Value Prelude.Text -> Activity
mkActivity name = Activity {name = name, tags = Prelude.Nothing}
instance ToResourceProperties Activity where
  toResourceProperties Activity {..}
    = ResourceProperties
        {awsType = "AWS::StepFunctions::Activity",
         properties = Prelude.fromList
                        ((Prelude.<>)
                           ["Name" JSON..= name]
                           (Prelude.catMaybes [(JSON..=) "Tags" Prelude.<$> tags]))}
instance JSON.ToJSON Activity where
  toJSON Activity {..}
    = JSON.object
        (Prelude.fromList
           ((Prelude.<>)
              ["Name" JSON..= name]
              (Prelude.catMaybes [(JSON..=) "Tags" Prelude.<$> tags])))
instance Property "Name" Activity where
  type PropertyType "Name" Activity = Value Prelude.Text
  set newValue Activity {..} = Activity {name = newValue, ..}
instance Property "Tags" Activity where
  type PropertyType "Tags" Activity = [TagsEntryProperty]
  set newValue Activity {..}
    = Activity {tags = Prelude.pure newValue, ..}