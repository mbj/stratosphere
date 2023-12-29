module Stratosphere.MediaConvert.Queue (
        Queue(..), mkQueue
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import Stratosphere.ResourceProperties
import Stratosphere.Value
data Queue
  = Queue {description :: (Prelude.Maybe (Value Prelude.Text)),
           name :: (Prelude.Maybe (Value Prelude.Text)),
           pricingPlan :: (Prelude.Maybe (Value Prelude.Text)),
           status :: (Prelude.Maybe (Value Prelude.Text)),
           tags :: (Prelude.Maybe JSON.Object)}
  deriving stock (Prelude.Eq, Prelude.Show)
mkQueue :: Queue
mkQueue
  = Queue
      {description = Prelude.Nothing, name = Prelude.Nothing,
       pricingPlan = Prelude.Nothing, status = Prelude.Nothing,
       tags = Prelude.Nothing}
instance ToResourceProperties Queue where
  toResourceProperties Queue {..}
    = ResourceProperties
        {awsType = "AWS::MediaConvert::Queue", supportsTags = Prelude.True,
         properties = Prelude.fromList
                        (Prelude.catMaybes
                           [(JSON..=) "Description" Prelude.<$> description,
                            (JSON..=) "Name" Prelude.<$> name,
                            (JSON..=) "PricingPlan" Prelude.<$> pricingPlan,
                            (JSON..=) "Status" Prelude.<$> status,
                            (JSON..=) "Tags" Prelude.<$> tags])}
instance JSON.ToJSON Queue where
  toJSON Queue {..}
    = JSON.object
        (Prelude.fromList
           (Prelude.catMaybes
              [(JSON..=) "Description" Prelude.<$> description,
               (JSON..=) "Name" Prelude.<$> name,
               (JSON..=) "PricingPlan" Prelude.<$> pricingPlan,
               (JSON..=) "Status" Prelude.<$> status,
               (JSON..=) "Tags" Prelude.<$> tags]))
instance Property "Description" Queue where
  type PropertyType "Description" Queue = Value Prelude.Text
  set newValue Queue {..}
    = Queue {description = Prelude.pure newValue, ..}
instance Property "Name" Queue where
  type PropertyType "Name" Queue = Value Prelude.Text
  set newValue Queue {..} = Queue {name = Prelude.pure newValue, ..}
instance Property "PricingPlan" Queue where
  type PropertyType "PricingPlan" Queue = Value Prelude.Text
  set newValue Queue {..}
    = Queue {pricingPlan = Prelude.pure newValue, ..}
instance Property "Status" Queue where
  type PropertyType "Status" Queue = Value Prelude.Text
  set newValue Queue {..}
    = Queue {status = Prelude.pure newValue, ..}
instance Property "Tags" Queue where
  type PropertyType "Tags" Queue = JSON.Object
  set newValue Queue {..} = Queue {tags = Prelude.pure newValue, ..}