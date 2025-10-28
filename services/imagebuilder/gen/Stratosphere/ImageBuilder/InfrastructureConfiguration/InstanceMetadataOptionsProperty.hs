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
  = -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-imagebuilder-infrastructureconfiguration-instancemetadataoptions.html>
    InstanceMetadataOptionsProperty {haddock_workaround_ :: (),
                                     -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-imagebuilder-infrastructureconfiguration-instancemetadataoptions.html#cfn-imagebuilder-infrastructureconfiguration-instancemetadataoptions-httpputresponsehoplimit>
                                     httpPutResponseHopLimit :: (Prelude.Maybe (Value Prelude.Integer)),
                                     -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-imagebuilder-infrastructureconfiguration-instancemetadataoptions.html#cfn-imagebuilder-infrastructureconfiguration-instancemetadataoptions-httptokens>
                                     httpTokens :: (Prelude.Maybe (Value Prelude.Text))}
  deriving stock (Prelude.Eq, Prelude.Show)
mkInstanceMetadataOptionsProperty ::
  InstanceMetadataOptionsProperty
mkInstanceMetadataOptionsProperty
  = InstanceMetadataOptionsProperty
      {haddock_workaround_ = (),
       httpPutResponseHopLimit = Prelude.Nothing,
       httpTokens = Prelude.Nothing}
instance ToResourceProperties InstanceMetadataOptionsProperty where
  toResourceProperties InstanceMetadataOptionsProperty {..}
    = ResourceProperties
        {awsType = "AWS::ImageBuilder::InfrastructureConfiguration.InstanceMetadataOptions",
         supportsTags = Prelude.False,
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