module Stratosphere.QuickSight.Analysis.SankeyDiagramSortConfigurationProperty (
        module Exports, SankeyDiagramSortConfigurationProperty(..),
        mkSankeyDiagramSortConfigurationProperty
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import {-# SOURCE #-} Stratosphere.QuickSight.Analysis.FieldSortOptionsProperty as Exports
import {-# SOURCE #-} Stratosphere.QuickSight.Analysis.ItemsLimitConfigurationProperty as Exports
import Stratosphere.ResourceProperties
data SankeyDiagramSortConfigurationProperty
  = SankeyDiagramSortConfigurationProperty {destinationItemsLimit :: (Prelude.Maybe ItemsLimitConfigurationProperty),
                                            sourceItemsLimit :: (Prelude.Maybe ItemsLimitConfigurationProperty),
                                            weightSort :: (Prelude.Maybe [FieldSortOptionsProperty])}
mkSankeyDiagramSortConfigurationProperty ::
  SankeyDiagramSortConfigurationProperty
mkSankeyDiagramSortConfigurationProperty
  = SankeyDiagramSortConfigurationProperty
      {destinationItemsLimit = Prelude.Nothing,
       sourceItemsLimit = Prelude.Nothing, weightSort = Prelude.Nothing}
instance ToResourceProperties SankeyDiagramSortConfigurationProperty where
  toResourceProperties SankeyDiagramSortConfigurationProperty {..}
    = ResourceProperties
        {awsType = "AWS::QuickSight::Analysis.SankeyDiagramSortConfiguration",
         supportsTags = Prelude.False,
         properties = Prelude.fromList
                        (Prelude.catMaybes
                           [(JSON..=) "DestinationItemsLimit"
                              Prelude.<$> destinationItemsLimit,
                            (JSON..=) "SourceItemsLimit" Prelude.<$> sourceItemsLimit,
                            (JSON..=) "WeightSort" Prelude.<$> weightSort])}
instance JSON.ToJSON SankeyDiagramSortConfigurationProperty where
  toJSON SankeyDiagramSortConfigurationProperty {..}
    = JSON.object
        (Prelude.fromList
           (Prelude.catMaybes
              [(JSON..=) "DestinationItemsLimit"
                 Prelude.<$> destinationItemsLimit,
               (JSON..=) "SourceItemsLimit" Prelude.<$> sourceItemsLimit,
               (JSON..=) "WeightSort" Prelude.<$> weightSort]))
instance Property "DestinationItemsLimit" SankeyDiagramSortConfigurationProperty where
  type PropertyType "DestinationItemsLimit" SankeyDiagramSortConfigurationProperty = ItemsLimitConfigurationProperty
  set newValue SankeyDiagramSortConfigurationProperty {..}
    = SankeyDiagramSortConfigurationProperty
        {destinationItemsLimit = Prelude.pure newValue, ..}
instance Property "SourceItemsLimit" SankeyDiagramSortConfigurationProperty where
  type PropertyType "SourceItemsLimit" SankeyDiagramSortConfigurationProperty = ItemsLimitConfigurationProperty
  set newValue SankeyDiagramSortConfigurationProperty {..}
    = SankeyDiagramSortConfigurationProperty
        {sourceItemsLimit = Prelude.pure newValue, ..}
instance Property "WeightSort" SankeyDiagramSortConfigurationProperty where
  type PropertyType "WeightSort" SankeyDiagramSortConfigurationProperty = [FieldSortOptionsProperty]
  set newValue SankeyDiagramSortConfigurationProperty {..}
    = SankeyDiagramSortConfigurationProperty
        {weightSort = Prelude.pure newValue, ..}