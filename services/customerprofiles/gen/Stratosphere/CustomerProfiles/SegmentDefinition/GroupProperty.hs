module Stratosphere.CustomerProfiles.SegmentDefinition.GroupProperty (
        module Exports, GroupProperty(..), mkGroupProperty
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import {-# SOURCE #-} Stratosphere.CustomerProfiles.SegmentDefinition.DimensionProperty as Exports
import {-# SOURCE #-} Stratosphere.CustomerProfiles.SegmentDefinition.SourceSegmentProperty as Exports
import Stratosphere.ResourceProperties
import Stratosphere.Value
data GroupProperty
  = -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-customerprofiles-segmentdefinition-group.html>
    GroupProperty {haddock_workaround_ :: (),
                   -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-customerprofiles-segmentdefinition-group.html#cfn-customerprofiles-segmentdefinition-group-dimensions>
                   dimensions :: (Prelude.Maybe [DimensionProperty]),
                   -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-customerprofiles-segmentdefinition-group.html#cfn-customerprofiles-segmentdefinition-group-sourcesegments>
                   sourceSegments :: (Prelude.Maybe [SourceSegmentProperty]),
                   -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-customerprofiles-segmentdefinition-group.html#cfn-customerprofiles-segmentdefinition-group-sourcetype>
                   sourceType :: (Prelude.Maybe (Value Prelude.Text)),
                   -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-customerprofiles-segmentdefinition-group.html#cfn-customerprofiles-segmentdefinition-group-type>
                   type' :: (Prelude.Maybe (Value Prelude.Text))}
  deriving stock (Prelude.Eq, Prelude.Show)
mkGroupProperty :: GroupProperty
mkGroupProperty
  = GroupProperty
      {haddock_workaround_ = (), dimensions = Prelude.Nothing,
       sourceSegments = Prelude.Nothing, sourceType = Prelude.Nothing,
       type' = Prelude.Nothing}
instance ToResourceProperties GroupProperty where
  toResourceProperties GroupProperty {..}
    = ResourceProperties
        {awsType = "AWS::CustomerProfiles::SegmentDefinition.Group",
         supportsTags = Prelude.False,
         properties = Prelude.fromList
                        (Prelude.catMaybes
                           [(JSON..=) "Dimensions" Prelude.<$> dimensions,
                            (JSON..=) "SourceSegments" Prelude.<$> sourceSegments,
                            (JSON..=) "SourceType" Prelude.<$> sourceType,
                            (JSON..=) "Type" Prelude.<$> type'])}
instance JSON.ToJSON GroupProperty where
  toJSON GroupProperty {..}
    = JSON.object
        (Prelude.fromList
           (Prelude.catMaybes
              [(JSON..=) "Dimensions" Prelude.<$> dimensions,
               (JSON..=) "SourceSegments" Prelude.<$> sourceSegments,
               (JSON..=) "SourceType" Prelude.<$> sourceType,
               (JSON..=) "Type" Prelude.<$> type']))
instance Property "Dimensions" GroupProperty where
  type PropertyType "Dimensions" GroupProperty = [DimensionProperty]
  set newValue GroupProperty {..}
    = GroupProperty {dimensions = Prelude.pure newValue, ..}
instance Property "SourceSegments" GroupProperty where
  type PropertyType "SourceSegments" GroupProperty = [SourceSegmentProperty]
  set newValue GroupProperty {..}
    = GroupProperty {sourceSegments = Prelude.pure newValue, ..}
instance Property "SourceType" GroupProperty where
  type PropertyType "SourceType" GroupProperty = Value Prelude.Text
  set newValue GroupProperty {..}
    = GroupProperty {sourceType = Prelude.pure newValue, ..}
instance Property "Type" GroupProperty where
  type PropertyType "Type" GroupProperty = Value Prelude.Text
  set newValue GroupProperty {..}
    = GroupProperty {type' = Prelude.pure newValue, ..}