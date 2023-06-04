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
  = TopicCategoryFilterProperty {categoryFilterFunction :: (Prelude.Maybe (Value Prelude.Text)),
                                 categoryFilterType :: (Prelude.Maybe (Value Prelude.Text)),
                                 constant :: (Prelude.Maybe TopicCategoryFilterConstantProperty),
                                 inverse :: (Prelude.Maybe (Value Prelude.Bool))}
mkTopicCategoryFilterProperty :: TopicCategoryFilterProperty
mkTopicCategoryFilterProperty
  = TopicCategoryFilterProperty
      {categoryFilterFunction = Prelude.Nothing,
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