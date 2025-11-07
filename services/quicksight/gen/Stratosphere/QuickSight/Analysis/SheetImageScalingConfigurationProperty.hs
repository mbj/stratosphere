module Stratosphere.QuickSight.Analysis.SheetImageScalingConfigurationProperty (
        SheetImageScalingConfigurationProperty(..),
        mkSheetImageScalingConfigurationProperty
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import Stratosphere.ResourceProperties
import Stratosphere.Value
data SheetImageScalingConfigurationProperty
  = -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-quicksight-analysis-sheetimagescalingconfiguration.html>
    SheetImageScalingConfigurationProperty {haddock_workaround_ :: (),
                                            -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-quicksight-analysis-sheetimagescalingconfiguration.html#cfn-quicksight-analysis-sheetimagescalingconfiguration-scalingtype>
                                            scalingType :: (Prelude.Maybe (Value Prelude.Text))}
  deriving stock (Prelude.Eq, Prelude.Show)
mkSheetImageScalingConfigurationProperty ::
  SheetImageScalingConfigurationProperty
mkSheetImageScalingConfigurationProperty
  = SheetImageScalingConfigurationProperty
      {haddock_workaround_ = (), scalingType = Prelude.Nothing}
instance ToResourceProperties SheetImageScalingConfigurationProperty where
  toResourceProperties SheetImageScalingConfigurationProperty {..}
    = ResourceProperties
        {awsType = "AWS::QuickSight::Analysis.SheetImageScalingConfiguration",
         supportsTags = Prelude.False,
         properties = Prelude.fromList
                        (Prelude.catMaybes
                           [(JSON..=) "ScalingType" Prelude.<$> scalingType])}
instance JSON.ToJSON SheetImageScalingConfigurationProperty where
  toJSON SheetImageScalingConfigurationProperty {..}
    = JSON.object
        (Prelude.fromList
           (Prelude.catMaybes
              [(JSON..=) "ScalingType" Prelude.<$> scalingType]))
instance Property "ScalingType" SheetImageScalingConfigurationProperty where
  type PropertyType "ScalingType" SheetImageScalingConfigurationProperty = Value Prelude.Text
  set newValue SheetImageScalingConfigurationProperty {..}
    = SheetImageScalingConfigurationProperty
        {scalingType = Prelude.pure newValue, ..}