module Stratosphere.QuickSight.Analysis.TableUnaggregatedFieldWellsProperty (
        module Exports, TableUnaggregatedFieldWellsProperty(..),
        mkTableUnaggregatedFieldWellsProperty
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import {-# SOURCE #-} Stratosphere.QuickSight.Analysis.UnaggregatedFieldProperty as Exports
import Stratosphere.ResourceProperties
data TableUnaggregatedFieldWellsProperty
  = TableUnaggregatedFieldWellsProperty {values :: (Prelude.Maybe [UnaggregatedFieldProperty])}
  deriving stock (Prelude.Eq, Prelude.Show)
mkTableUnaggregatedFieldWellsProperty ::
  TableUnaggregatedFieldWellsProperty
mkTableUnaggregatedFieldWellsProperty
  = TableUnaggregatedFieldWellsProperty {values = Prelude.Nothing}
instance ToResourceProperties TableUnaggregatedFieldWellsProperty where
  toResourceProperties TableUnaggregatedFieldWellsProperty {..}
    = ResourceProperties
        {awsType = "AWS::QuickSight::Analysis.TableUnaggregatedFieldWells",
         supportsTags = Prelude.False,
         properties = Prelude.fromList
                        (Prelude.catMaybes [(JSON..=) "Values" Prelude.<$> values])}
instance JSON.ToJSON TableUnaggregatedFieldWellsProperty where
  toJSON TableUnaggregatedFieldWellsProperty {..}
    = JSON.object
        (Prelude.fromList
           (Prelude.catMaybes [(JSON..=) "Values" Prelude.<$> values]))
instance Property "Values" TableUnaggregatedFieldWellsProperty where
  type PropertyType "Values" TableUnaggregatedFieldWellsProperty = [UnaggregatedFieldProperty]
  set newValue TableUnaggregatedFieldWellsProperty {}
    = TableUnaggregatedFieldWellsProperty
        {values = Prelude.pure newValue, ..}