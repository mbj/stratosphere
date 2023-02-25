module Stratosphere.MediaLive.Channel.NielsenConfigurationProperty (
        NielsenConfigurationProperty(..), mkNielsenConfigurationProperty
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import Stratosphere.ResourceProperties
import Stratosphere.Value
data NielsenConfigurationProperty
  = NielsenConfigurationProperty {distributorId :: (Prelude.Maybe (Value Prelude.Text)),
                                  nielsenPcmToId3Tagging :: (Prelude.Maybe (Value Prelude.Text))}
mkNielsenConfigurationProperty :: NielsenConfigurationProperty
mkNielsenConfigurationProperty
  = NielsenConfigurationProperty
      {distributorId = Prelude.Nothing,
       nielsenPcmToId3Tagging = Prelude.Nothing}
instance ToResourceProperties NielsenConfigurationProperty where
  toResourceProperties NielsenConfigurationProperty {..}
    = ResourceProperties
        {awsType = "AWS::MediaLive::Channel.NielsenConfiguration",
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