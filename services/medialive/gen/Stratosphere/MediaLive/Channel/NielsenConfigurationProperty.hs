module Stratosphere.MediaLive.Channel.NielsenConfigurationProperty (
        NielsenConfigurationProperty(..), mkNielsenConfigurationProperty
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import Stratosphere.ResourceProperties
import Stratosphere.Value
data NielsenConfigurationProperty
  = -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-medialive-channel-nielsenconfiguration.html>
    NielsenConfigurationProperty {haddock_workaround_ :: (),
                                  -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-medialive-channel-nielsenconfiguration.html#cfn-medialive-channel-nielsenconfiguration-distributorid>
                                  distributorId :: (Prelude.Maybe (Value Prelude.Text)),
                                  -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-medialive-channel-nielsenconfiguration.html#cfn-medialive-channel-nielsenconfiguration-nielsenpcmtoid3tagging>
                                  nielsenPcmToId3Tagging :: (Prelude.Maybe (Value Prelude.Text))}
  deriving stock (Prelude.Eq, Prelude.Show)
mkNielsenConfigurationProperty :: NielsenConfigurationProperty
mkNielsenConfigurationProperty
  = NielsenConfigurationProperty
      {haddock_workaround_ = (), distributorId = Prelude.Nothing,
       nielsenPcmToId3Tagging = Prelude.Nothing}
instance ToResourceProperties NielsenConfigurationProperty where
  toResourceProperties NielsenConfigurationProperty {..}
    = ResourceProperties
        {awsType = "AWS::MediaLive::Channel.NielsenConfiguration",
         supportsTags = Prelude.False,
         properties = Prelude.fromList
                        (Prelude.catMaybes
                           [(JSON..=) "DistributorId" Prelude.<$> distributorId,
                            (JSON..=) "NielsenPcmToId3Tagging"
                              Prelude.<$> nielsenPcmToId3Tagging])}
instance JSON.ToJSON NielsenConfigurationProperty where
  toJSON NielsenConfigurationProperty {..}
    = JSON.object
        (Prelude.fromList
           (Prelude.catMaybes
              [(JSON..=) "DistributorId" Prelude.<$> distributorId,
               (JSON..=) "NielsenPcmToId3Tagging"
                 Prelude.<$> nielsenPcmToId3Tagging]))
instance Property "DistributorId" NielsenConfigurationProperty where
  type PropertyType "DistributorId" NielsenConfigurationProperty = Value Prelude.Text
  set newValue NielsenConfigurationProperty {..}
    = NielsenConfigurationProperty
        {distributorId = Prelude.pure newValue, ..}
instance Property "NielsenPcmToId3Tagging" NielsenConfigurationProperty where
  type PropertyType "NielsenPcmToId3Tagging" NielsenConfigurationProperty = Value Prelude.Text
  set newValue NielsenConfigurationProperty {..}
    = NielsenConfigurationProperty
        {nielsenPcmToId3Tagging = Prelude.pure newValue, ..}