module Stratosphere.OpsWorks.Layer.LoadBasedAutoScalingProperty (
        module Exports, LoadBasedAutoScalingProperty(..),
        mkLoadBasedAutoScalingProperty
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import {-# SOURCE #-} Stratosphere.OpsWorks.Layer.AutoScalingThresholdsProperty as Exports
import Stratosphere.ResourceProperties
import Stratosphere.Value
data LoadBasedAutoScalingProperty
  = -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-opsworks-layer-loadbasedautoscaling.html>
    LoadBasedAutoScalingProperty {haddock_workaround_ :: (),
                                  -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-opsworks-layer-loadbasedautoscaling.html#cfn-opsworks-layer-loadbasedautoscaling-downscaling>
                                  downScaling :: (Prelude.Maybe AutoScalingThresholdsProperty),
                                  -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-opsworks-layer-loadbasedautoscaling.html#cfn-opsworks-layer-loadbasedautoscaling-enable>
                                  enable :: (Prelude.Maybe (Value Prelude.Bool)),
                                  -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-opsworks-layer-loadbasedautoscaling.html#cfn-opsworks-layer-loadbasedautoscaling-upscaling>
                                  upScaling :: (Prelude.Maybe AutoScalingThresholdsProperty)}
  deriving stock (Prelude.Eq, Prelude.Show)
mkLoadBasedAutoScalingProperty :: LoadBasedAutoScalingProperty
mkLoadBasedAutoScalingProperty
  = LoadBasedAutoScalingProperty
      {haddock_workaround_ = (), downScaling = Prelude.Nothing,
       enable = Prelude.Nothing, upScaling = Prelude.Nothing}
instance ToResourceProperties LoadBasedAutoScalingProperty where
  toResourceProperties LoadBasedAutoScalingProperty {..}
    = ResourceProperties
        {awsType = "AWS::OpsWorks::Layer.LoadBasedAutoScaling",
         supportsTags = Prelude.False,
         properties = Prelude.fromList
                        (Prelude.catMaybes
                           [(JSON..=) "DownScaling" Prelude.<$> downScaling,
                            (JSON..=) "Enable" Prelude.<$> enable,
                            (JSON..=) "UpScaling" Prelude.<$> upScaling])}
instance JSON.ToJSON LoadBasedAutoScalingProperty where
  toJSON LoadBasedAutoScalingProperty {..}
    = JSON.object
        (Prelude.fromList
           (Prelude.catMaybes
              [(JSON..=) "DownScaling" Prelude.<$> downScaling,
               (JSON..=) "Enable" Prelude.<$> enable,
               (JSON..=) "UpScaling" Prelude.<$> upScaling]))
instance Property "DownScaling" LoadBasedAutoScalingProperty where
  type PropertyType "DownScaling" LoadBasedAutoScalingProperty = AutoScalingThresholdsProperty
  set newValue LoadBasedAutoScalingProperty {..}
    = LoadBasedAutoScalingProperty
        {downScaling = Prelude.pure newValue, ..}
instance Property "Enable" LoadBasedAutoScalingProperty where
  type PropertyType "Enable" LoadBasedAutoScalingProperty = Value Prelude.Bool
  set newValue LoadBasedAutoScalingProperty {..}
    = LoadBasedAutoScalingProperty {enable = Prelude.pure newValue, ..}
instance Property "UpScaling" LoadBasedAutoScalingProperty where
  type PropertyType "UpScaling" LoadBasedAutoScalingProperty = AutoScalingThresholdsProperty
  set newValue LoadBasedAutoScalingProperty {..}
    = LoadBasedAutoScalingProperty
        {upScaling = Prelude.pure newValue, ..}