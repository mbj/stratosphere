module Stratosphere.SecurityHub.FindingAggregator (
        FindingAggregator(..), mkFindingAggregator
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import Stratosphere.ResourceProperties
import Stratosphere.Value
data FindingAggregator
  = FindingAggregator {regionLinkingMode :: (Value Prelude.Text),
                       regions :: (Prelude.Maybe (ValueList Prelude.Text))}
  deriving stock (Prelude.Eq, Prelude.Show)
mkFindingAggregator :: Value Prelude.Text -> FindingAggregator
mkFindingAggregator regionLinkingMode
  = FindingAggregator
      {regionLinkingMode = regionLinkingMode, regions = Prelude.Nothing}
instance ToResourceProperties FindingAggregator where
  toResourceProperties FindingAggregator {..}
    = ResourceProperties
        {awsType = "AWS::SecurityHub::FindingAggregator",
         supportsTags = Prelude.False,
         properties = Prelude.fromList
                        ((Prelude.<>)
                           ["RegionLinkingMode" JSON..= regionLinkingMode]
                           (Prelude.catMaybes [(JSON..=) "Regions" Prelude.<$> regions]))}
instance JSON.ToJSON FindingAggregator where
  toJSON FindingAggregator {..}
    = JSON.object
        (Prelude.fromList
           ((Prelude.<>)
              ["RegionLinkingMode" JSON..= regionLinkingMode]
              (Prelude.catMaybes [(JSON..=) "Regions" Prelude.<$> regions])))
instance Property "RegionLinkingMode" FindingAggregator where
  type PropertyType "RegionLinkingMode" FindingAggregator = Value Prelude.Text
  set newValue FindingAggregator {..}
    = FindingAggregator {regionLinkingMode = newValue, ..}
instance Property "Regions" FindingAggregator where
  type PropertyType "Regions" FindingAggregator = ValueList Prelude.Text
  set newValue FindingAggregator {..}
    = FindingAggregator {regions = Prelude.pure newValue, ..}