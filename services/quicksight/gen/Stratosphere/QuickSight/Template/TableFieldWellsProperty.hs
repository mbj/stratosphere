module Stratosphere.QuickSight.Template.TableFieldWellsProperty (
        module Exports, TableFieldWellsProperty(..),
        mkTableFieldWellsProperty
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import {-# SOURCE #-} Stratosphere.QuickSight.Template.TableAggregatedFieldWellsProperty as Exports
import {-# SOURCE #-} Stratosphere.QuickSight.Template.TableUnaggregatedFieldWellsProperty as Exports
import Stratosphere.ResourceProperties
data TableFieldWellsProperty
  = -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-quicksight-template-tablefieldwells.html>
    TableFieldWellsProperty {haddock_workaround_ :: (),
                             -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-quicksight-template-tablefieldwells.html#cfn-quicksight-template-tablefieldwells-tableaggregatedfieldwells>
                             tableAggregatedFieldWells :: (Prelude.Maybe TableAggregatedFieldWellsProperty),
                             -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-quicksight-template-tablefieldwells.html#cfn-quicksight-template-tablefieldwells-tableunaggregatedfieldwells>
                             tableUnaggregatedFieldWells :: (Prelude.Maybe TableUnaggregatedFieldWellsProperty)}
  deriving stock (Prelude.Eq, Prelude.Show)
mkTableFieldWellsProperty :: TableFieldWellsProperty
mkTableFieldWellsProperty
  = TableFieldWellsProperty
      {haddock_workaround_ = (),
       tableAggregatedFieldWells = Prelude.Nothing,
       tableUnaggregatedFieldWells = Prelude.Nothing}
instance ToResourceProperties TableFieldWellsProperty where
  toResourceProperties TableFieldWellsProperty {..}
    = ResourceProperties
        {awsType = "AWS::QuickSight::Template.TableFieldWells",
         supportsTags = Prelude.False,
         properties = Prelude.fromList
                        (Prelude.catMaybes
                           [(JSON..=) "TableAggregatedFieldWells"
                              Prelude.<$> tableAggregatedFieldWells,
                            (JSON..=) "TableUnaggregatedFieldWells"
                              Prelude.<$> tableUnaggregatedFieldWells])}
instance JSON.ToJSON TableFieldWellsProperty where
  toJSON TableFieldWellsProperty {..}
    = JSON.object
        (Prelude.fromList
           (Prelude.catMaybes
              [(JSON..=) "TableAggregatedFieldWells"
                 Prelude.<$> tableAggregatedFieldWells,
               (JSON..=) "TableUnaggregatedFieldWells"
                 Prelude.<$> tableUnaggregatedFieldWells]))
instance Property "TableAggregatedFieldWells" TableFieldWellsProperty where
  type PropertyType "TableAggregatedFieldWells" TableFieldWellsProperty = TableAggregatedFieldWellsProperty
  set newValue TableFieldWellsProperty {..}
    = TableFieldWellsProperty
        {tableAggregatedFieldWells = Prelude.pure newValue, ..}
instance Property "TableUnaggregatedFieldWells" TableFieldWellsProperty where
  type PropertyType "TableUnaggregatedFieldWells" TableFieldWellsProperty = TableUnaggregatedFieldWellsProperty
  set newValue TableFieldWellsProperty {..}
    = TableFieldWellsProperty
        {tableUnaggregatedFieldWells = Prelude.pure newValue, ..}