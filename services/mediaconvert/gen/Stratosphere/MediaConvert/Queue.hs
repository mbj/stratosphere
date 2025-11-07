module Stratosphere.MediaConvert.Queue (
        Queue(..), mkQueue
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import Stratosphere.ResourceProperties
import Stratosphere.Value
data Queue
  = -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-mediaconvert-queue.html>
    Queue {haddock_workaround_ :: (),
           -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-mediaconvert-queue.html#cfn-mediaconvert-queue-concurrentjobs>
           concurrentJobs :: (Prelude.Maybe (Value Prelude.Integer)),
           -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-mediaconvert-queue.html#cfn-mediaconvert-queue-description>
           description :: (Prelude.Maybe (Value Prelude.Text)),
           -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-mediaconvert-queue.html#cfn-mediaconvert-queue-name>
           name :: (Prelude.Maybe (Value Prelude.Text)),
           -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-mediaconvert-queue.html#cfn-mediaconvert-queue-pricingplan>
           pricingPlan :: (Prelude.Maybe (Value Prelude.Text)),
           -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-mediaconvert-queue.html#cfn-mediaconvert-queue-status>
           status :: (Prelude.Maybe (Value Prelude.Text)),
           -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-mediaconvert-queue.html#cfn-mediaconvert-queue-tags>
           tags :: (Prelude.Maybe JSON.Object)}
  deriving stock (Prelude.Eq, Prelude.Show)
mkQueue :: Queue
mkQueue
  = Queue
      {haddock_workaround_ = (), concurrentJobs = Prelude.Nothing,
       description = Prelude.Nothing, name = Prelude.Nothing,
       pricingPlan = Prelude.Nothing, status = Prelude.Nothing,
       tags = Prelude.Nothing}
instance ToResourceProperties Queue where
  toResourceProperties Queue {..}
    = ResourceProperties
        {awsType = "AWS::MediaConvert::Queue", supportsTags = Prelude.True,
         properties = Prelude.fromList
                        (Prelude.catMaybes
                           [(JSON..=) "ConcurrentJobs" Prelude.<$> concurrentJobs,
                            (JSON..=) "Description" Prelude.<$> description,
                            (JSON..=) "Name" Prelude.<$> name,
                            (JSON..=) "PricingPlan" Prelude.<$> pricingPlan,
                            (JSON..=) "Status" Prelude.<$> status,
                            (JSON..=) "Tags" Prelude.<$> tags])}
instance JSON.ToJSON Queue where
  toJSON Queue {..}
    = JSON.object
        (Prelude.fromList
           (Prelude.catMaybes
              [(JSON..=) "ConcurrentJobs" Prelude.<$> concurrentJobs,
               (JSON..=) "Description" Prelude.<$> description,
               (JSON..=) "Name" Prelude.<$> name,
               (JSON..=) "PricingPlan" Prelude.<$> pricingPlan,
               (JSON..=) "Status" Prelude.<$> status,
               (JSON..=) "Tags" Prelude.<$> tags]))
instance Property "ConcurrentJobs" Queue where
  type PropertyType "ConcurrentJobs" Queue = Value Prelude.Integer
  set newValue Queue {..}
    = Queue {concurrentJobs = Prelude.pure newValue, ..}
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