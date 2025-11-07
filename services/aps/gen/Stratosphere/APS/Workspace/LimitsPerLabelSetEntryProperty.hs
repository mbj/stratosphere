module Stratosphere.APS.Workspace.LimitsPerLabelSetEntryProperty (
        LimitsPerLabelSetEntryProperty(..),
        mkLimitsPerLabelSetEntryProperty
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import Stratosphere.ResourceProperties
import Stratosphere.Value
data LimitsPerLabelSetEntryProperty
  = -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-aps-workspace-limitsperlabelsetentry.html>
    LimitsPerLabelSetEntryProperty {haddock_workaround_ :: (),
                                    -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-aps-workspace-limitsperlabelsetentry.html#cfn-aps-workspace-limitsperlabelsetentry-maxseries>
                                    maxSeries :: (Prelude.Maybe (Value Prelude.Integer))}
  deriving stock (Prelude.Eq, Prelude.Show)
mkLimitsPerLabelSetEntryProperty :: LimitsPerLabelSetEntryProperty
mkLimitsPerLabelSetEntryProperty
  = LimitsPerLabelSetEntryProperty
      {haddock_workaround_ = (), maxSeries = Prelude.Nothing}
instance ToResourceProperties LimitsPerLabelSetEntryProperty where
  toResourceProperties LimitsPerLabelSetEntryProperty {..}
    = ResourceProperties
        {awsType = "AWS::APS::Workspace.LimitsPerLabelSetEntry",
         supportsTags = Prelude.False,
         properties = Prelude.fromList
                        (Prelude.catMaybes [(JSON..=) "MaxSeries" Prelude.<$> maxSeries])}
instance JSON.ToJSON LimitsPerLabelSetEntryProperty where
  toJSON LimitsPerLabelSetEntryProperty {..}
    = JSON.object
        (Prelude.fromList
           (Prelude.catMaybes [(JSON..=) "MaxSeries" Prelude.<$> maxSeries]))
instance Property "MaxSeries" LimitsPerLabelSetEntryProperty where
  type PropertyType "MaxSeries" LimitsPerLabelSetEntryProperty = Value Prelude.Integer
  set newValue LimitsPerLabelSetEntryProperty {..}
    = LimitsPerLabelSetEntryProperty
        {maxSeries = Prelude.pure newValue, ..}