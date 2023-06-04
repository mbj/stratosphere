module Stratosphere.QuickSight.Dashboard.SheetControlLayoutProperty (
        module Exports, SheetControlLayoutProperty(..),
        mkSheetControlLayoutProperty
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import {-# SOURCE #-} Stratosphere.QuickSight.Dashboard.SheetControlLayoutConfigurationProperty as Exports
import Stratosphere.ResourceProperties
data SheetControlLayoutProperty
  = SheetControlLayoutProperty {configuration :: SheetControlLayoutConfigurationProperty}
mkSheetControlLayoutProperty ::
  SheetControlLayoutConfigurationProperty
  -> SheetControlLayoutProperty
mkSheetControlLayoutProperty configuration
  = SheetControlLayoutProperty {configuration = configuration}
instance ToResourceProperties SheetControlLayoutProperty where
  toResourceProperties SheetControlLayoutProperty {..}
    = ResourceProperties
        {awsType = "AWS::QuickSight::Dashboard.SheetControlLayout",
         supportsTags = Prelude.False,
         properties = ["Configuration" JSON..= configuration]}
instance JSON.ToJSON SheetControlLayoutProperty where
  toJSON SheetControlLayoutProperty {..}
    = JSON.object ["Configuration" JSON..= configuration]
instance Property "Configuration" SheetControlLayoutProperty where
  type PropertyType "Configuration" SheetControlLayoutProperty = SheetControlLayoutConfigurationProperty
  set newValue SheetControlLayoutProperty {}
    = SheetControlLayoutProperty {configuration = newValue, ..}