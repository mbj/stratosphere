module Stratosphere.ResourceExplorer2.View (
        module Exports, View(..), mkView
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import {-# SOURCE #-} Stratosphere.ResourceExplorer2.View.IncludedPropertyProperty as Exports
import {-# SOURCE #-} Stratosphere.ResourceExplorer2.View.SearchFilterProperty as Exports
import Stratosphere.ResourceProperties
import Stratosphere.Value
data View
  = -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-resourceexplorer2-view.html>
    View {haddock_workaround_ :: (),
          -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-resourceexplorer2-view.html#cfn-resourceexplorer2-view-filters>
          filters :: (Prelude.Maybe SearchFilterProperty),
          -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-resourceexplorer2-view.html#cfn-resourceexplorer2-view-includedproperties>
          includedProperties :: (Prelude.Maybe [IncludedPropertyProperty]),
          -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-resourceexplorer2-view.html#cfn-resourceexplorer2-view-scope>
          scope :: (Prelude.Maybe (Value Prelude.Text)),
          -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-resourceexplorer2-view.html#cfn-resourceexplorer2-view-tags>
          tags :: (Prelude.Maybe (Prelude.Map Prelude.Text (Value Prelude.Text))),
          -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-resourceexplorer2-view.html#cfn-resourceexplorer2-view-viewname>
          viewName :: (Value Prelude.Text)}
  deriving stock (Prelude.Eq, Prelude.Show)
mkView :: Value Prelude.Text -> View
mkView viewName
  = View
      {haddock_workaround_ = (), viewName = viewName,
       filters = Prelude.Nothing, includedProperties = Prelude.Nothing,
       scope = Prelude.Nothing, tags = Prelude.Nothing}
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
                               (JSON..=) "Scope" Prelude.<$> scope,
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
                  (JSON..=) "Scope" Prelude.<$> scope,
                  (JSON..=) "Tags" Prelude.<$> tags])))
instance Property "Filters" View where
  type PropertyType "Filters" View = SearchFilterProperty
  set newValue View {..} = View {filters = Prelude.pure newValue, ..}
instance Property "IncludedProperties" View where
  type PropertyType "IncludedProperties" View = [IncludedPropertyProperty]
  set newValue View {..}
    = View {includedProperties = Prelude.pure newValue, ..}
instance Property "Scope" View where
  type PropertyType "Scope" View = Value Prelude.Text
  set newValue View {..} = View {scope = Prelude.pure newValue, ..}
instance Property "Tags" View where
  type PropertyType "Tags" View = Prelude.Map Prelude.Text (Value Prelude.Text)
  set newValue View {..} = View {tags = Prelude.pure newValue, ..}
instance Property "ViewName" View where
  type PropertyType "ViewName" View = Value Prelude.Text
  set newValue View {..} = View {viewName = newValue, ..}