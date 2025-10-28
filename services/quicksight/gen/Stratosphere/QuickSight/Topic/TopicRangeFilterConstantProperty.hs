module Stratosphere.QuickSight.Topic.TopicRangeFilterConstantProperty (
        module Exports, TopicRangeFilterConstantProperty(..),
        mkTopicRangeFilterConstantProperty
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import {-# SOURCE #-} Stratosphere.QuickSight.Topic.RangeConstantProperty as Exports
import Stratosphere.ResourceProperties
import Stratosphere.Value
data TopicRangeFilterConstantProperty
  = -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-quicksight-topic-topicrangefilterconstant.html>
    TopicRangeFilterConstantProperty {haddock_workaround_ :: (),
                                      -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-quicksight-topic-topicrangefilterconstant.html#cfn-quicksight-topic-topicrangefilterconstant-constanttype>
                                      constantType :: (Prelude.Maybe (Value Prelude.Text)),
                                      -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-quicksight-topic-topicrangefilterconstant.html#cfn-quicksight-topic-topicrangefilterconstant-rangeconstant>
                                      rangeConstant :: (Prelude.Maybe RangeConstantProperty)}
  deriving stock (Prelude.Eq, Prelude.Show)
mkTopicRangeFilterConstantProperty ::
  TopicRangeFilterConstantProperty
mkTopicRangeFilterConstantProperty
  = TopicRangeFilterConstantProperty
      {haddock_workaround_ = (), constantType = Prelude.Nothing,
       rangeConstant = Prelude.Nothing}
instance ToResourceProperties TopicRangeFilterConstantProperty where
  toResourceProperties TopicRangeFilterConstantProperty {..}
    = ResourceProperties
        {awsType = "AWS::QuickSight::Topic.TopicRangeFilterConstant",
         supportsTags = Prelude.False,
         properties = Prelude.fromList
                        (Prelude.catMaybes
                           [(JSON..=) "ConstantType" Prelude.<$> constantType,
                            (JSON..=) "RangeConstant" Prelude.<$> rangeConstant])}
instance JSON.ToJSON TopicRangeFilterConstantProperty where
  toJSON TopicRangeFilterConstantProperty {..}
    = JSON.object
        (Prelude.fromList
           (Prelude.catMaybes
              [(JSON..=) "ConstantType" Prelude.<$> constantType,
               (JSON..=) "RangeConstant" Prelude.<$> rangeConstant]))
instance Property "ConstantType" TopicRangeFilterConstantProperty where
  type PropertyType "ConstantType" TopicRangeFilterConstantProperty = Value Prelude.Text
  set newValue TopicRangeFilterConstantProperty {..}
    = TopicRangeFilterConstantProperty
        {constantType = Prelude.pure newValue, ..}
instance Property "RangeConstant" TopicRangeFilterConstantProperty where
  type PropertyType "RangeConstant" TopicRangeFilterConstantProperty = RangeConstantProperty
  set newValue TopicRangeFilterConstantProperty {..}
    = TopicRangeFilterConstantProperty
        {rangeConstant = Prelude.pure newValue, ..}