module Stratosphere.ImageBuilder.LifecyclePolicy.ActionProperty (
        module Exports, ActionProperty(..), mkActionProperty
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import {-# SOURCE #-} Stratosphere.ImageBuilder.LifecyclePolicy.IncludeResourcesProperty as Exports
import Stratosphere.ResourceProperties
import Stratosphere.Value
data ActionProperty
  = ActionProperty {includeResources :: (Prelude.Maybe IncludeResourcesProperty),
                    type' :: (Value Prelude.Text)}
  deriving stock (Prelude.Eq, Prelude.Show)
mkActionProperty :: Value Prelude.Text -> ActionProperty
mkActionProperty type'
  = ActionProperty
      {type' = type', includeResources = Prelude.Nothing}
instance ToResourceProperties ActionProperty where
  toResourceProperties ActionProperty {..}
    = ResourceProperties
        {awsType = "AWS::ImageBuilder::LifecyclePolicy.Action",
         supportsTags = Prelude.False,
         properties = Prelude.fromList
                        ((Prelude.<>)
                           ["Type" JSON..= type']
                           (Prelude.catMaybes
                              [(JSON..=) "IncludeResources" Prelude.<$> includeResources]))}
instance JSON.ToJSON ActionProperty where
  toJSON ActionProperty {..}
    = JSON.object
        (Prelude.fromList
           ((Prelude.<>)
              ["Type" JSON..= type']
              (Prelude.catMaybes
                 [(JSON..=) "IncludeResources" Prelude.<$> includeResources])))
instance Property "IncludeResources" ActionProperty where
  type PropertyType "IncludeResources" ActionProperty = IncludeResourcesProperty
  set newValue ActionProperty {..}
    = ActionProperty {includeResources = Prelude.pure newValue, ..}
instance Property "Type" ActionProperty where
  type PropertyType "Type" ActionProperty = Value Prelude.Text
  set newValue ActionProperty {..}
    = ActionProperty {type' = newValue, ..}