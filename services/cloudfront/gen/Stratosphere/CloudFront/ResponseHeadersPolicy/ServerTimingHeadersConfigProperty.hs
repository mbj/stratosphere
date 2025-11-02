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
  = -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-cloudfront-responseheaderspolicy-servertimingheadersconfig.html>
    ServerTimingHeadersConfigProperty {haddock_workaround_ :: (),
                                       -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-cloudfront-responseheaderspolicy-servertimingheadersconfig.html#cfn-cloudfront-responseheaderspolicy-servertimingheadersconfig-enabled>
                                       enabled :: (Value Prelude.Bool),
                                       -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-cloudfront-responseheaderspolicy-servertimingheadersconfig.html#cfn-cloudfront-responseheaderspolicy-servertimingheadersconfig-samplingrate>
                                       samplingRate :: (Prelude.Maybe (Value Prelude.Double))}
  deriving stock (Prelude.Eq, Prelude.Show)
mkServerTimingHeadersConfigProperty ::
  Value Prelude.Bool -> ServerTimingHeadersConfigProperty
mkServerTimingHeadersConfigProperty enabled
  = ServerTimingHeadersConfigProperty
      {haddock_workaround_ = (), enabled = enabled,
       samplingRate = Prelude.Nothing}
instance ToResourceProperties ServerTimingHeadersConfigProperty where
  toResourceProperties ServerTimingHeadersConfigProperty {..}
    = ResourceProperties
        {awsType = "AWS::CloudFront::ResponseHeadersPolicy.ServerTimingHeadersConfig",
         supportsTags = Prelude.False,
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