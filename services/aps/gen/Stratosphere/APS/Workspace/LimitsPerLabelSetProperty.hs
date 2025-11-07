module Stratosphere.APS.Workspace.LimitsPerLabelSetProperty (
        module Exports, LimitsPerLabelSetProperty(..),
        mkLimitsPerLabelSetProperty
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import {-# SOURCE #-} Stratosphere.APS.Workspace.LabelProperty as Exports
import {-# SOURCE #-} Stratosphere.APS.Workspace.LimitsPerLabelSetEntryProperty as Exports
import Stratosphere.ResourceProperties
data LimitsPerLabelSetProperty
  = -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-aps-workspace-limitsperlabelset.html>
    LimitsPerLabelSetProperty {haddock_workaround_ :: (),
                               -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-aps-workspace-limitsperlabelset.html#cfn-aps-workspace-limitsperlabelset-labelset>
                               labelSet :: [LabelProperty],
                               -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-aps-workspace-limitsperlabelset.html#cfn-aps-workspace-limitsperlabelset-limits>
                               limits :: LimitsPerLabelSetEntryProperty}
  deriving stock (Prelude.Eq, Prelude.Show)
mkLimitsPerLabelSetProperty ::
  [LabelProperty]
  -> LimitsPerLabelSetEntryProperty -> LimitsPerLabelSetProperty
mkLimitsPerLabelSetProperty labelSet limits
  = LimitsPerLabelSetProperty
      {haddock_workaround_ = (), labelSet = labelSet, limits = limits}
instance ToResourceProperties LimitsPerLabelSetProperty where
  toResourceProperties LimitsPerLabelSetProperty {..}
    = ResourceProperties
        {awsType = "AWS::APS::Workspace.LimitsPerLabelSet",
         supportsTags = Prelude.False,
         properties = ["LabelSet" JSON..= labelSet,
                       "Limits" JSON..= limits]}
instance JSON.ToJSON LimitsPerLabelSetProperty where
  toJSON LimitsPerLabelSetProperty {..}
    = JSON.object
        ["LabelSet" JSON..= labelSet, "Limits" JSON..= limits]
instance Property "LabelSet" LimitsPerLabelSetProperty where
  type PropertyType "LabelSet" LimitsPerLabelSetProperty = [LabelProperty]
  set newValue LimitsPerLabelSetProperty {..}
    = LimitsPerLabelSetProperty {labelSet = newValue, ..}
instance Property "Limits" LimitsPerLabelSetProperty where
  type PropertyType "Limits" LimitsPerLabelSetProperty = LimitsPerLabelSetEntryProperty
  set newValue LimitsPerLabelSetProperty {..}
    = LimitsPerLabelSetProperty {limits = newValue, ..}