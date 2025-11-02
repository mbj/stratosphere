module Stratosphere.QuickSight.Topic.TopicCategoryFilterProperty (
        module Exports, TopicCategoryFilterProperty(..),
        mkTopicCategoryFilterProperty
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import {-# SOURCE #-} Stratosphere.QuickSight.Topic.TopicCategoryFilterConstantProperty as Exports
import Stratosphere.ResourceProperties
import Stratosphere.Value
data TopicCategoryFilterProperty
  = -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-quicksight-topic-topiccategoryfilter.html>
    TopicCategoryFilterProperty {haddock_workaround_ :: (),
                                 -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-quicksight-topic-topiccategoryfilter.html#cfn-quicksight-topic-topiccategoryfilter-categoryfilterfunction>
                                 categoryFilterFunction :: (Prelude.Maybe (Value Prelude.Text)),
                                 -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-quicksight-topic-topiccategoryfilter.html#cfn-quicksight-topic-topiccategoryfilter-categoryfiltertype>
                                 categoryFilterType :: (Prelude.Maybe (Value Prelude.Text)),
                                 -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-quicksight-topic-topiccategoryfilter.html#cfn-quicksight-topic-topiccategoryfilter-constant>
                                 constant :: (Prelude.Maybe TopicCategoryFilterConstantProperty),
                                 -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-quicksight-topic-topiccategoryfilter.html#cfn-quicksight-topic-topiccategoryfilter-inverse>
                                 inverse :: (Prelude.Maybe (Value Prelude.Bool))}
  deriving stock (Prelude.Eq, Prelude.Show)
mkTopicCategoryFilterProperty :: TopicCategoryFilterProperty
mkTopicCategoryFilterProperty
  = TopicCategoryFilterProperty
      {haddock_workaround_ = (),
       categoryFilterFunction = Prelude.Nothing,
       categoryFilterType = Prelude.Nothing, constant = Prelude.Nothing,
       inverse = Prelude.Nothing}
instance ToResourceProperties TopicCategoryFilterProperty where
  toResourceProperties TopicCategoryFilterProperty {..}
    = ResourceProperties
        {awsType = "AWS::QuickSight::Topic.TopicCategoryFilter",
         supportsTags = Prelude.False,
         properties = Prelude.fromList
                        (Prelude.catMaybes
                           [(JSON..=) "CategoryFilterFunction"
                              Prelude.<$> categoryFilterFunction,
                            (JSON..=) "CategoryFilterType" Prelude.<$> categoryFilterType,
                            (JSON..=) "Constant" Prelude.<$> constant,
                            (JSON..=) "Inverse" Prelude.<$> inverse])}
instance JSON.ToJSON TopicCategoryFilterProperty where
  toJSON TopicCategoryFilterProperty {..}
    = JSON.object
        (Prelude.fromList
           (Prelude.catMaybes
              [(JSON..=) "CategoryFilterFunction"
                 Prelude.<$> categoryFilterFunction,
               (JSON..=) "CategoryFilterType" Prelude.<$> categoryFilterType,
               (JSON..=) "Constant" Prelude.<$> constant,
               (JSON..=) "Inverse" Prelude.<$> inverse]))
instance Property "CategoryFilterFunction" TopicCategoryFilterProperty where
  type PropertyType "CategoryFilterFunction" TopicCategoryFilterProperty = Value Prelude.Text
  set newValue TopicCategoryFilterProperty {..}
    = TopicCategoryFilterProperty
        {categoryFilterFunction = Prelude.pure newValue, ..}
instance Property "CategoryFilterType" TopicCategoryFilterProperty where
  type PropertyType "CategoryFilterType" TopicCategoryFilterProperty = Value Prelude.Text
  set newValue TopicCategoryFilterProperty {..}
    = TopicCategoryFilterProperty
        {categoryFilterType = Prelude.pure newValue, ..}
instance Property "Constant" TopicCategoryFilterProperty where
  type PropertyType "Constant" TopicCategoryFilterProperty = TopicCategoryFilterConstantProperty
  set newValue TopicCategoryFilterProperty {..}
    = TopicCategoryFilterProperty
        {constant = Prelude.pure newValue, ..}
instance Property "Inverse" TopicCategoryFilterProperty where
  type PropertyType "Inverse" TopicCategoryFilterProperty = Value Prelude.Bool
  set newValue TopicCategoryFilterProperty {..}
    = TopicCategoryFilterProperty {inverse = Prelude.pure newValue, ..}