module Stratosphere.AutoScaling.LaunchConfiguration.MetadataOptionsProperty (
        MetadataOptionsProperty(..), mkMetadataOptionsProperty
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import Stratosphere.ResourceProperties
import Stratosphere.Value
data MetadataOptionsProperty
  = -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-autoscaling-launchconfiguration-metadataoptions.html>
    MetadataOptionsProperty {haddock_workaround_ :: (),
                             -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-autoscaling-launchconfiguration-metadataoptions.html#cfn-autoscaling-launchconfiguration-metadataoptions-httpendpoint>
                             httpEndpoint :: (Prelude.Maybe (Value Prelude.Text)),
                             -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-autoscaling-launchconfiguration-metadataoptions.html#cfn-autoscaling-launchconfiguration-metadataoptions-httpputresponsehoplimit>
                             httpPutResponseHopLimit :: (Prelude.Maybe (Value Prelude.Integer)),
                             -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-autoscaling-launchconfiguration-metadataoptions.html#cfn-autoscaling-launchconfiguration-metadataoptions-httptokens>
                             httpTokens :: (Prelude.Maybe (Value Prelude.Text))}
  deriving stock (Prelude.Eq, Prelude.Show)
mkMetadataOptionsProperty :: MetadataOptionsProperty
mkMetadataOptionsProperty
  = MetadataOptionsProperty
      {haddock_workaround_ = (), httpEndpoint = Prelude.Nothing,
       httpPutResponseHopLimit = Prelude.Nothing,
       httpTokens = Prelude.Nothing}
instance ToResourceProperties MetadataOptionsProperty where
  toResourceProperties MetadataOptionsProperty {..}
    = ResourceProperties
        {awsType = "AWS::AutoScaling::LaunchConfiguration.MetadataOptions",
         supportsTags = Prelude.False,
         properties = Prelude.fromList
                        (Prelude.catMaybes
                           [(JSON..=) "HttpEndpoint" Prelude.<$> httpEndpoint,
                            (JSON..=) "HttpPutResponseHopLimit"
                              Prelude.<$> httpPutResponseHopLimit,
                            (JSON..=) "HttpTokens" Prelude.<$> httpTokens])}
instance JSON.ToJSON MetadataOptionsProperty where
  toJSON MetadataOptionsProperty {..}
    = JSON.object
        (Prelude.fromList
           (Prelude.catMaybes
              [(JSON..=) "HttpEndpoint" Prelude.<$> httpEndpoint,
               (JSON..=) "HttpPutResponseHopLimit"
                 Prelude.<$> httpPutResponseHopLimit,
               (JSON..=) "HttpTokens" Prelude.<$> httpTokens]))
instance Property "HttpEndpoint" MetadataOptionsProperty where
  type PropertyType "HttpEndpoint" MetadataOptionsProperty = Value Prelude.Text
  set newValue MetadataOptionsProperty {..}
    = MetadataOptionsProperty
        {httpEndpoint = Prelude.pure newValue, ..}
instance Property "HttpPutResponseHopLimit" MetadataOptionsProperty where
  type PropertyType "HttpPutResponseHopLimit" MetadataOptionsProperty = Value Prelude.Integer
  set newValue MetadataOptionsProperty {..}
    = MetadataOptionsProperty
        {httpPutResponseHopLimit = Prelude.pure newValue, ..}
instance Property "HttpTokens" MetadataOptionsProperty where
  type PropertyType "HttpTokens" MetadataOptionsProperty = Value Prelude.Text
  set newValue MetadataOptionsProperty {..}
    = MetadataOptionsProperty {httpTokens = Prelude.pure newValue, ..}