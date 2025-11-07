module Stratosphere.IVS.Channel.MultitrackInputConfigurationProperty (
        MultitrackInputConfigurationProperty(..),
        mkMultitrackInputConfigurationProperty
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import Stratosphere.ResourceProperties
import Stratosphere.Value
data MultitrackInputConfigurationProperty
  = -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-ivs-channel-multitrackinputconfiguration.html>
    MultitrackInputConfigurationProperty {haddock_workaround_ :: (),
                                          -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-ivs-channel-multitrackinputconfiguration.html#cfn-ivs-channel-multitrackinputconfiguration-enabled>
                                          enabled :: (Prelude.Maybe (Value Prelude.Bool)),
                                          -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-ivs-channel-multitrackinputconfiguration.html#cfn-ivs-channel-multitrackinputconfiguration-maximumresolution>
                                          maximumResolution :: (Prelude.Maybe (Value Prelude.Text)),
                                          -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-ivs-channel-multitrackinputconfiguration.html#cfn-ivs-channel-multitrackinputconfiguration-policy>
                                          policy :: (Prelude.Maybe (Value Prelude.Text))}
  deriving stock (Prelude.Eq, Prelude.Show)
mkMultitrackInputConfigurationProperty ::
  MultitrackInputConfigurationProperty
mkMultitrackInputConfigurationProperty
  = MultitrackInputConfigurationProperty
      {haddock_workaround_ = (), enabled = Prelude.Nothing,
       maximumResolution = Prelude.Nothing, policy = Prelude.Nothing}
instance ToResourceProperties MultitrackInputConfigurationProperty where
  toResourceProperties MultitrackInputConfigurationProperty {..}
    = ResourceProperties
        {awsType = "AWS::IVS::Channel.MultitrackInputConfiguration",
         supportsTags = Prelude.False,
         properties = Prelude.fromList
                        (Prelude.catMaybes
                           [(JSON..=) "Enabled" Prelude.<$> enabled,
                            (JSON..=) "MaximumResolution" Prelude.<$> maximumResolution,
                            (JSON..=) "Policy" Prelude.<$> policy])}
instance JSON.ToJSON MultitrackInputConfigurationProperty where
  toJSON MultitrackInputConfigurationProperty {..}
    = JSON.object
        (Prelude.fromList
           (Prelude.catMaybes
              [(JSON..=) "Enabled" Prelude.<$> enabled,
               (JSON..=) "MaximumResolution" Prelude.<$> maximumResolution,
               (JSON..=) "Policy" Prelude.<$> policy]))
instance Property "Enabled" MultitrackInputConfigurationProperty where
  type PropertyType "Enabled" MultitrackInputConfigurationProperty = Value Prelude.Bool
  set newValue MultitrackInputConfigurationProperty {..}
    = MultitrackInputConfigurationProperty
        {enabled = Prelude.pure newValue, ..}
instance Property "MaximumResolution" MultitrackInputConfigurationProperty where
  type PropertyType "MaximumResolution" MultitrackInputConfigurationProperty = Value Prelude.Text
  set newValue MultitrackInputConfigurationProperty {..}
    = MultitrackInputConfigurationProperty
        {maximumResolution = Prelude.pure newValue, ..}
instance Property "Policy" MultitrackInputConfigurationProperty where
  type PropertyType "Policy" MultitrackInputConfigurationProperty = Value Prelude.Text
  set newValue MultitrackInputConfigurationProperty {..}
    = MultitrackInputConfigurationProperty
        {policy = Prelude.pure newValue, ..}