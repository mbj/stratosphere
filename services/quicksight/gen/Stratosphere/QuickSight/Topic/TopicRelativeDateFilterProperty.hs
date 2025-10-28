module Stratosphere.QuickSight.Topic.TopicRelativeDateFilterProperty (
        module Exports, TopicRelativeDateFilterProperty(..),
        mkTopicRelativeDateFilterProperty
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import {-# SOURCE #-} Stratosphere.QuickSight.Topic.TopicSingularFilterConstantProperty as Exports
import Stratosphere.ResourceProperties
import Stratosphere.Value
data TopicRelativeDateFilterProperty
  = -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-quicksight-topic-topicrelativedatefilter.html>
    TopicRelativeDateFilterProperty {haddock_workaround_ :: (),
                                     -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-quicksight-topic-topicrelativedatefilter.html#cfn-quicksight-topic-topicrelativedatefilter-constant>
                                     constant :: (Prelude.Maybe TopicSingularFilterConstantProperty),
                                     -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-quicksight-topic-topicrelativedatefilter.html#cfn-quicksight-topic-topicrelativedatefilter-relativedatefilterfunction>
                                     relativeDateFilterFunction :: (Prelude.Maybe (Value Prelude.Text)),
                                     -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-quicksight-topic-topicrelativedatefilter.html#cfn-quicksight-topic-topicrelativedatefilter-timegranularity>
                                     timeGranularity :: (Prelude.Maybe (Value Prelude.Text))}
  deriving stock (Prelude.Eq, Prelude.Show)
mkTopicRelativeDateFilterProperty ::
  TopicRelativeDateFilterProperty
mkTopicRelativeDateFilterProperty
  = TopicRelativeDateFilterProperty
      {haddock_workaround_ = (), constant = Prelude.Nothing,
       relativeDateFilterFunction = Prelude.Nothing,
       timeGranularity = Prelude.Nothing}
instance ToResourceProperties TopicRelativeDateFilterProperty where
  toResourceProperties TopicRelativeDateFilterProperty {..}
    = ResourceProperties
        {awsType = "AWS::QuickSight::Topic.TopicRelativeDateFilter",
         supportsTags = Prelude.False,
         properties = Prelude.fromList
                        (Prelude.catMaybes
                           [(JSON..=) "Constant" Prelude.<$> constant,
                            (JSON..=) "RelativeDateFilterFunction"
                              Prelude.<$> relativeDateFilterFunction,
                            (JSON..=) "TimeGranularity" Prelude.<$> timeGranularity])}
instance JSON.ToJSON TopicRelativeDateFilterProperty where
  toJSON TopicRelativeDateFilterProperty {..}
    = JSON.object
        (Prelude.fromList
           (Prelude.catMaybes
              [(JSON..=) "Constant" Prelude.<$> constant,
               (JSON..=) "RelativeDateFilterFunction"
                 Prelude.<$> relativeDateFilterFunction,
               (JSON..=) "TimeGranularity" Prelude.<$> timeGranularity]))
instance Property "Constant" TopicRelativeDateFilterProperty where
  type PropertyType "Constant" TopicRelativeDateFilterProperty = TopicSingularFilterConstantProperty
  set newValue TopicRelativeDateFilterProperty {..}
    = TopicRelativeDateFilterProperty
        {constant = Prelude.pure newValue, ..}
instance Property "RelativeDateFilterFunction" TopicRelativeDateFilterProperty where
  type PropertyType "RelativeDateFilterFunction" TopicRelativeDateFilterProperty = Value Prelude.Text
  set newValue TopicRelativeDateFilterProperty {..}
    = TopicRelativeDateFilterProperty
        {relativeDateFilterFunction = Prelude.pure newValue, ..}
instance Property "TimeGranularity" TopicRelativeDateFilterProperty where
  type PropertyType "TimeGranularity" TopicRelativeDateFilterProperty = Value Prelude.Text
  set newValue TopicRelativeDateFilterProperty {..}
    = TopicRelativeDateFilterProperty
        {timeGranularity = Prelude.pure newValue, ..}