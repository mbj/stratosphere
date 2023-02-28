module Stratosphere.AutoScaling.LaunchConfiguration.MetadataOptionsProperty (
        MetadataOptionsProperty(..), mkMetadataOptionsProperty
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import Stratosphere.ResourceProperties
import Stratosphere.Value
data MetadataOptionsProperty
  = MetadataOptionsProperty {httpEndpoint :: (Prelude.Maybe (Value Prelude.Text)),
                             httpPutResponseHopLimit :: (Prelude.Maybe (Value Prelude.Integer)),
                             httpTokens :: (Prelude.Maybe (Value Prelude.Text))}
mkMetadataOptionsProperty :: MetadataOptionsProperty
mkMetadataOptionsProperty
  = MetadataOptionsProperty
      {httpEndpoint = Prelude.Nothing,
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