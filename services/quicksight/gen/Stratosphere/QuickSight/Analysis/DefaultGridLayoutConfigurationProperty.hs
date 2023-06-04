module Stratosphere.QuickSight.Analysis.DefaultGridLayoutConfigurationProperty (
        module Exports, DefaultGridLayoutConfigurationProperty(..),
        mkDefaultGridLayoutConfigurationProperty
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import {-# SOURCE #-} Stratosphere.QuickSight.Analysis.GridLayoutCanvasSizeOptionsProperty as Exports
import Stratosphere.ResourceProperties
data DefaultGridLayoutConfigurationProperty
  = DefaultGridLayoutConfigurationProperty {canvasSizeOptions :: GridLayoutCanvasSizeOptionsProperty}
mkDefaultGridLayoutConfigurationProperty ::
  GridLayoutCanvasSizeOptionsProperty
  -> DefaultGridLayoutConfigurationProperty
mkDefaultGridLayoutConfigurationProperty canvasSizeOptions
  = DefaultGridLayoutConfigurationProperty
      {canvasSizeOptions = canvasSizeOptions}
instance ToResourceProperties DefaultGridLayoutConfigurationProperty where
  toResourceProperties DefaultGridLayoutConfigurationProperty {..}
    = ResourceProperties
        {awsType = "AWS::QuickSight::Analysis.DefaultGridLayoutConfiguration",
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