module Stratosphere.EC2.LaunchTemplate.MetadataOptionsProperty (
        MetadataOptionsProperty(..), mkMetadataOptionsProperty
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import Stratosphere.ResourceProperties
import Stratosphere.Value
data MetadataOptionsProperty
  = -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-ec2-launchtemplate-metadataoptions.html>
    MetadataOptionsProperty {haddock_workaround_ :: (),
                             -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-ec2-launchtemplate-metadataoptions.html#cfn-ec2-launchtemplate-metadataoptions-httpendpoint>
                             httpEndpoint :: (Prelude.Maybe (Value Prelude.Text)),
                             -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-ec2-launchtemplate-metadataoptions.html#cfn-ec2-launchtemplate-metadataoptions-httpprotocolipv6>
                             httpProtocolIpv6 :: (Prelude.Maybe (Value Prelude.Text)),
                             -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-ec2-launchtemplate-metadataoptions.html#cfn-ec2-launchtemplate-metadataoptions-httpputresponsehoplimit>
                             httpPutResponseHopLimit :: (Prelude.Maybe (Value Prelude.Integer)),
                             -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-ec2-launchtemplate-metadataoptions.html#cfn-ec2-launchtemplate-metadataoptions-httptokens>
                             httpTokens :: (Prelude.Maybe (Value Prelude.Text)),
                             -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-ec2-launchtemplate-metadataoptions.html#cfn-ec2-launchtemplate-metadataoptions-instancemetadatatags>
                             instanceMetadataTags :: (Prelude.Maybe (Value Prelude.Text))}
  deriving stock (Prelude.Eq, Prelude.Show)
mkMetadataOptionsProperty :: MetadataOptionsProperty
mkMetadataOptionsProperty
  = MetadataOptionsProperty
      {haddock_workaround_ = (), httpEndpoint = Prelude.Nothing,
       httpProtocolIpv6 = Prelude.Nothing,
       httpPutResponseHopLimit = Prelude.Nothing,
       httpTokens = Prelude.Nothing,
       instanceMetadataTags = Prelude.Nothing}
instance ToResourceProperties MetadataOptionsProperty where
  toResourceProperties MetadataOptionsProperty {..}
    = ResourceProperties
        {awsType = "AWS::EC2::LaunchTemplate.MetadataOptions",
         supportsTags = Prelude.False,
         properties = Prelude.fromList
                        (Prelude.catMaybes
                           [(JSON..=) "HttpEndpoint" Prelude.<$> httpEndpoint,
                            (JSON..=) "HttpProtocolIpv6" Prelude.<$> httpProtocolIpv6,
                            (JSON..=) "HttpPutResponseHopLimit"
                              Prelude.<$> httpPutResponseHopLimit,
                            (JSON..=) "HttpTokens" Prelude.<$> httpTokens,
                            (JSON..=) "InstanceMetadataTags"
                              Prelude.<$> instanceMetadataTags])}
instance JSON.ToJSON MetadataOptionsProperty where
  toJSON MetadataOptionsProperty {..}
    = JSON.object
        (Prelude.fromList
           (Prelude.catMaybes
              [(JSON..=) "HttpEndpoint" Prelude.<$> httpEndpoint,
               (JSON..=) "HttpProtocolIpv6" Prelude.<$> httpProtocolIpv6,
               (JSON..=) "HttpPutResponseHopLimit"
                 Prelude.<$> httpPutResponseHopLimit,
               (JSON..=) "HttpTokens" Prelude.<$> httpTokens,
               (JSON..=) "InstanceMetadataTags"
                 Prelude.<$> instanceMetadataTags]))
instance Property "HttpEndpoint" MetadataOptionsProperty where
  type PropertyType "HttpEndpoint" MetadataOptionsProperty = Value Prelude.Text
  set newValue MetadataOptionsProperty {..}
    = MetadataOptionsProperty
        {httpEndpoint = Prelude.pure newValue, ..}
instance Property "HttpProtocolIpv6" MetadataOptionsProperty where
  type PropertyType "HttpProtocolIpv6" MetadataOptionsProperty = Value Prelude.Text
  set newValue MetadataOptionsProperty {..}
    = MetadataOptionsProperty
        {httpProtocolIpv6 = Prelude.pure newValue, ..}
instance Property "HttpPutResponseHopLimit" MetadataOptionsProperty where
  type PropertyType "HttpPutResponseHopLimit" MetadataOptionsProperty = Value Prelude.Integer
  set newValue MetadataOptionsProperty {..}
    = MetadataOptionsProperty
        {httpPutResponseHopLimit = Prelude.pure newValue, ..}
instance Property "HttpTokens" MetadataOptionsProperty where
  type PropertyType "HttpTokens" MetadataOptionsProperty = Value Prelude.Text
  set newValue MetadataOptionsProperty {..}
    = MetadataOptionsProperty {httpTokens = Prelude.pure newValue, ..}
instance Property "InstanceMetadataTags" MetadataOptionsProperty where
  type PropertyType "InstanceMetadataTags" MetadataOptionsProperty = Value Prelude.Text
  set newValue MetadataOptionsProperty {..}
    = MetadataOptionsProperty
        {instanceMetadataTags = Prelude.pure newValue, ..}