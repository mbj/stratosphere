module Stratosphere.QuickSight.Topic.TopicCategoryFilterConstantProperty (
        module Exports, TopicCategoryFilterConstantProperty(..),
        mkTopicCategoryFilterConstantProperty
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import {-# SOURCE #-} Stratosphere.QuickSight.Topic.CollectiveConstantProperty as Exports
import Stratosphere.ResourceProperties
import Stratosphere.Value
data TopicCategoryFilterConstantProperty
  = -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-quicksight-topic-topiccategoryfilterconstant.html>
    TopicCategoryFilterConstantProperty {haddock_workaround_ :: (),
                                         -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-quicksight-topic-topiccategoryfilterconstant.html#cfn-quicksight-topic-topiccategoryfilterconstant-collectiveconstant>
                                         collectiveConstant :: (Prelude.Maybe CollectiveConstantProperty),
                                         -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-quicksight-topic-topiccategoryfilterconstant.html#cfn-quicksight-topic-topiccategoryfilterconstant-constanttype>
                                         constantType :: (Prelude.Maybe (Value Prelude.Text)),
                                         -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-quicksight-topic-topiccategoryfilterconstant.html#cfn-quicksight-topic-topiccategoryfilterconstant-singularconstant>
                                         singularConstant :: (Prelude.Maybe (Value Prelude.Text))}
  deriving stock (Prelude.Eq, Prelude.Show)
mkTopicCategoryFilterConstantProperty ::
  TopicCategoryFilterConstantProperty
mkTopicCategoryFilterConstantProperty
  = TopicCategoryFilterConstantProperty
      {haddock_workaround_ = (), collectiveConstant = Prelude.Nothing,
       constantType = Prelude.Nothing, singularConstant = Prelude.Nothing}
instance ToResourceProperties TopicCategoryFilterConstantProperty where
  toResourceProperties TopicCategoryFilterConstantProperty {..}
    = ResourceProperties
        {awsType = "AWS::QuickSight::Topic.TopicCategoryFilterConstant",
         supportsTags = Prelude.False,
         properties = Prelude.fromList
                        (Prelude.catMaybes
                           [(JSON..=) "CollectiveConstant" Prelude.<$> collectiveConstant,
                            (JSON..=) "ConstantType" Prelude.<$> constantType,
                            (JSON..=) "SingularConstant" Prelude.<$> singularConstant])}
instance JSON.ToJSON TopicCategoryFilterConstantProperty where
  toJSON TopicCategoryFilterConstantProperty {..}
    = JSON.object
        (Prelude.fromList
           (Prelude.catMaybes
              [(JSON..=) "CollectiveConstant" Prelude.<$> collectiveConstant,
               (JSON..=) "ConstantType" Prelude.<$> constantType,
               (JSON..=) "SingularConstant" Prelude.<$> singularConstant]))
instance Property "CollectiveConstant" TopicCategoryFilterConstantProperty where
  type PropertyType "CollectiveConstant" TopicCategoryFilterConstantProperty = CollectiveConstantProperty
  set newValue TopicCategoryFilterConstantProperty {..}
    = TopicCategoryFilterConstantProperty
        {collectiveConstant = Prelude.pure newValue, ..}
instance Property "ConstantType" TopicCategoryFilterConstantProperty where
  type PropertyType "ConstantType" TopicCategoryFilterConstantProperty = Value Prelude.Text
  set newValue TopicCategoryFilterConstantProperty {..}
    = TopicCategoryFilterConstantProperty
        {constantType = Prelude.pure newValue, ..}
instance Property "SingularConstant" TopicCategoryFilterConstantProperty where
  type PropertyType "SingularConstant" TopicCategoryFilterConstantProperty = Value Prelude.Text
  set newValue TopicCategoryFilterConstantProperty {..}
    = TopicCategoryFilterConstantProperty
        {singularConstant = Prelude.pure newValue, ..}