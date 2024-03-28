module Stratosphere.CleanRooms.ConfiguredTable.TableReferenceProperty (
        module Exports, TableReferenceProperty(..),
        mkTableReferenceProperty
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import {-# SOURCE #-} Stratosphere.CleanRooms.ConfiguredTable.GlueTableReferenceProperty as Exports
import Stratosphere.ResourceProperties
data TableReferenceProperty
  = TableReferenceProperty {glue :: GlueTableReferenceProperty}
  deriving stock (Prelude.Eq, Prelude.Show)
mkTableReferenceProperty ::
  GlueTableReferenceProperty -> TableReferenceProperty
mkTableReferenceProperty glue
  = TableReferenceProperty {glue = glue}
instance ToResourceProperties TableReferenceProperty where
  toResourceProperties TableReferenceProperty {..}
    = ResourceProperties
        {awsType = "AWS::CleanRooms::ConfiguredTable.TableReference",
         supportsTags = Prelude.False, properties = ["Glue" JSON..= glue]}
instance JSON.ToJSON TableReferenceProperty where
  toJSON TableReferenceProperty {..}
    = JSON.object ["Glue" JSON..= glue]
instance Property "Glue" TableReferenceProperty where
  type PropertyType "Glue" TableReferenceProperty = GlueTableReferenceProperty
  set newValue TableReferenceProperty {}
    = TableReferenceProperty {glue = newValue, ..}