module Stratosphere.DLM.LifecyclePolicy.ParametersProperty (
        ParametersProperty(..), mkParametersProperty
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import Stratosphere.ResourceProperties
import Stratosphere.Tag
import Stratosphere.Value
data ParametersProperty
  = -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-dlm-lifecyclepolicy-parameters.html>
    ParametersProperty {haddock_workaround_ :: (),
                        -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-dlm-lifecyclepolicy-parameters.html#cfn-dlm-lifecyclepolicy-parameters-excludebootvolume>
                        excludeBootVolume :: (Prelude.Maybe (Value Prelude.Bool)),
                        -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-dlm-lifecyclepolicy-parameters.html#cfn-dlm-lifecyclepolicy-parameters-excludedatavolumetags>
                        excludeDataVolumeTags :: (Prelude.Maybe [Tag]),
                        -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-dlm-lifecyclepolicy-parameters.html#cfn-dlm-lifecyclepolicy-parameters-noreboot>
                        noReboot :: (Prelude.Maybe (Value Prelude.Bool))}
  deriving stock (Prelude.Eq, Prelude.Show)
mkParametersProperty :: ParametersProperty
mkParametersProperty
  = ParametersProperty
      {haddock_workaround_ = (), excludeBootVolume = Prelude.Nothing,
       excludeDataVolumeTags = Prelude.Nothing,
       noReboot = Prelude.Nothing}
instance ToResourceProperties ParametersProperty where
  toResourceProperties ParametersProperty {..}
    = ResourceProperties
        {awsType = "AWS::DLM::LifecyclePolicy.Parameters",
         supportsTags = Prelude.False,
         properties = Prelude.fromList
                        (Prelude.catMaybes
                           [(JSON..=) "ExcludeBootVolume" Prelude.<$> excludeBootVolume,
                            (JSON..=) "ExcludeDataVolumeTags"
                              Prelude.<$> excludeDataVolumeTags,
                            (JSON..=) "NoReboot" Prelude.<$> noReboot])}
instance JSON.ToJSON ParametersProperty where
  toJSON ParametersProperty {..}
    = JSON.object
        (Prelude.fromList
           (Prelude.catMaybes
              [(JSON..=) "ExcludeBootVolume" Prelude.<$> excludeBootVolume,
               (JSON..=) "ExcludeDataVolumeTags"
                 Prelude.<$> excludeDataVolumeTags,
               (JSON..=) "NoReboot" Prelude.<$> noReboot]))
instance Property "ExcludeBootVolume" ParametersProperty where
  type PropertyType "ExcludeBootVolume" ParametersProperty = Value Prelude.Bool
  set newValue ParametersProperty {..}
    = ParametersProperty
        {excludeBootVolume = Prelude.pure newValue, ..}
instance Property "ExcludeDataVolumeTags" ParametersProperty where
  type PropertyType "ExcludeDataVolumeTags" ParametersProperty = [Tag]
  set newValue ParametersProperty {..}
    = ParametersProperty
        {excludeDataVolumeTags = Prelude.pure newValue, ..}
instance Property "NoReboot" ParametersProperty where
  type PropertyType "NoReboot" ParametersProperty = Value Prelude.Bool
  set newValue ParametersProperty {..}
    = ParametersProperty {noReboot = Prelude.pure newValue, ..}