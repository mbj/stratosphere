module Stratosphere.Synthetics.Canary.VisualReferenceProperty (
        module Exports, VisualReferenceProperty(..),
        mkVisualReferenceProperty
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import {-# SOURCE #-} Stratosphere.Synthetics.Canary.BaseScreenshotProperty as Exports
import Stratosphere.ResourceProperties
import Stratosphere.Value
data VisualReferenceProperty
  = -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-synthetics-canary-visualreference.html>
    VisualReferenceProperty {haddock_workaround_ :: (),
                             -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-synthetics-canary-visualreference.html#cfn-synthetics-canary-visualreference-basecanaryrunid>
                             baseCanaryRunId :: (Value Prelude.Text),
                             -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-synthetics-canary-visualreference.html#cfn-synthetics-canary-visualreference-basescreenshots>
                             baseScreenshots :: (Prelude.Maybe [BaseScreenshotProperty])}
  deriving stock (Prelude.Eq, Prelude.Show)
mkVisualReferenceProperty ::
  Value Prelude.Text -> VisualReferenceProperty
mkVisualReferenceProperty baseCanaryRunId
  = VisualReferenceProperty
      {haddock_workaround_ = (), baseCanaryRunId = baseCanaryRunId,
       baseScreenshots = Prelude.Nothing}
instance ToResourceProperties VisualReferenceProperty where
  toResourceProperties VisualReferenceProperty {..}
    = ResourceProperties
        {awsType = "AWS::Synthetics::Canary.VisualReference",
         supportsTags = Prelude.False,
         properties = Prelude.fromList
                        ((Prelude.<>)
                           ["BaseCanaryRunId" JSON..= baseCanaryRunId]
                           (Prelude.catMaybes
                              [(JSON..=) "BaseScreenshots" Prelude.<$> baseScreenshots]))}
instance JSON.ToJSON VisualReferenceProperty where
  toJSON VisualReferenceProperty {..}
    = JSON.object
        (Prelude.fromList
           ((Prelude.<>)
              ["BaseCanaryRunId" JSON..= baseCanaryRunId]
              (Prelude.catMaybes
                 [(JSON..=) "BaseScreenshots" Prelude.<$> baseScreenshots])))
instance Property "BaseCanaryRunId" VisualReferenceProperty where
  type PropertyType "BaseCanaryRunId" VisualReferenceProperty = Value Prelude.Text
  set newValue VisualReferenceProperty {..}
    = VisualReferenceProperty {baseCanaryRunId = newValue, ..}
instance Property "BaseScreenshots" VisualReferenceProperty where
  type PropertyType "BaseScreenshots" VisualReferenceProperty = [BaseScreenshotProperty]
  set newValue VisualReferenceProperty {..}
    = VisualReferenceProperty
        {baseScreenshots = Prelude.pure newValue, ..}