module Stratosphere.ResourceExplorer2.View (
        module Exports, View(..), mkView
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import {-# SOURCE #-} Stratosphere.ResourceExplorer2.View.FiltersProperty as Exports
import {-# SOURCE #-} Stratosphere.ResourceExplorer2.View.IncludedPropertyProperty as Exports
import Stratosphere.ResourceProperties
import Stratosphere.Value
data View
  = View {filters :: (Prelude.Maybe FiltersProperty),
          includedProperties :: (Prelude.Maybe [IncludedPropertyProperty]),
          tags :: (Prelude.Maybe (Prelude.Map Prelude.Text (Value Prelude.Text))),
          viewName :: (Value Prelude.Text)}
  deriving stock (Prelude.Eq, Prelude.Show)
mkView :: Value Prelude.Text -> View
mkView viewName
  = View
      {viewName = viewName, filters = Prelude.Nothing,
       includedProperties = Prelude.Nothing, tags = Prelude.Nothing}
instance ToResourceProperties View where
  toResourceProperties View {..}
    = ResourceProperties
        {awsType = "AWS::ResourceExplorer2::View",
         supportsTags = Prelude.True,
         properties = Prelude.fromList
                        ((Prelude.<>)
                           ["ViewName" JSON..= viewName]
                           (Prelude.catMaybes
                              [(JSON..=) "Filters" Prelude.<$> filters,
                               (JSON..=) "IncludedProperties" Prelude.<$> includedProperties,
                               (JSON..=) "Tags" Prelude.<$> tags]))}
instance JSON.ToJSON View where
  toJSON View {..}
    = JSON.object
        (Prelude.fromList
           ((Prelude.<>)
              ["ViewName" JSON..= viewName]
              (Prelude.catMaybes
                 [(JSON..=) "Filters" Prelude.<$> filters,
                  (JSON..=) "IncludedProperties" Prelude.<$> includedProperties,
                  (JSON..=) "Tags" Prelude.<$> tags])))
instance Property "Filters" View where
  type PropertyType "Filters" View = FiltersProperty
  set newValue View {..} = View {filters = Prelude.pure newValue, ..}
instance Property "IncludedProperties" View where
  type PropertyType "IncludedProperties" View = [IncludedPropertyProperty]
  set newValue View {..}
    = View {includedProperties = Prelude.pure newValue, ..}
instance Property "Tags" View where
  type PropertyType "Tags" View = Prelude.Map Prelude.Text (Value Prelude.Text)
  set newValue View {..} = View {tags = Prelude.pure newValue, ..}
instance Property "ViewName" View where
  type PropertyType "ViewName" View = Value Prelude.Text
  set newValue View {..} = View {viewName = newValue, ..}