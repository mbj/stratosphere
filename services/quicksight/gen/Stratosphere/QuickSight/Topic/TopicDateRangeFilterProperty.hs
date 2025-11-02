module Stratosphere.QuickSight.Topic.TopicDateRangeFilterProperty (
        module Exports, TopicDateRangeFilterProperty(..),
        mkTopicDateRangeFilterProperty
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import {-# SOURCE #-} Stratosphere.QuickSight.Topic.TopicRangeFilterConstantProperty as Exports
import Stratosphere.ResourceProperties
import Stratosphere.Value
data TopicDateRangeFilterProperty
  = -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-quicksight-topic-topicdaterangefilter.html>
    TopicDateRangeFilterProperty {haddock_workaround_ :: (),
                                  -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-quicksight-topic-topicdaterangefilter.html#cfn-quicksight-topic-topicdaterangefilter-constant>
                                  constant :: (Prelude.Maybe TopicRangeFilterConstantProperty),
                                  -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-quicksight-topic-topicdaterangefilter.html#cfn-quicksight-topic-topicdaterangefilter-inclusive>
                                  inclusive :: (Prelude.Maybe (Value Prelude.Bool))}
  deriving stock (Prelude.Eq, Prelude.Show)
mkTopicDateRangeFilterProperty :: TopicDateRangeFilterProperty
mkTopicDateRangeFilterProperty
  = TopicDateRangeFilterProperty
      {haddock_workaround_ = (), constant = Prelude.Nothing,
       inclusive = Prelude.Nothing}
instance ToResourceProperties TopicDateRangeFilterProperty where
  toResourceProperties TopicDateRangeFilterProperty {..}
    = ResourceProperties
        {awsType = "AWS::QuickSight::Topic.TopicDateRangeFilter",
         supportsTags = Prelude.False,
         properties = Prelude.fromList
                        (Prelude.catMaybes
                           [(JSON..=) "Constant" Prelude.<$> constant,
                            (JSON..=) "Inclusive" Prelude.<$> inclusive])}
instance JSON.ToJSON TopicDateRangeFilterProperty where
  toJSON TopicDateRangeFilterProperty {..}
    = JSON.object
        (Prelude.fromList
           (Prelude.catMaybes
              [(JSON..=) "Constant" Prelude.<$> constant,
               (JSON..=) "Inclusive" Prelude.<$> inclusive]))
instance Property "Constant" TopicDateRangeFilterProperty where
  type PropertyType "Constant" TopicDateRangeFilterProperty = TopicRangeFilterConstantProperty
  set newValue TopicDateRangeFilterProperty {..}
    = TopicDateRangeFilterProperty
        {constant = Prelude.pure newValue, ..}
instance Property "Inclusive" TopicDateRangeFilterProperty where
  type PropertyType "Inclusive" TopicDateRangeFilterProperty = Value Prelude.Bool
  set newValue TopicDateRangeFilterProperty {..}
    = TopicDateRangeFilterProperty
        {inclusive = Prelude.pure newValue, ..}