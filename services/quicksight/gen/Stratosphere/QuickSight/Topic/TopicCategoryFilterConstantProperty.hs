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
  = TopicCategoryFilterConstantProperty {collectiveConstant :: (Prelude.Maybe CollectiveConstantProperty),
                                         constantType :: (Prelude.Maybe (Value Prelude.Text)),
                                         singularConstant :: (Prelude.Maybe (Value Prelude.Text))}
mkTopicCategoryFilterConstantProperty ::
  TopicCategoryFilterConstantProperty
mkTopicCategoryFilterConstantProperty
  = TopicCategoryFilterConstantProperty
      {collectiveConstant = Prelude.Nothing,
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