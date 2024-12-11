module Stratosphere.BCMDataExports.Export (
        module Exports, Export(..), mkExport
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import {-# SOURCE #-} Stratosphere.BCMDataExports.Export.ExportProperty as Exports
import {-# SOURCE #-} Stratosphere.BCMDataExports.Export.ResourceTagProperty as Exports
import Stratosphere.ResourceProperties
data Export
  = Export {export :: ExportProperty,
            tags :: (Prelude.Maybe [ResourceTagProperty])}
  deriving stock (Prelude.Eq, Prelude.Show)
mkExport :: ExportProperty -> Export
mkExport export = Export {export = export, tags = Prelude.Nothing}
instance ToResourceProperties Export where
  toResourceProperties Export {..}
    = ResourceProperties
        {awsType = "AWS::BCMDataExports::Export",
         supportsTags = Prelude.True,
         properties = Prelude.fromList
                        ((Prelude.<>)
                           ["Export" JSON..= export]
                           (Prelude.catMaybes [(JSON..=) "Tags" Prelude.<$> tags]))}
instance JSON.ToJSON Export where
  toJSON Export {..}
    = JSON.object
        (Prelude.fromList
           ((Prelude.<>)
              ["Export" JSON..= export]
              (Prelude.catMaybes [(JSON..=) "Tags" Prelude.<$> tags])))
instance Property "Export" Export where
  type PropertyType "Export" Export = ExportProperty
  set newValue Export {..} = Export {export = newValue, ..}
instance Property "Tags" Export where
  type PropertyType "Tags" Export = [ResourceTagProperty]
  set newValue Export {..}
    = Export {tags = Prelude.pure newValue, ..}