module Stratosphere.QuickSight.Template.DefaultGridLayoutConfigurationProperty (
        module Exports, DefaultGridLayoutConfigurationProperty(..),
        mkDefaultGridLayoutConfigurationProperty
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import {-# SOURCE #-} Stratosphere.QuickSight.Template.GridLayoutCanvasSizeOptionsProperty as Exports
import Stratosphere.ResourceProperties
data DefaultGridLayoutConfigurationProperty
  = DefaultGridLayoutConfigurationProperty {canvasSizeOptions :: GridLayoutCanvasSizeOptionsProperty}
  deriving stock (Prelude.Eq, Prelude.Show)
mkDefaultGridLayoutConfigurationProperty ::
  GridLayoutCanvasSizeOptionsProperty
  -> DefaultGridLayoutConfigurationProperty
mkDefaultGridLayoutConfigurationProperty canvasSizeOptions
  = DefaultGridLayoutConfigurationProperty
      {canvasSizeOptions = canvasSizeOptions}
instance ToResourceProperties DefaultGridLayoutConfigurationProperty where
  toResourceProperties DefaultGridLayoutConfigurationProperty {..}
    = ResourceProperties
        {awsType = "AWS::QuickSight::Template.DefaultGridLayoutConfiguration",
         supportsTags = Prelude.False,
         properties = ["CanvasSizeOptions" JSON..= canvasSizeOptions]}
instance JSON.ToJSON DefaultGridLayoutConfigurationProperty where
  toJSON DefaultGridLayoutConfigurationProperty {..}
    = JSON.object ["CanvasSizeOptions" JSON..= canvasSizeOptions]
instance Property "CanvasSizeOptions" DefaultGridLayoutConfigurationProperty where
  type PropertyType "CanvasSizeOptions" DefaultGridLayoutConfigurationProperty = GridLayoutCanvasSizeOptionsProperty
  set newValue DefaultGridLayoutConfigurationProperty {}
    = DefaultGridLayoutConfigurationProperty
        {canvasSizeOptions = newValue, ..}