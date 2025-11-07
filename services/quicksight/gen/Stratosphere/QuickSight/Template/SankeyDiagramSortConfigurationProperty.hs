module Stratosphere.QuickSight.Template.SankeyDiagramSortConfigurationProperty (
        module Exports, SankeyDiagramSortConfigurationProperty(..),
        mkSankeyDiagramSortConfigurationProperty
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import {-# SOURCE #-} Stratosphere.QuickSight.Template.FieldSortOptionsProperty as Exports
import {-# SOURCE #-} Stratosphere.QuickSight.Template.ItemsLimitConfigurationProperty as Exports
import Stratosphere.ResourceProperties
data SankeyDiagramSortConfigurationProperty
  = -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-quicksight-template-sankeydiagramsortconfiguration.html>
    SankeyDiagramSortConfigurationProperty {haddock_workaround_ :: (),
                                            -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-quicksight-template-sankeydiagramsortconfiguration.html#cfn-quicksight-template-sankeydiagramsortconfiguration-destinationitemslimit>
                                            destinationItemsLimit :: (Prelude.Maybe ItemsLimitConfigurationProperty),
                                            -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-quicksight-template-sankeydiagramsortconfiguration.html#cfn-quicksight-template-sankeydiagramsortconfiguration-sourceitemslimit>
                                            sourceItemsLimit :: (Prelude.Maybe ItemsLimitConfigurationProperty),
                                            -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-quicksight-template-sankeydiagramsortconfiguration.html#cfn-quicksight-template-sankeydiagramsortconfiguration-weightsort>
                                            weightSort :: (Prelude.Maybe [FieldSortOptionsProperty])}
  deriving stock (Prelude.Eq, Prelude.Show)
mkSankeyDiagramSortConfigurationProperty ::
  SankeyDiagramSortConfigurationProperty
mkSankeyDiagramSortConfigurationProperty
  = SankeyDiagramSortConfigurationProperty
      {haddock_workaround_ = (), destinationItemsLimit = Prelude.Nothing,
       sourceItemsLimit = Prelude.Nothing, weightSort = Prelude.Nothing}
instance ToResourceProperties SankeyDiagramSortConfigurationProperty where
  toResourceProperties SankeyDiagramSortConfigurationProperty {..}
    = ResourceProperties
        {awsType = "AWS::QuickSight::Template.SankeyDiagramSortConfiguration",
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