module Stratosphere.CloudFront.ResponseHeadersPolicy.ServerTimingHeadersConfigProperty (
        ServerTimingHeadersConfigProperty(..),
        mkServerTimingHeadersConfigProperty
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import Stratosphere.ResourceProperties
import Stratosphere.Value
data ServerTimingHeadersConfigProperty
  = ServerTimingHeadersConfigProperty {enabled :: (Value Prelude.Bool),
                                       samplingRate :: (Prelude.Maybe (Value Prelude.Double))}
mkServerTimingHeadersConfigProperty ::
  Value Prelude.Bool -> ServerTimingHeadersConfigProperty
mkServerTimingHeadersConfigProperty enabled
  = ServerTimingHeadersConfigProperty
      {enabled = enabled, samplingRate = Prelude.Nothing}
instance ToResourceProperties ServerTimingHeadersConfigProperty where
  toResourceProperties ServerTimingHeadersConfigProperty {..}
    = ResourceProperties
        {awsType = "AWS::CloudFront::ResponseHeadersPolicy.ServerTimingHeadersConfig",
         properties = Prelude.fromList
                        ((Prelude.<>)
                           ["Enabled" JSON..= enabled]
                           (Prelude.catMaybes
                              [(JSON..=) "SamplingRate" Prelude.<$> samplingRate]))}
instance JSON.ToJSON ServerTimingHeadersConfigProperty where
  toJSON ServerTimingHeadersConfigProperty {..}
    = JSON.object
        (Prelude.fromList
           ((Prelude.<>)
              ["Enabled" JSON..= enabled]
              (Prelude.catMaybes
                 [(JSON..=) "SamplingRate" Prelude.<$> samplingRate])))
instance Property "Enabled" ServerTimingHeadersConfigProperty where
  type PropertyType "Enabled" ServerTimingHeadersConfigProperty = Value Prelude.Bool
  set newValue ServerTimingHeadersConfigProperty {..}
    = ServerTimingHeadersConfigProperty {enabled = newValue, ..}
instance Property "SamplingRate" ServerTimingHeadersConfigProperty where
  type PropertyType "SamplingRate" ServerTimingHeadersConfigProperty = Value Prelude.Double
  set newValue ServerTimingHeadersConfigProperty {..}
    = ServerTimingHeadersConfigProperty
        {samplingRate = Prelude.pure newValue, ..}