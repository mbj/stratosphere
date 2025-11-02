module Stratosphere.Pinpoint.Segment.BehaviorProperty (
        module Exports, BehaviorProperty(..), mkBehaviorProperty
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import {-# SOURCE #-} Stratosphere.Pinpoint.Segment.RecencyProperty as Exports
import Stratosphere.ResourceProperties
data BehaviorProperty
  = -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-pinpoint-segment-segmentdimensions-behavior.html>
    BehaviorProperty {haddock_workaround_ :: (),
                      -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-pinpoint-segment-segmentdimensions-behavior.html#cfn-pinpoint-segment-segmentdimensions-behavior-recency>
                      recency :: (Prelude.Maybe RecencyProperty)}
  deriving stock (Prelude.Eq, Prelude.Show)
mkBehaviorProperty :: BehaviorProperty
mkBehaviorProperty
  = BehaviorProperty
      {haddock_workaround_ = (), recency = Prelude.Nothing}
instance ToResourceProperties BehaviorProperty where
  toResourceProperties BehaviorProperty {..}
    = ResourceProperties
        {awsType = "AWS::Pinpoint::Segment.Behavior",
         supportsTags = Prelude.False,
         properties = Prelude.fromList
                        (Prelude.catMaybes [(JSON..=) "Recency" Prelude.<$> recency])}
instance JSON.ToJSON BehaviorProperty where
  toJSON BehaviorProperty {..}
    = JSON.object
        (Prelude.fromList
           (Prelude.catMaybes [(JSON..=) "Recency" Prelude.<$> recency]))
instance Property "Recency" BehaviorProperty where
  type PropertyType "Recency" BehaviorProperty = RecencyProperty
  set newValue BehaviorProperty {..}
    = BehaviorProperty {recency = Prelude.pure newValue, ..}