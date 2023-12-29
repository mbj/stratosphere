module Stratosphere.QuickSight.Template.GridLayoutConfigurationProperty (
        module Exports, GridLayoutConfigurationProperty(..),
        mkGridLayoutConfigurationProperty
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import {-# SOURCE #-} Stratosphere.QuickSight.Template.GridLayoutCanvasSizeOptionsProperty as Exports
import {-# SOURCE #-} Stratosphere.QuickSight.Template.GridLayoutElementProperty as Exports
import Stratosphere.ResourceProperties
data GridLayoutConfigurationProperty
  = GridLayoutConfigurationProperty {canvasSizeOptions :: (Prelude.Maybe GridLayoutCanvasSizeOptionsProperty),
                                     elements :: [GridLayoutElementProperty]}
  deriving stock (Prelude.Eq, Prelude.Show)
mkGridLayoutConfigurationProperty ::
  [GridLayoutElementProperty] -> GridLayoutConfigurationProperty
mkGridLayoutConfigurationProperty elements
  = GridLayoutConfigurationProperty
      {elements = elements, canvasSizeOptions = Prelude.Nothing}
instance ToResourceProperties GridLayoutConfigurationProperty where
  toResourceProperties GridLayoutConfigurationProperty {..}
    = ResourceProperties
        {awsType = "AWS::QuickSight::Template.GridLayoutConfiguration",
         supportsTags = Prelude.False,
         properties = Prelude.fromList
                        ((Prelude.<>)
                           ["Elements" JSON..= elements]
                           (Prelude.catMaybes
                              [(JSON..=) "CanvasSizeOptions" Prelude.<$> canvasSizeOptions]))}
instance JSON.ToJSON GridLayoutConfigurationProperty where
  toJSON GridLayoutConfigurationProperty {..}
    = JSON.object
        (Prelude.fromList
           ((Prelude.<>)
              ["Elements" JSON..= elements]
              (Prelude.catMaybes
                 [(JSON..=) "CanvasSizeOptions" Prelude.<$> canvasSizeOptions])))
instance Property "CanvasSizeOptions" GridLayoutConfigurationProperty where
  type PropertyType "CanvasSizeOptions" GridLayoutConfigurationProperty = GridLayoutCanvasSizeOptionsProperty
  set newValue GridLayoutConfigurationProperty {..}
    = GridLayoutConfigurationProperty
        {canvasSizeOptions = Prelude.pure newValue, ..}
instance Property "Elements" GridLayoutConfigurationProperty where
  type PropertyType "Elements" GridLayoutConfigurationProperty = [GridLayoutElementProperty]
  set newValue GridLayoutConfigurationProperty {..}
    = GridLayoutConfigurationProperty {elements = newValue, ..}