module Stratosphere.SecurityHub.AggregatorV2 (
        AggregatorV2(..), mkAggregatorV2
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import Stratosphere.ResourceProperties
import Stratosphere.Value
data AggregatorV2
  = -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-securityhub-aggregatorv2.html>
    AggregatorV2 {haddock_workaround_ :: (),
                  -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-securityhub-aggregatorv2.html#cfn-securityhub-aggregatorv2-linkedregions>
                  linkedRegions :: (ValueList Prelude.Text),
                  -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-securityhub-aggregatorv2.html#cfn-securityhub-aggregatorv2-regionlinkingmode>
                  regionLinkingMode :: (Value Prelude.Text),
                  -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-securityhub-aggregatorv2.html#cfn-securityhub-aggregatorv2-tags>
                  tags :: (Prelude.Maybe (Prelude.Map Prelude.Text (Value Prelude.Text)))}
  deriving stock (Prelude.Eq, Prelude.Show)
mkAggregatorV2 ::
  ValueList Prelude.Text -> Value Prelude.Text -> AggregatorV2
mkAggregatorV2 linkedRegions regionLinkingMode
  = AggregatorV2
      {haddock_workaround_ = (), linkedRegions = linkedRegions,
       regionLinkingMode = regionLinkingMode, tags = Prelude.Nothing}
instance ToResourceProperties AggregatorV2 where
  toResourceProperties AggregatorV2 {..}
    = ResourceProperties
        {awsType = "AWS::SecurityHub::AggregatorV2",
         supportsTags = Prelude.True,
         properties = Prelude.fromList
                        ((Prelude.<>)
                           ["LinkedRegions" JSON..= linkedRegions,
                            "RegionLinkingMode" JSON..= regionLinkingMode]
                           (Prelude.catMaybes [(JSON..=) "Tags" Prelude.<$> tags]))}
instance JSON.ToJSON AggregatorV2 where
  toJSON AggregatorV2 {..}
    = JSON.object
        (Prelude.fromList
           ((Prelude.<>)
              ["LinkedRegions" JSON..= linkedRegions,
               "RegionLinkingMode" JSON..= regionLinkingMode]
              (Prelude.catMaybes [(JSON..=) "Tags" Prelude.<$> tags])))
instance Property "LinkedRegions" AggregatorV2 where
  type PropertyType "LinkedRegions" AggregatorV2 = ValueList Prelude.Text
  set newValue AggregatorV2 {..}
    = AggregatorV2 {linkedRegions = newValue, ..}
instance Property "RegionLinkingMode" AggregatorV2 where
  type PropertyType "RegionLinkingMode" AggregatorV2 = Value Prelude.Text
  set newValue AggregatorV2 {..}
    = AggregatorV2 {regionLinkingMode = newValue, ..}
instance Property "Tags" AggregatorV2 where
  type PropertyType "Tags" AggregatorV2 = Prelude.Map Prelude.Text (Value Prelude.Text)
  set newValue AggregatorV2 {..}
    = AggregatorV2 {tags = Prelude.pure newValue, ..}