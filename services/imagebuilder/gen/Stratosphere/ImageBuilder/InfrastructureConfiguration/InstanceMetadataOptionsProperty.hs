module Stratosphere.ImageBuilder.InfrastructureConfiguration.InstanceMetadataOptionsProperty (
        InstanceMetadataOptionsProperty(..),
        mkInstanceMetadataOptionsProperty
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import Stratosphere.ResourceProperties
import Stratosphere.Value
data InstanceMetadataOptionsProperty
  = InstanceMetadataOptionsProperty {httpPutResponseHopLimit :: (Prelude.Maybe (Value Prelude.Integer)),
                                     httpTokens :: (Prelude.Maybe (Value Prelude.Text))}
mkInstanceMetadataOptionsProperty ::
  InstanceMetadataOptionsProperty
mkInstanceMetadataOptionsProperty
  = InstanceMetadataOptionsProperty
      {httpPutResponseHopLimit = Prelude.Nothing,
       httpTokens = Prelude.Nothing}
instance ToResourceProperties InstanceMetadataOptionsProperty where
  toResourceProperties InstanceMetadataOptionsProperty {..}
    = ResourceProperties
        {awsType = "AWS::ImageBuilder::InfrastructureConfiguration.InstanceMetadataOptions",
         properties = Prelude.fromList
                        (Prelude.catMaybes
                           [(JSON..=) "HttpPutResponseHopLimit"
                              Prelude.<$> httpPutResponseHopLimit,
                            (JSON..=) "HttpTokens" Prelude.<$> httpTokens])}
instance JSON.ToJSON InstanceMetadataOptionsProperty where
  toJSON InstanceMetadataOptionsProperty {..}
    = JSON.object
        (Prelude.fromList
           (Prelude.catMaybes
              [(JSON..=) "HttpPutResponseHopLimit"
                 Prelude.<$> httpPutResponseHopLimit,
               (JSON..=) "HttpTokens" Prelude.<$> httpTokens]))
instance Property "HttpPutResponseHopLimit" InstanceMetadataOptionsProperty where
  type PropertyType "HttpPutResponseHopLimit" InstanceMetadataOptionsProperty = Value Prelude.Integer
  set newValue InstanceMetadataOptionsProperty {..}
    = InstanceMetadataOptionsProperty
        {httpPutResponseHopLimit = Prelude.pure newValue, ..}
instance Property "HttpTokens" InstanceMetadataOptionsProperty where
  type PropertyType "HttpTokens" InstanceMetadataOptionsProperty = Value Prelude.Text
  set newValue InstanceMetadataOptionsProperty {..}
    = InstanceMetadataOptionsProperty
        {httpTokens = Prelude.pure newValue, ..}