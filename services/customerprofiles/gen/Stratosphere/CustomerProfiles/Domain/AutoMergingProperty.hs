module Stratosphere.CustomerProfiles.Domain.AutoMergingProperty (
        module Exports, AutoMergingProperty(..), mkAutoMergingProperty
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import {-# SOURCE #-} Stratosphere.CustomerProfiles.Domain.ConflictResolutionProperty as Exports
import {-# SOURCE #-} Stratosphere.CustomerProfiles.Domain.ConsolidationProperty as Exports
import Stratosphere.ResourceProperties
import Stratosphere.Value
data AutoMergingProperty
  = -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-customerprofiles-domain-automerging.html>
    AutoMergingProperty {haddock_workaround_ :: (),
                         -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-customerprofiles-domain-automerging.html#cfn-customerprofiles-domain-automerging-conflictresolution>
                         conflictResolution :: (Prelude.Maybe ConflictResolutionProperty),
                         -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-customerprofiles-domain-automerging.html#cfn-customerprofiles-domain-automerging-consolidation>
                         consolidation :: (Prelude.Maybe ConsolidationProperty),
                         -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-customerprofiles-domain-automerging.html#cfn-customerprofiles-domain-automerging-enabled>
                         enabled :: (Value Prelude.Bool),
                         -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-customerprofiles-domain-automerging.html#cfn-customerprofiles-domain-automerging-minallowedconfidencescoreformerging>
                         minAllowedConfidenceScoreForMerging :: (Prelude.Maybe (Value Prelude.Double))}
  deriving stock (Prelude.Eq, Prelude.Show)
mkAutoMergingProperty :: Value Prelude.Bool -> AutoMergingProperty
mkAutoMergingProperty enabled
  = AutoMergingProperty
      {haddock_workaround_ = (), enabled = enabled,
       conflictResolution = Prelude.Nothing,
       consolidation = Prelude.Nothing,
       minAllowedConfidenceScoreForMerging = Prelude.Nothing}
instance ToResourceProperties AutoMergingProperty where
  toResourceProperties AutoMergingProperty {..}
    = ResourceProperties
        {awsType = "AWS::CustomerProfiles::Domain.AutoMerging",
         supportsTags = Prelude.False,
         properties = Prelude.fromList
                        ((Prelude.<>)
                           ["Enabled" JSON..= enabled]
                           (Prelude.catMaybes
                              [(JSON..=) "ConflictResolution" Prelude.<$> conflictResolution,
                               (JSON..=) "Consolidation" Prelude.<$> consolidation,
                               (JSON..=) "MinAllowedConfidenceScoreForMerging"
                                 Prelude.<$> minAllowedConfidenceScoreForMerging]))}
instance JSON.ToJSON AutoMergingProperty where
  toJSON AutoMergingProperty {..}
    = JSON.object
        (Prelude.fromList
           ((Prelude.<>)
              ["Enabled" JSON..= enabled]
              (Prelude.catMaybes
                 [(JSON..=) "ConflictResolution" Prelude.<$> conflictResolution,
                  (JSON..=) "Consolidation" Prelude.<$> consolidation,
                  (JSON..=) "MinAllowedConfidenceScoreForMerging"
                    Prelude.<$> minAllowedConfidenceScoreForMerging])))
instance Property "ConflictResolution" AutoMergingProperty where
  type PropertyType "ConflictResolution" AutoMergingProperty = ConflictResolutionProperty
  set newValue AutoMergingProperty {..}
    = AutoMergingProperty
        {conflictResolution = Prelude.pure newValue, ..}
instance Property "Consolidation" AutoMergingProperty where
  type PropertyType "Consolidation" AutoMergingProperty = ConsolidationProperty
  set newValue AutoMergingProperty {..}
    = AutoMergingProperty {consolidation = Prelude.pure newValue, ..}
instance Property "Enabled" AutoMergingProperty where
  type PropertyType "Enabled" AutoMergingProperty = Value Prelude.Bool
  set newValue AutoMergingProperty {..}
    = AutoMergingProperty {enabled = newValue, ..}
instance Property "MinAllowedConfidenceScoreForMerging" AutoMergingProperty where
  type PropertyType "MinAllowedConfidenceScoreForMerging" AutoMergingProperty = Value Prelude.Double
  set newValue AutoMergingProperty {..}
    = AutoMergingProperty
        {minAllowedConfidenceScoreForMerging = Prelude.pure newValue, ..}