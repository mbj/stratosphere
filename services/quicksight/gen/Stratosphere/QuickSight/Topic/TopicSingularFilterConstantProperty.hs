module Stratosphere.QuickSight.Topic.TopicSingularFilterConstantProperty (
        TopicSingularFilterConstantProperty(..),
        mkTopicSingularFilterConstantProperty
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import Stratosphere.ResourceProperties
import Stratosphere.Value
data TopicSingularFilterConstantProperty
  = -- |See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-quicksight-topic-topicsingularfilterconstant.html>
    TopicSingularFilterConstantProperty {-- |See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-quicksight-topic-topicsingularfilterconstant.html#cfn-quicksight-topic-topicsingularfilterconstant-constanttype>
                                         constantType :: (Prelude.Maybe (Value Prelude.Text)),
                                         -- |See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-quicksight-topic-topicsingularfilterconstant.html#cfn-quicksight-topic-topicsingularfilterconstant-singularconstant>
                                         singularConstant :: (Prelude.Maybe (Value Prelude.Text))}
  deriving stock (Prelude.Eq, Prelude.Show)
mkTopicSingularFilterConstantProperty ::
  TopicSingularFilterConstantProperty
mkTopicSingularFilterConstantProperty
  = TopicSingularFilterConstantProperty
      {constantType = Prelude.Nothing,
       singularConstant = Prelude.Nothing}
instance ToResourceProperties TopicSingularFilterConstantProperty where
  toResourceProperties TopicSingularFilterConstantProperty {..}
    = ResourceProperties
        {awsType = "AWS::QuickSight::Topic.TopicSingularFilterConstant",
         supportsTags = Prelude.False,
         properties = Prelude.fromList
                        (Prelude.catMaybes
                           [(JSON..=) "ConstantType" Prelude.<$> constantType,
                            (JSON..=) "SingularConstant" Prelude.<$> singularConstant])}
instance JSON.ToJSON TopicSingularFilterConstantProperty where
  toJSON TopicSingularFilterConstantProperty {..}
    = JSON.object
        (Prelude.fromList
           (Prelude.catMaybes
              [(JSON..=) "ConstantType" Prelude.<$> constantType,
               (JSON..=) "SingularConstant" Prelude.<$> singularConstant]))
instance Property "ConstantType" TopicSingularFilterConstantProperty where
  type PropertyType "ConstantType" TopicSingularFilterConstantProperty = Value Prelude.Text
  set newValue TopicSingularFilterConstantProperty {..}
    = TopicSingularFilterConstantProperty
        {constantType = Prelude.pure newValue, ..}
instance Property "SingularConstant" TopicSingularFilterConstantProperty where
  type PropertyType "SingularConstant" TopicSingularFilterConstantProperty = Value Prelude.Text
  set newValue TopicSingularFilterConstantProperty {..}
    = TopicSingularFilterConstantProperty
        {singularConstant = Prelude.pure newValue, ..}