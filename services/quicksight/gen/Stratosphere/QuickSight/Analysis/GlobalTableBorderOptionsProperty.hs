module Stratosphere.QuickSight.Analysis.GlobalTableBorderOptionsProperty (
        module Exports, GlobalTableBorderOptionsProperty(..),
        mkGlobalTableBorderOptionsProperty
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import {-# SOURCE #-} Stratosphere.QuickSight.Analysis.TableBorderOptionsProperty as Exports
import {-# SOURCE #-} Stratosphere.QuickSight.Analysis.TableSideBorderOptionsProperty as Exports
import Stratosphere.ResourceProperties
data GlobalTableBorderOptionsProperty
  = GlobalTableBorderOptionsProperty {sideSpecificBorder :: (Prelude.Maybe TableSideBorderOptionsProperty),
                                      uniformBorder :: (Prelude.Maybe TableBorderOptionsProperty)}
mkGlobalTableBorderOptionsProperty ::
  GlobalTableBorderOptionsProperty
mkGlobalTableBorderOptionsProperty
  = GlobalTableBorderOptionsProperty
      {sideSpecificBorder = Prelude.Nothing,
       uniformBorder = Prelude.Nothing}
instance ToResourceProperties GlobalTableBorderOptionsProperty where
  toResourceProperties GlobalTableBorderOptionsProperty {..}
    = ResourceProperties
        {awsType = "AWS::QuickSight::Analysis.GlobalTableBorderOptions",
         supportsTags = Prelude.False,
         properties = Prelude.fromList
                        (Prelude.catMaybes
                           [(JSON..=) "SideSpecificBorder" Prelude.<$> sideSpecificBorder,
                            (JSON..=) "UniformBorder" Prelude.<$> uniformBorder])}
instance JSON.ToJSON GlobalTableBorderOptionsProperty where
  toJSON GlobalTableBorderOptionsProperty {..}
    = JSON.object
        (Prelude.fromList
           (Prelude.catMaybes
              [(JSON..=) "SideSpecificBorder" Prelude.<$> sideSpecificBorder,
               (JSON..=) "UniformBorder" Prelude.<$> uniformBorder]))
instance Property "SideSpecificBorder" GlobalTableBorderOptionsProperty where
  type PropertyType "SideSpecificBorder" GlobalTableBorderOptionsProperty = TableSideBorderOptionsProperty
  set newValue GlobalTableBorderOptionsProperty {..}
    = GlobalTableBorderOptionsProperty
        {sideSpecificBorder = Prelude.pure newValue, ..}
instance Property "UniformBorder" GlobalTableBorderOptionsProperty where
  type PropertyType "UniformBorder" GlobalTableBorderOptionsProperty = TableBorderOptionsProperty
  set newValue GlobalTableBorderOptionsProperty {..}
    = GlobalTableBorderOptionsProperty
        {uniformBorder = Prelude.pure newValue, ..}