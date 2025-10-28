module Stratosphere.InspectorV2.Filter.DateFilterProperty (
        DateFilterProperty(..), mkDateFilterProperty
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import Stratosphere.ResourceProperties
import Stratosphere.Value
data DateFilterProperty
  = -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-inspectorv2-filter-datefilter.html>
    DateFilterProperty {haddock_workaround_ :: (),
                        -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-inspectorv2-filter-datefilter.html#cfn-inspectorv2-filter-datefilter-endinclusive>
                        endInclusive :: (Prelude.Maybe (Value Prelude.Integer)),
                        -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-inspectorv2-filter-datefilter.html#cfn-inspectorv2-filter-datefilter-startinclusive>
                        startInclusive :: (Prelude.Maybe (Value Prelude.Integer))}
  deriving stock (Prelude.Eq, Prelude.Show)
mkDateFilterProperty :: DateFilterProperty
mkDateFilterProperty
  = DateFilterProperty
      {haddock_workaround_ = (), endInclusive = Prelude.Nothing,
       startInclusive = Prelude.Nothing}
instance ToResourceProperties DateFilterProperty where
  toResourceProperties DateFilterProperty {..}
    = ResourceProperties
        {awsType = "AWS::InspectorV2::Filter.DateFilter",
         supportsTags = Prelude.False,
         properties = Prelude.fromList
                        (Prelude.catMaybes
                           [(JSON..=) "EndInclusive" Prelude.<$> endInclusive,
                            (JSON..=) "StartInclusive" Prelude.<$> startInclusive])}
instance JSON.ToJSON DateFilterProperty where
  toJSON DateFilterProperty {..}
    = JSON.object
        (Prelude.fromList
           (Prelude.catMaybes
              [(JSON..=) "EndInclusive" Prelude.<$> endInclusive,
               (JSON..=) "StartInclusive" Prelude.<$> startInclusive]))
instance Property "EndInclusive" DateFilterProperty where
  type PropertyType "EndInclusive" DateFilterProperty = Value Prelude.Integer
  set newValue DateFilterProperty {..}
    = DateFilterProperty {endInclusive = Prelude.pure newValue, ..}
instance Property "StartInclusive" DateFilterProperty where
  type PropertyType "StartInclusive" DateFilterProperty = Value Prelude.Integer
  set newValue DateFilterProperty {..}
    = DateFilterProperty {startInclusive = Prelude.pure newValue, ..}