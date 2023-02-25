module Stratosphere.ResourceGroups.Group.ResourceQueryProperty (
        module Exports, ResourceQueryProperty(..), mkResourceQueryProperty
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import {-# SOURCE #-} Stratosphere.ResourceGroups.Group.QueryProperty as Exports
import Stratosphere.ResourceProperties
import Stratosphere.Value
data ResourceQueryProperty
  = ResourceQueryProperty {query :: (Prelude.Maybe QueryProperty),
                           type' :: (Prelude.Maybe (Value Prelude.Text))}
mkResourceQueryProperty :: ResourceQueryProperty
mkResourceQueryProperty
  = ResourceQueryProperty
      {query = Prelude.Nothing, type' = Prelude.Nothing}
instance ToResourceProperties ResourceQueryProperty where
  toResourceProperties ResourceQueryProperty {..}
    = ResourceProperties
        {awsType = "AWS::ResourceGroups::Group.ResourceQuery",
         properties = Prelude.fromList
                        (Prelude.catMaybes
                           [(JSON..=) "Query" Prelude.<$> query,
                            (JSON..=) "Type" Prelude.<$> type'])}
instance JSON.ToJSON ResourceQueryProperty where
  toJSON ResourceQueryProperty {..}
    = JSON.object
        (Prelude.fromList
           (Prelude.catMaybes
              [(JSON..=) "Query" Prelude.<$> query,
               (JSON..=) "Type" Prelude.<$> type']))
instance Property "Query" ResourceQueryProperty where
  type PropertyType "Query" ResourceQueryProperty = QueryProperty
  set newValue ResourceQueryProperty {..}
    = ResourceQueryProperty {query = Prelude.pure newValue, ..}
instance Property "Type" ResourceQueryProperty where
  type PropertyType "Type" ResourceQueryProperty = Value Prelude.Text
  set newValue ResourceQueryProperty {..}
    = ResourceQueryProperty {type' = Prelude.pure newValue, ..}