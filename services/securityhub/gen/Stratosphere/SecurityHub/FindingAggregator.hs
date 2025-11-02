module Stratosphere.SecurityHub.FindingAggregator (
        FindingAggregator(..), mkFindingAggregator
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import Stratosphere.ResourceProperties
import Stratosphere.Value
data FindingAggregator
  = -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-securityhub-findingaggregator.html>
    FindingAggregator {haddock_workaround_ :: (),
                       -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-securityhub-findingaggregator.html#cfn-securityhub-findingaggregator-regionlinkingmode>
                       regionLinkingMode :: (Value Prelude.Text),
                       -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-securityhub-findingaggregator.html#cfn-securityhub-findingaggregator-regions>
                       regions :: (Prelude.Maybe (ValueList Prelude.Text))}
  deriving stock (Prelude.Eq, Prelude.Show)
mkFindingAggregator :: Value Prelude.Text -> FindingAggregator
mkFindingAggregator regionLinkingMode
  = FindingAggregator
      {haddock_workaround_ = (), regionLinkingMode = regionLinkingMode,
       regions = Prelude.Nothing}
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