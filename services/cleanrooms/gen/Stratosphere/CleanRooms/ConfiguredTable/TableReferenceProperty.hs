module Stratosphere.CleanRooms.ConfiguredTable.TableReferenceProperty (
        module Exports, TableReferenceProperty(..),
        mkTableReferenceProperty
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import {-# SOURCE #-} Stratosphere.CleanRooms.ConfiguredTable.AthenaTableReferenceProperty as Exports
import {-# SOURCE #-} Stratosphere.CleanRooms.ConfiguredTable.GlueTableReferenceProperty as Exports
import {-# SOURCE #-} Stratosphere.CleanRooms.ConfiguredTable.SnowflakeTableReferenceProperty as Exports
import Stratosphere.ResourceProperties
data TableReferenceProperty
  = -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-cleanrooms-configuredtable-tablereference.html>
    TableReferenceProperty {haddock_workaround_ :: (),
                            -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-cleanrooms-configuredtable-tablereference.html#cfn-cleanrooms-configuredtable-tablereference-athena>
                            athena :: (Prelude.Maybe AthenaTableReferenceProperty),
                            -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-cleanrooms-configuredtable-tablereference.html#cfn-cleanrooms-configuredtable-tablereference-glue>
                            glue :: (Prelude.Maybe GlueTableReferenceProperty),
                            -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-cleanrooms-configuredtable-tablereference.html#cfn-cleanrooms-configuredtable-tablereference-snowflake>
                            snowflake :: (Prelude.Maybe SnowflakeTableReferenceProperty)}
  deriving stock (Prelude.Eq, Prelude.Show)
mkTableReferenceProperty :: TableReferenceProperty
mkTableReferenceProperty
  = TableReferenceProperty
      {haddock_workaround_ = (), athena = Prelude.Nothing,
       glue = Prelude.Nothing, snowflake = Prelude.Nothing}
instance ToResourceProperties TableReferenceProperty where
  toResourceProperties TableReferenceProperty {..}
    = ResourceProperties
        {awsType = "AWS::CleanRooms::ConfiguredTable.TableReference",
         supportsTags = Prelude.False,
         properties = Prelude.fromList
                        (Prelude.catMaybes
                           [(JSON..=) "Athena" Prelude.<$> athena,
                            (JSON..=) "Glue" Prelude.<$> glue,
                            (JSON..=) "Snowflake" Prelude.<$> snowflake])}
instance JSON.ToJSON TableReferenceProperty where
  toJSON TableReferenceProperty {..}
    = JSON.object
        (Prelude.fromList
           (Prelude.catMaybes
              [(JSON..=) "Athena" Prelude.<$> athena,
               (JSON..=) "Glue" Prelude.<$> glue,
               (JSON..=) "Snowflake" Prelude.<$> snowflake]))
instance Property "Athena" TableReferenceProperty where
  type PropertyType "Athena" TableReferenceProperty = AthenaTableReferenceProperty
  set newValue TableReferenceProperty {..}
    = TableReferenceProperty {athena = Prelude.pure newValue, ..}
instance Property "Glue" TableReferenceProperty where
  type PropertyType "Glue" TableReferenceProperty = GlueTableReferenceProperty
  set newValue TableReferenceProperty {..}
    = TableReferenceProperty {glue = Prelude.pure newValue, ..}
instance Property "Snowflake" TableReferenceProperty where
  type PropertyType "Snowflake" TableReferenceProperty = SnowflakeTableReferenceProperty
  set newValue TableReferenceProperty {..}
    = TableReferenceProperty {snowflake = Prelude.pure newValue, ..}