module Stratosphere.Glue.Table.SkewedInfoProperty (
        SkewedInfoProperty(..), mkSkewedInfoProperty
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import Stratosphere.ResourceProperties
import Stratosphere.Value
data SkewedInfoProperty
  = SkewedInfoProperty {skewedColumnNames :: (Prelude.Maybe (ValueList Prelude.Text)),
                        skewedColumnValueLocationMaps :: (Prelude.Maybe JSON.Object),
                        skewedColumnValues :: (Prelude.Maybe (ValueList Prelude.Text))}
  deriving stock (Prelude.Eq, Prelude.Show)
mkSkewedInfoProperty :: SkewedInfoProperty
mkSkewedInfoProperty
  = SkewedInfoProperty
      {skewedColumnNames = Prelude.Nothing,
       skewedColumnValueLocationMaps = Prelude.Nothing,
       skewedColumnValues = Prelude.Nothing}
instance ToResourceProperties SkewedInfoProperty where
  toResourceProperties SkewedInfoProperty {..}
    = ResourceProperties
        {awsType = "AWS::Glue::Table.SkewedInfo",
         supportsTags = Prelude.False,
         properties = Prelude.fromList
                        (Prelude.catMaybes
                           [(JSON..=) "SkewedColumnNames" Prelude.<$> skewedColumnNames,
                            (JSON..=) "SkewedColumnValueLocationMaps"
                              Prelude.<$> skewedColumnValueLocationMaps,
                            (JSON..=) "SkewedColumnValues" Prelude.<$> skewedColumnValues])}
instance JSON.ToJSON SkewedInfoProperty where
  toJSON SkewedInfoProperty {..}
    = JSON.object
        (Prelude.fromList
           (Prelude.catMaybes
              [(JSON..=) "SkewedColumnNames" Prelude.<$> skewedColumnNames,
               (JSON..=) "SkewedColumnValueLocationMaps"
                 Prelude.<$> skewedColumnValueLocationMaps,
               (JSON..=) "SkewedColumnValues" Prelude.<$> skewedColumnValues]))
instance Property "SkewedColumnNames" SkewedInfoProperty where
  type PropertyType "SkewedColumnNames" SkewedInfoProperty = ValueList Prelude.Text
  set newValue SkewedInfoProperty {..}
    = SkewedInfoProperty
        {skewedColumnNames = Prelude.pure newValue, ..}
instance Property "SkewedColumnValueLocationMaps" SkewedInfoProperty where
  type PropertyType "SkewedColumnValueLocationMaps" SkewedInfoProperty = JSON.Object
  set newValue SkewedInfoProperty {..}
    = SkewedInfoProperty
        {skewedColumnValueLocationMaps = Prelude.pure newValue, ..}
instance Property "SkewedColumnValues" SkewedInfoProperty where
  type PropertyType "SkewedColumnValues" SkewedInfoProperty = ValueList Prelude.Text
  set newValue SkewedInfoProperty {..}
    = SkewedInfoProperty
        {skewedColumnValues = Prelude.pure newValue, ..}