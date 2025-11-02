module Stratosphere.QuickSight.Topic.TopicNumericEqualityFilterProperty (
        module Exports, TopicNumericEqualityFilterProperty(..),
        mkTopicNumericEqualityFilterProperty
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import {-# SOURCE #-} Stratosphere.QuickSight.Topic.TopicSingularFilterConstantProperty as Exports
import Stratosphere.ResourceProperties
import Stratosphere.Value
data TopicNumericEqualityFilterProperty
  = -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-quicksight-topic-topicnumericequalityfilter.html>
    TopicNumericEqualityFilterProperty {haddock_workaround_ :: (),
                                        -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-quicksight-topic-topicnumericequalityfilter.html#cfn-quicksight-topic-topicnumericequalityfilter-aggregation>
                                        aggregation :: (Prelude.Maybe (Value Prelude.Text)),
                                        -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-quicksight-topic-topicnumericequalityfilter.html#cfn-quicksight-topic-topicnumericequalityfilter-constant>
                                        constant :: (Prelude.Maybe TopicSingularFilterConstantProperty)}
  deriving stock (Prelude.Eq, Prelude.Show)
mkTopicNumericEqualityFilterProperty ::
  TopicNumericEqualityFilterProperty
mkTopicNumericEqualityFilterProperty
  = TopicNumericEqualityFilterProperty
      {haddock_workaround_ = (), aggregation = Prelude.Nothing,
       constant = Prelude.Nothing}
instance ToResourceProperties TopicNumericEqualityFilterProperty where
  toResourceProperties TopicNumericEqualityFilterProperty {..}
    = ResourceProperties
        {awsType = "AWS::QuickSight::Topic.TopicNumericEqualityFilter",
         supportsTags = Prelude.False,
         properties = Prelude.fromList
                        (Prelude.catMaybes
                           [(JSON..=) "Aggregation" Prelude.<$> aggregation,
                            (JSON..=) "Constant" Prelude.<$> constant])}
instance JSON.ToJSON TopicNumericEqualityFilterProperty where
  toJSON TopicNumericEqualityFilterProperty {..}
    = JSON.object
        (Prelude.fromList
           (Prelude.catMaybes
              [(JSON..=) "Aggregation" Prelude.<$> aggregation,
               (JSON..=) "Constant" Prelude.<$> constant]))
instance Property "Aggregation" TopicNumericEqualityFilterProperty where
  type PropertyType "Aggregation" TopicNumericEqualityFilterProperty = Value Prelude.Text
  set newValue TopicNumericEqualityFilterProperty {..}
    = TopicNumericEqualityFilterProperty
        {aggregation = Prelude.pure newValue, ..}
instance Property "Constant" TopicNumericEqualityFilterProperty where
  type PropertyType "Constant" TopicNumericEqualityFilterProperty = TopicSingularFilterConstantProperty
  set newValue TopicNumericEqualityFilterProperty {..}
    = TopicNumericEqualityFilterProperty
        {constant = Prelude.pure newValue, ..}